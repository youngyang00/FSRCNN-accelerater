// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin

module imageRearranger_clamp#(
   parameter INPUT_IMAGE_WIDTH = 320,
   parameter INPUT_IMAGE_HEIGHT = 180
)(
   input                i_clk,
   input                i_rst,
   input                i_pixel_data_valid,
   input       [7:0]    i_pixel_data_r,
   input       [7:0]    i_pixel_data_g,
   input       [7:0]    i_pixel_data_b,
   input                i_force_read,
   output reg [$clog2(INPUT_IMAGE_WIDTH)-1:0] o_pixelCounter,
   output reg [$clog2(INPUT_IMAGE_WIDTH)-1:0] o_rdCounter,
   output reg  [127:0]  o_pixel_data_r,
   output reg  [127:0]  o_pixel_data_g,
   output reg  [127:0]  o_pixel_data_b,
   output               o_pixel_data_valid,
   output reg           o_intr
);

localparam IDLE = 'd0,
           RD_BUFFER = 'd1;

wire [31:0] lb0Data_r;
wire [31:0] lb0Data_g;
wire [31:0] lb0Data_b;
wire [31:0] lb1Data_r;
wire [31:0] lb1Data_g;
wire [31:0] lb1Data_b;
wire [31:0] lb2Data_r;
wire [31:0] lb2Data_g;
wire [31:0] lb2Data_b;
wire [31:0] lb3Data_r;
wire [31:0] lb3Data_g;
wire [31:0] lb3Data_b;
wire [31:0] lb4Data_r;
wire [31:0] lb4Data_g;
wire [31:0] lb4Data_b;

reg [$clog2(INPUT_IMAGE_WIDTH*5)-1:0]totalPixelCounter;

reg [2:0] currentWrLineBuffer;  
reg [2:0] currentRdLineBuffer;
reg [4:0] lineBufferRdData;
reg rd_line_buffer;
reg [4:0] lineBufferDataValid;
reg rdState;

reg  [127:0]  reg_pixel_data_r;
reg  [127:0]  reg_pixel_data_g;
reg  [127:0]  reg_pixel_data_b;

assign o_pixel_data_valid = rd_line_buffer;

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// Controler logic for Pixel Clamping
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
reg [2:0]  clampState;
reg [31:0] columnSubBuffer_r;
reg [31:0] columnSubBuffer_g;
reg [31:0] columnSubBuffer_b;
reg [31:0] rowSubBuffer_r [0:319];
reg [31:0] rowSubBuffer_g [0:319];
reg [31:0] rowSubBuffer_b [0:319];
reg colSubBuf_EN;
integer i;
wire [127:0] wr_pixel_data_r;
wire [127:0] wr_pixel_data_g;
wire [127:0] wr_pixel_data_b;

assign wr_pixel_data_r =  reg_pixel_data_r;
assign wr_pixel_data_g =  reg_pixel_data_g;
assign wr_pixel_data_b =  reg_pixel_data_b;
localparam CLAMP_IDLE = 'd0,
           Y0_CLAMP = 'd1,
           Y_CLAMP_IDLE = 'd2,
           Y_CLAMP = 'd3;

always @(posedge i_clk) begin
   if (i_rst) begin
      columnSubBuffer_r <= 'd0;
      columnSubBuffer_g <= 'd0;
      columnSubBuffer_b <= 'd0;
   end
   else begin
      if (colSubBuf_EN) begin
         columnSubBuffer_r <= {o_pixel_data_r[119:112],o_pixel_data_r[87:80],o_pixel_data_r[55:48],o_pixel_data_r[23:16]};
         columnSubBuffer_g <= {o_pixel_data_g[119:112],o_pixel_data_g[87:80],o_pixel_data_g[55:48],o_pixel_data_g[23:16]};
         columnSubBuffer_b <= {o_pixel_data_b[119:112],o_pixel_data_b[87:80],o_pixel_data_b[55:48],o_pixel_data_b[23:16]};
      end
   end
end

