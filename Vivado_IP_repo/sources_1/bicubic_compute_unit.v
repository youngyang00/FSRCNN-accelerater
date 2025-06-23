module bicubicComputeUnit(
   input          i_clk,
   input          i_reset,
   input          i_valid,
   input [1:0]    i_indexX,
   input [1:0]    i_indexY,
   input [127:0]  i_pixel_R,
   input [127:0]  i_pixel_G,
   input [127:0]  i_pixel_B,
   output [7:0]   o_pixel_R,
   output [7:0]   o_pixel_G,
   output [7:0]   o_pixel_B,
   output         o_valid
);

wire [255:0] matrix_out;
reg [255:0] matrix_out_delay1;
reg [127:0] pixel_R;
reg [127:0] pixel_G;
reg [127:0] pixel_B;

wire valid_Calc_R;
wire valid_Calc_G;
wire valid_Calc_B;

reg validInter1;

always @(posedge i_clk) begin
   validInter1 <= i_valid;
   pixel_R <= i_pixel_R;
   pixel_G <= i_pixel_G;
   pixel_B <= i_pixel_B;
   matrix_out_delay1 <= matrix_out;
end

assign o_valid = valid_Calc_R & valid_Calc_G & valid_Calc_B;

bicubic_rom2d bicubic_weight_rom(
   .ix(i_indexX),         // input  wire [1:0]   
   .iy(i_indexY),         // input  wire [1:0]   
   .matrix_out(matrix_out)  // output reg  [255:0] 16×16bit = 256bit
);

kernelCalc kernelCalc_Red(
   .i_clk(i_clk),//input          
   .i_reset(i_reset),//input          
   .i_valid(validInter1),//input          
   .i_pixel(pixel_R),//input [127:0]  
   .i_weight(matrix_out_delay1),//input [255:0]  
   .o_valid(valid_Calc_R),//output         
   .o_pixel(o_pixel_R)//output [7:0]   
);

kernelCalc kernelCalc_Green(
   .i_clk(i_clk),//input          
   .i_reset(i_reset),//input          
   .i_valid(validInter1),//input          
   .i_pixel(pixel_G),//input [127:0]  
   .i_weight(matrix_out_delay1),//input [255:0]  
   .o_valid(valid_Calc_G),//output         
   .o_pixel(o_pixel_G)//output [7:0]   
);

kernelCalc kernelCalc_Blue(
   .i_clk(i_clk),//input          
   .i_reset(i_reset),//input          
   .i_valid(validInter1),//input          
   .i_pixel(pixel_B),//input [127:0]  
   .i_weight(matrix_out_delay1),//input [255:0]  
   .o_valid(valid_Calc_B),//output         
   .o_pixel(o_pixel_B)//output [7:0]   
);

endmodule

module kernelCalc(
   input          i_clk,
   input          i_reset,
   input          i_valid,
   input [127:0]  i_pixel,
   input [255:0]  i_weight,
   output         o_valid,
   output [7:0]   o_pixel
);

reg [1:0] validInter;
reg [1:0] validAdd;
wire [31:0] kernelOut [0:15]; // Q16.15
wire [15:0] validInter0;
wire andValidInter;
reg signed [17:0] kernelOutSliced [0:15]; //Q9.8
wire signed [17:0] kernelOutAddedComb;
reg [7:0] kernelOutAdded;

genvar i;
generate
   for (i = 0; i < 16 ; i = i + 1) begin
      pipelined_multiplier_2stage#(
        .INPUT_WIDTH(16)
      )multiplier(
         .i_clk(i_clk),//input                          
         .i_reset(i_reset),//input                          
         .i_valid(i_valid),//input                          
         .i_A({8'b0,i_pixel[8*i +: 8]}),//input    [INPUT_WIDTH-1:0]     
         .i_B(i_weight[16*i +:16]),//input    [INPUT_WIDTH-1:0]     
         .o_out(kernelOut[i]),//output   [INPUT_WIDTH*2-1:0]   
         .o_valid(validInter0[i])//output                         
      );
   end
endgenerate

assign andValidInter = &validInter0;

integer j;
always @(posedge i_clk) begin
   validInter[0] <= andValidInter;
   for (j = 0; j < 16; j = j + 1) begin
      kernelOutSliced[j][17:0] <= {kernelOut[j][31],kernelOut[j][23:15],kernelOut[j][14:7]}; 
   end
end

// integer k;
// always @(*) begin
//    kernelOutAddedComb = 18'd0;
//    for (k = 0;k < 16 ; k = k + 1) begin
//       kernelOutAddedComb = kernelOutAddedComb + kernelOutSliced[k];
//    end
// end

reg signed [17:0] sum_lv1 [0:7];
genvar h;
integer g;

always @(posedge i_clk) begin
   validAdd[0] <= validInter[0];
   for (g = 0; g < 8; g = g + 1 ) begin
      sum_lv1[g] <= kernelOutSliced[2*g] + kernelOutSliced[2*g+1];
   end
end

//8 ?�� 4
wire signed [17:0] sum_lv2 [0:3];
generate
  for (h=0; h<4; h=h+1) begin
    assign sum_lv2[h] = sum_lv1[2*h] + sum_lv1[2*h+1];
  end
endgenerate

//4 ?�� 2
reg signed [17:0] sum_lv3 [0:1];

always @(posedge i_clk) begin
   validAdd[1] <= validAdd[0];
   sum_lv3[0] = sum_lv2[0] + sum_lv2[1];
   sum_lv3[1] = sum_lv2[2] + sum_lv2[3];
end

//: 2 ?�� 1
wire signed [17:0] sum_final;
assign sum_final = sum_lv3[0] + sum_lv3[1];

assign kernelOutAddedComb = sum_final;

always @(posedge i_clk) begin
   validInter[1] <= validAdd[1];
   if (kernelOutAddedComb < 0) begin
      kernelOutAdded <= 'd0;
   end
   else begin
      if (kernelOutAddedComb > 18'h0FF00) begin
         kernelOutAdded <= 'd255;
      end
      else begin
         if (kernelOutAddedComb[7] == 1'b1) begin
            kernelOutAdded <= kernelOutAddedComb[15:8] + 'd1;
         end
         else begin
            kernelOutAdded <= kernelOutAddedComb[15:8];
         end
      end
   end
   
end

assign o_valid = validInter[1];
assign o_pixel = kernelOutAdded;
   
endmodule