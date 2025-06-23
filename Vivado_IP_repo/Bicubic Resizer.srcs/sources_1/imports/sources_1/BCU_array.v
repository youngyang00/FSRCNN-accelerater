module BCU_array(
   input                i_clk,
   input                i_reset,
   input                i_valid,
   input                i_recusriveMod,
   input [127:0]        i_pixel_R,
   input [127:0]        i_pixel_G,
   input [127:0]        i_pixel_B,
   output reg[127:0]        o_pixel_R, // 8bit x 8
   output reg[127:0]        o_pixel_G, // 8bit x 8
   output reg[127:0]        o_pixel_B, // 8bit x 8
   output         reg       o_valid
);

wire [7:0] BCU_outpixel_R [0:15];
wire [7:0] BCU_outpixel_G [0:15];
wire [7:0] BCU_outpixel_B [0:15];
wire [15:0] BCU_outValid;
reg [1:0] y_index;
wire [1:0] y_index_line2;

assign y_index_line2 = {y_index[1], ~y_index[0]};

integer j;
always @(posedge i_clk) begin
   o_valid <= &BCU_outValid;
   for (j = 0; j < 16; j = j + 1) begin
      o_pixel_R[8*j +: 8] <= BCU_outpixel_R[15-j];
      o_pixel_G[8*j +: 8] <= BCU_outpixel_G[15-j];
      o_pixel_B[8*j +: 8] <= BCU_outpixel_B[15-j];
   end
end

// genvar j;
// generate
//    for (j = 0;  j < 16;j = j + 1) begin
//       assign o_pixel_R[8*j +: 8] = BCU_outpixel_R[j];
//       assign o_pixel_G[8*j +: 8] = BCU_outpixel_G[j];
//       assign o_pixel_B[8*j +: 8] = BCU_outpixel_B[j];
// end   
// endgenerate


// always @(posedge i_clk) begin
//    if (i_reset) begin
//       y_index <= 'd0;
//    end
//    else begin
//       if (i_valid & i_recusriveMod) begin
//          y_index <= y_index + 2'd2;
//       end
//    end
// end

genvar i;
generate
   for (i = 0; i < 4; i = i + 1) begin
      bicubicComputeUnit BCU_Line1(
         .i_clk(i_clk), //input          
         .i_reset(i_reset), //input          
         .i_valid(i_valid), //input          
         .i_indexX(i), //input [1:0]    
         .i_indexY(2'd0), //input [1:0]    
         .i_pixel_R(i_pixel_R), //input [127:0]  
         .i_pixel_G(i_pixel_G), //input [127:0]  
         .i_pixel_B(i_pixel_B), //input [127:0]  
         .o_pixel_R(BCU_outpixel_R[i]), //output [7:0]   
         .o_pixel_G(BCU_outpixel_G[i]), //output [7:0]   
         .o_pixel_B(BCU_outpixel_B[i]), //output [7:0]   
         .o_valid(BCU_outValid[i]) //output         
      );
   end
   for (i = 0; i < 4; i = i + 1) begin
      bicubicComputeUnit BCU_Line2(
         .i_clk(i_clk), //input          
         .i_reset(i_reset), //input          
         .i_valid(i_valid), //input          
         .i_indexX(i), //input [1:0]    
         .i_indexY(2'd1), //input [1:0]    
         .i_pixel_R(i_pixel_R), //input [127:0]  
         .i_pixel_G(i_pixel_G), //input [127:0]  
         .i_pixel_B(i_pixel_B), //input [127:0]  
         .o_pixel_R(BCU_outpixel_R[i+4]), //output [7:0]   
         .o_pixel_G(BCU_outpixel_G[i+4]), //output [7:0]   
         .o_pixel_B(BCU_outpixel_B[i+4]), //output [7:0]   
         .o_valid(BCU_outValid[i+4]) //output         
      );
   end
   for (i = 0; i < 4; i = i + 1) begin
      bicubicComputeUnit BCU_Line3(
         .i_clk(i_clk), //input          
         .i_reset(i_reset), //input          
         .i_valid(i_valid), //input          
         .i_indexX(i), //input [1:0]    
         .i_indexY(2'd2), //input [1:0]    
         .i_pixel_R(i_pixel_R), //input [127:0]  
         .i_pixel_G(i_pixel_G), //input [127:0]  
         .i_pixel_B(i_pixel_B), //input [127:0]  
         .o_pixel_R(BCU_outpixel_R[i+8]), //output [7:0]   
         .o_pixel_G(BCU_outpixel_G[i+8]), //output [7:0]   
         .o_pixel_B(BCU_outpixel_B[i+8]), //output [7:0]   
         .o_valid(BCU_outValid[i+8]) //output         
      );
   end
   for (i = 0; i < 4; i = i + 1) begin
      bicubicComputeUnit BCU_Line4(
         .i_clk(i_clk), //input          
         .i_reset(i_reset), //input          
         .i_valid(i_valid), //input          
         .i_indexX(i), //input [1:0]    
         .i_indexY(2'd3), //input [1:0]    
         .i_pixel_R(i_pixel_R), //input [127:0]  
         .i_pixel_G(i_pixel_G), //input [127:0]  
         .i_pixel_B(i_pixel_B), //input [127:0]  
         .o_pixel_R(BCU_outpixel_R[i+12]), //output [7:0]   
         .o_pixel_G(BCU_outpixel_G[i+12]), //output [7:0]   
         .o_pixel_B(BCU_outpixel_B[i+12]), //output [7:0]   
         .o_valid(BCU_outValid[i+12]) //output         
      );
   end
endgenerate
   
endmodule