always @(posedge i_clk) begin
   if (o_pixel_data_valid) begin
      rowSubBuffer_r[0] <= o_pixel_data_r[95:64];
      rowSubBuffer_g[0] <= o_pixel_data_g[95:64];
      rowSubBuffer_b[0] <= o_pixel_data_b[95:64];
      for (i = 0; i < 319 ;i = i + 1) begin
         rowSubBuffer_r[i+1] <= rowSubBuffer_r[i];
         rowSubBuffer_g[i+1] <= rowSubBuffer_g[i];
         rowSubBuffer_b[i+1] <= rowSubBuffer_b[i];
      end
   end
end

always @(posedge i_clk) begin
   if (i_rst) begin
      clampState <= CLAMP_IDLE;
      colSubBuf_EN <= 1'b1;
   end
   else begin
      case (clampState)
         CLAMP_IDLE:begin
            if (rd_line_buffer) begin
               clampState <= Y0_CLAMP;
               colSubBuf_EN <= 1'b1;
            end
         end 
         Y0_CLAMP:begin
            if (o_rdCounter == 319) begin
               clampState <= Y_CLAMP_IDLE;
            end
         end
         Y_CLAMP_IDLE:begin
            if (rd_line_buffer) begin
               clampState <= Y_CLAMP;
            end
         end
         Y_CLAMP:begin
            if (o_rdCounter == 319) begin
               clampState <= Y_CLAMP_IDLE;
            end
         end

      endcase
   end
end

always @(*) begin
   case (clampState)
      CLAMP_IDLE:begin
         o_pixel_data_r = {wr_pixel_data_r[127:120],wr_pixel_data_r[127:104],
                           wr_pixel_data_r[127:120],wr_pixel_data_r[127:104],
                           wr_pixel_data_r[95:88],wr_pixel_data_r[95:72],
                           wr_pixel_data_r[63:56],wr_pixel_data_r[63:40]};
         o_pixel_data_g = {wr_pixel_data_g[127:120],wr_pixel_data_g[127:104],
                           wr_pixel_data_g[127:120],wr_pixel_data_g[127:104],
                           wr_pixel_data_g[95:88],wr_pixel_data_g[95:72], 
                           wr_pixel_data_g[63:56],wr_pixel_data_g[63:40]};   
         o_pixel_data_b = {wr_pixel_data_b[127:120],wr_pixel_data_b[127:104],
                           wr_pixel_data_b[127:120],wr_pixel_data_b[127:104],
                           wr_pixel_data_b[95:88],wr_pixel_data_b[95:72],
                           wr_pixel_data_b[63:56],wr_pixel_data_b[63:40]};
      end 
      Y0_CLAMP:begin
         o_pixel_data_r = {columnSubBuffer_r[31:24],wr_pixel_data_r[127:104],
                           columnSubBuffer_r[23:16],wr_pixel_data_r[127:104],
                           columnSubBuffer_r[15:8],wr_pixel_data_r[95:72],
                           columnSubBuffer_r[7:0],wr_pixel_data_r[63:40]};
         o_pixel_data_g = {columnSubBuffer_g[31:24],wr_pixel_data_g[127:104],
                           columnSubBuffer_g[23:16],wr_pixel_data_g[127:104],
                           columnSubBuffer_g[15:8],wr_pixel_data_g[95:72],
                           columnSubBuffer_g[7:0],wr_pixel_data_g[63:40]};   
         o_pixel_data_b = {columnSubBuffer_b[31:24],wr_pixel_data_b[127:104],
                           columnSubBuffer_b[23:16],wr_pixel_data_b[127:104],
                           columnSubBuffer_b[15:8],wr_pixel_data_b[95:72],
                           columnSubBuffer_b[7:0],wr_pixel_data_b[63:40]};
      end
      Y_CLAMP_IDLE:begin
         o_pixel_data_r = {rowSubBuffer_r[319][31:0],
                           wr_pixel_data_r[127:120],wr_pixel_data_r[127:104],
                           wr_pixel_data_r[95:88],wr_pixel_data_r[95:72],
                           wr_pixel_data_r[63:56],wr_pixel_data_r[63:40]};
         o_pixel_data_g = {rowSubBuffer_g[319][31:0],
                           wr_pixel_data_g[127:120],wr_pixel_data_g[127:104],
                           wr_pixel_data_g[95:88],wr_pixel_data_g[95:72],
                           wr_pixel_data_g[63:56],wr_pixel_data_g[63:40]};   
         o_pixel_data_b = {rowSubBuffer_b[319][31:0],
                           wr_pixel_data_b[127:120],wr_pixel_data_b[127:104],
                           wr_pixel_data_b[95:88],wr_pixel_data_b[95:72],
                           wr_pixel_data_b[63:56],wr_pixel_data_b[63:40]};
      end
      Y_CLAMP:begin
         o_pixel_data_r = {rowSubBuffer_r[319][31:0],
                           columnSubBuffer_r[23:16],wr_pixel_data_r[127:104],
                           columnSubBuffer_r[15:8],wr_pixel_data_r[95:72],
                           columnSubBuffer_r[7:0],wr_pixel_data_r[63:40]};
         o_pixel_data_g = {rowSubBuffer_g[319][31:0],
                           columnSubBuffer_g[23:16],wr_pixel_data_g[127:104],
                           columnSubBuffer_g[15:8],wr_pixel_data_g[95:72],
                           columnSubBuffer_g[7:0],wr_pixel_data_g[63:40]};   
         o_pixel_data_b = {rowSubBuffer_b[319][31:0],
                           columnSubBuffer_b[23:16],wr_pixel_data_b[127:104],
                           columnSubBuffer_b[15:8],wr_pixel_data_b[95:72],
                           columnSubBuffer_b[7:0],wr_pixel_data_b[63:40]};
      end

      default:begin
         o_pixel_data_r = 'dx;
         o_pixel_data_g = 'dx;
         o_pixel_data_b = 'dx;
      end
   endcase
