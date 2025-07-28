// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin

module bicubicValueBuffer(
   input          i_clk,
   input          i_valid,
   input          i_rstn,
   input [127:0]  i_pixel_data_r,
   input [127:0]  i_pixel_data_g,
   input [127:0]  i_pixel_data_b,
   output reg     o_loadReady,
   output [23:0]  m_axis_tdata,
   output         m_axis_tvalid,
   input          m_axis_tready,
   output         EOL,
   output         EOF
);

wire [23:0] pixel[0:15];
wire [13:0] wc;
reg  [95:0] line [0:3];
reg  valid_inter1;

wire [95:0] colStreamBuf_m_axis_tdata;
wire        colPixelStream_m_axis_tvalid;
wire        colPixelStream_m_axis_tready;

genvar j;
for (j = 0; j < 16; j = j + 1) begin
   assign pixel[15 - j] = {i_pixel_data_b[8*j +: 8], i_pixel_data_g[8*j +: 8], i_pixel_data_r[8*j +: 8]};
end

always @(posedge i_clk) begin
   if (!i_rstn) begin
      o_loadReady <= 'd0;
   end
   else begin
      if(wc <= 320) o_loadReady <= 1'b1;
      else o_loadReady <= 1'b0;
   end
end

always @(posedge i_clk) begin
   valid_inter1 <= i_valid;
   line[0] <= {pixel[12], pixel[8], pixel[4], pixel[0]};
   line[1] <= {pixel[13], pixel[9], pixel[5], pixel[1]};
   line[2] <= {pixel[14], pixel[10], pixel[6], pixel[2]};
   line[3] <= {pixel[15], pixel[11], pixel[7], pixel[3]};
end

fifo_bram_quad_to_single_axi4s#(
   .DATA_WIDTH(96),   // Width of each individual data word (24 bits)
   .DEPTH(2048)   // Number of quad-entries in memory
)colStreamBuf(
   .clk(i_clk),          // input  wire                     
   .rst_n(i_rstn),        // input  wire                     
   .s_axis_tdata({line[3],line[2],line[1],line[0]}),  // input  wire [DATA_WIDTH*4-1:0]  
   .s_axis_tvalid(valid_inter1), // input  wire                     
   .s_axis_tready(), // output wire                     
   .m_axis_tdata(colStreamBuf_m_axis_tdata), // output reg  [DATA_WIDTH-1:0]    
   .m_axis_tvalid(colPixelStream_m_axis_tvalid), // output                          
   .m_axis_tready(colPixelStream_m_axis_tready), // input  wire                     
   .full(),       // output wire                     
   .empty(),       // output wire
   .wc(wc)                     
);     

colPixelStream COL_PIXEL_STREAM(
   .i_clk(i_clk),                                //input          
   .i_rstn(i_rstn),                              //input          
   .s_axis_tdata(colStreamBuf_m_axis_tdata),     //input  [95:0]  
   .s_axis_tvalid(colPixelStream_m_axis_tvalid), //input          
   .s_axis_tready(colPixelStream_m_axis_tready), //output         
   .m_axis_tdata(m_axis_tdata),                              //output [23:0]  
   .m_axis_tvalid(m_axis_tvalid),                             //output         
   .m_axis_tready(m_axis_tready),                              //input          
   .EOL(EOL),
   .EOF(EOF)
);


   
endmodule
