module bicubicCalc(
   input          i_clk,
   input          i_reset,
   input          i_valid,
   input [15:0]   i_Xindex,
   input [15:0]   i_Yindex,
   input [95:0]   i_pixel_row1,//24 x 4 -1 bit 
   input [95:0]   i_pixel_row2,//24 x 4 -1 bit 
   input [95:0]   i_pixel_row3,//24 x 4 -1 bit 
   input [95:0]   i_pixel_row4,//24 x 4 -1 bit 
   output         o_pixel, 
   output [95:0]  o_valid // 24*4 -1 bit
);

wire   [15:0]    baseXIndex;
wire   [15:0]    baseYIndex;
wire   [3:0]     Xindex;
wire   [3:0]     Yindex;
wire   [255:0]   rom1Out;

assign baseXIndex = (i_Xindex >> 2);
assign baseYIndex = (i_Yindex >> 2);
assign Xindex = i_Xindex[1:0];
assign Yindex = i_Yindex[1:0];



bicubic_rom2d bicubic_weight_rom1(
   .ix(Xindex), // input  wire [1:0]   
   .iy(Yindex), // input  wire [1:0]   
   .matrix_out(rom1Out)  // output reg  [255:0] 
);

   
endmodule