end

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// Data Write
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////

always @(posedge i_clk) begin
   if (i_rst) begin
      o_pixelCounter <= 'd0;
   end
   else begin
      if (i_pixel_data_valid) begin
         if(o_pixelCounter == INPUT_IMAGE_WIDTH - 1)begin
            o_pixelCounter <= 'd0;
         end
         else begin
            o_pixelCounter <= o_pixelCounter + 'd1;
         end
      end
   end
end

always @(posedge i_clk) begin
   if (i_rst) begin
      currentWrLineBuffer <= 'd0;
   end
   else begin
      if ((o_pixelCounter == INPUT_IMAGE_WIDTH -1) & i_pixel_data_valid) begin
         if (currentWrLineBuffer == 4) begin
            currentWrLineBuffer <= 'd0;
         end
         else begin
            currentWrLineBuffer <= currentWrLineBuffer + 'd1;
         end
      end
   end
end

always @(*) begin
    lineBufferDataValid = 'd0;
    lineBufferDataValid[currentWrLineBuffer] = i_pixel_data_valid;
end

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// Data Read
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////

always @(*) begin
    case (currentRdLineBuffer)
        'd0:begin
            reg_pixel_data_r = {lb0Data_r,lb1Data_r,lb2Data_r,lb3Data_r};
            reg_pixel_data_g = {lb0Data_g,lb1Data_g,lb2Data_g,lb3Data_g};
            reg_pixel_data_b = {lb0Data_b,lb1Data_b,lb2Data_b,lb3Data_b};
        end
        'd1:begin
            reg_pixel_data_r = {lb1Data_r,lb2Data_r,lb3Data_r,lb4Data_r};
            reg_pixel_data_g = {lb1Data_g,lb2Data_g,lb3Data_g,lb4Data_g};
            reg_pixel_data_b = {lb1Data_b,lb2Data_b,lb3Data_b,lb4Data_b};
        end
        'd2:begin
            reg_pixel_data_r = {lb2Data_r,lb3Data_r,lb4Data_r,lb0Data_r};
            reg_pixel_data_g = {lb2Data_g,lb3Data_g,lb4Data_g,lb0Data_g};
            reg_pixel_data_b = {lb2Data_b,lb3Data_b,lb4Data_b,lb0Data_b};
        end
        'd3:begin
            reg_pixel_data_r = {lb3Data_r,lb4Data_r,lb0Data_r,lb1Data_r};
            reg_pixel_data_g = {lb3Data_g,lb4Data_g,lb0Data_g,lb1Data_g};
            reg_pixel_data_b = {lb3Data_b,lb4Data_b,lb0Data_b,lb1Data_b};
        end
        'd4:begin
            reg_pixel_data_r = {lb4Data_r,lb0Data_r,lb1Data_r,lb2Data_r};
            reg_pixel_data_g = {lb4Data_g,lb0Data_g,lb1Data_g,lb2Data_g};
            reg_pixel_data_b = {lb4Data_b,lb0Data_b,lb1Data_b,lb2Data_b};
        end
        default:begin
         reg_pixel_data_r = 'dx;
         reg_pixel_data_g = 'dx;
         reg_pixel_data_b = 'dx;
        end
    endcase
end

always @(posedge i_clk) begin
   if (i_rst) begin
      o_rdCounter <= 'd0;
   end
   else begin
      if (rd_line_buffer) begin
         if(o_rdCounter == INPUT_IMAGE_WIDTH - 1) o_rdCounter <= 'd0;
         else o_rdCounter <= o_rdCounter + 'd1;
      end
   end
end

always @(posedge i_clk) begin
    if (i_rst) begin
        currentRdLineBuffer <= 'd0;
    end
    else begin
        if (o_rdCounter == INPUT_IMAGE_WIDTH - 1 & rd_line_buffer) begin
         if (currentRdLineBuffer == 4) begin
            currentRdLineBuffer <= 'd0;
         end
         else begin
            currentRdLineBuffer <= currentRdLineBuffer + 'd1;
         end
        end
    end
end

always @(*) begin
   case (currentRdLineBuffer)
      'd0:begin
         lineBufferRdData[0] = rd_line_buffer;
         lineBufferRdData[1] = rd_line_buffer;
         lineBufferRdData[2] = rd_line_buffer;
         lineBufferRdData[3] = rd_line_buffer;
         lineBufferRdData[4] = 'd0;         
      end
      'd1:begin
         lineBufferRdData[0] = 'd0;
         lineBufferRdData[1] = rd_line_buffer;
         lineBufferRdData[2] = rd_line_buffer;
         lineBufferRdData[3] = rd_line_buffer;
         lineBufferRdData[4] = rd_line_buffer;     
      end
      'd2:begin
         lineBufferRdData[0] = rd_line_buffer;
         lineBufferRdData[1] = 'd0; 
         lineBufferRdData[2] = rd_line_buffer;
         lineBufferRdData[3] = rd_line_buffer;
         lineBufferRdData[4] = rd_line_buffer;         
      end
      'd3:begin
         lineBufferRdData[0] = rd_line_buffer;
         lineBufferRdData[1] = rd_line_buffer;
         lineBufferRdData[2] = 'd0; 
         lineBufferRdData[3] = rd_line_buffer;
         lineBufferRdData[4] = rd_line_buffer;         
      end
      'd4:begin
         lineBufferRdData[0] = rd_line_buffer;
         lineBufferRdData[1] = rd_line_buffer;
         lineBufferRdData[2] = rd_line_buffer;
         lineBufferRdData[3] = 'd0;
         lineBufferRdData[4] = rd_line_buffer;        
      end
      default:begin
         lineBufferRdData[0] = 'dx;
         lineBufferRdData[1] = 'dx;
         lineBufferRdData[2] = 'dx;
         lineBufferRdData[3] = 'dx;
         lineBufferRdData[4] = 'dx;            
      end
   endcase
end

always @(posedge i_clk) begin
    if (i_rst) begin
        totalPixelCounter <= 'd0;
    end   
    else begin
        if (i_pixel_data_valid & !rd_line_buffer) begin
            totalPixelCounter <= totalPixelCounter + 'd1;
        end
        else if (!i_pixel_data_valid & rd_line_buffer) begin
            totalPixelCounter <= totalPixelCounter - 'd1;
        end
    end
end

always @(posedge i_clk) begin
    if (i_rst) begin
        rdState <= IDLE;
        rd_line_buffer <= 'd0;
        o_intr <= 'b0;
    end
    else begin
        case (rdState)
            IDLE:begin
                o_intr <= 'b0;
                if (totalPixelCounter >= INPUT_IMAGE_WIDTH * 4 | i_force_read) begin
                    rd_line_buffer <= 'b1;
                    rdState <= RD_BUFFER;
                end
            end
            RD_BUFFER:begin
                if (o_rdCounter == INPUT_IMAGE_WIDTH - 1) begin
                    rd_line_buffer <= 'd0;
                    rdState <= IDLE;
                    o_intr <= 'b1;
                end
            end
        endcase
    end
end

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// lineBuffer Instance
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////


lineBuffer lb0(
   .i_clk(i_clk),    //input          
   .i_rst(i_rst),         //input          
   .i_data_valid(lineBufferDataValid[0]),  //input          
   .i_data_r(i_pixel_data_r),      //input  [7:0]   
   .i_data_g(i_pixel_data_g),      //input  [7:0]   
   .i_data_b(i_pixel_data_b),      //input  [7:0]   
   .i_rd_data(lineBufferRdData[0]),     //input          
   .o_data_r(lb0Data_r),      //output [31:0]  
   .o_data_g(lb0Data_g),      //output [31:0]  
   .o_data_b(lb0Data_b)       //output [31:0]  
);

lineBuffer lb1(
   .i_clk(i_clk),    //input          
   .i_rst(i_rst),         //input          
   .i_data_valid(lineBufferDataValid[1]),  //input          
   .i_data_r(i_pixel_data_r),      //input  [7:0]   
   .i_data_g(i_pixel_data_g),      //input  [7:0]   
   .i_data_b(i_pixel_data_b),      //input  [7:0]   
   .i_rd_data(lineBufferRdData[1]),     //input          
   .o_data_r(lb1Data_r),      //output [31:0]  
   .o_data_g(lb1Data_g),      //output [31:0]  
   .o_data_b(lb1Data_b)       //output [31:0]  
);

lineBuffer lb2(
   .i_clk(i_clk),    //input          
   .i_rst(i_rst),         //input          
   .i_data_valid(lineBufferDataValid[2]),  //input          
   .i_data_r(i_pixel_data_r),      //input  [7:0]   
   .i_data_g(i_pixel_data_g),      //input  [7:0]   
   .i_data_b(i_pixel_data_b),      //input  [7:0]   
   .i_rd_data(lineBufferRdData[2]),     //input          
   .o_data_r(lb2Data_r),      //output [31:0]  
   .o_data_g(lb2Data_g),      //output [31:0]  
   .o_data_b(lb2Data_b)       //output [31:0]  
);

lineBuffer lb3(
   .i_clk(i_clk),    //input          
   .i_rst(i_rst),         //input          
   .i_data_valid(lineBufferDataValid[3]),  //input          
   .i_data_r(i_pixel_data_r),      //input  [7:0]   
   .i_data_g(i_pixel_data_g),      //input  [7:0]   
   .i_data_b(i_pixel_data_b),      //input  [7:0]   
   .i_rd_data(lineBufferRdData[3]),     //input          
   .o_data_r(lb3Data_r),      //output [31:0]  
   .o_data_g(lb3Data_g),      //output [31:0]  
   .o_data_b(lb3Data_b)       //output [31:0]  
);

lineBuffer lb4(
   .i_clk(i_clk),    //input          
   .i_rst(i_rst),         //input          
   .i_data_valid(lineBufferDataValid[4]),  //input          
   .i_data_r(i_pixel_data_r),      //input  [7:0]   
   .i_data_g(i_pixel_data_g),      //input  [7:0]   
   .i_data_b(i_pixel_data_b),      //input  [7:0]   
   .i_rd_data(lineBufferRdData[4]),     //input          
   .o_data_r(lb4Data_r),      //output [31:0]  
   .o_data_g(lb4Data_g),      //output [31:0]  
   .o_data_b(lb4Data_b)       //output [31:0]  
);

endmodule