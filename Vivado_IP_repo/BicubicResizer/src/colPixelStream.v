// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin
module colPixelStream(
   input             i_clk,
   input             i_rstn,
   input  [95:0]     s_axis_tdata,
   input             s_axis_tvalid,
   output reg        s_axis_tready,
   output reg[23:0]  m_axis_tdata,
   output reg        m_axis_tvalid,
   input             m_axis_tready,
   output            EOL,
   output            EOF
);
reg         wr_ptr_clr;
reg         rd_ptr_clr;
reg  [8:0]  inXcnt;
reg  [10:0] outXcnt;
reg  [9:0]  outYcnt;
reg  [10:0] wr_ptr,rd_ptr;
reg  [2:0]   state;
reg  [3:0]   bramEn;
reg  [1:0]  rd_line_buffer;
reg         m_axis_tvalid_inter;

wire [23:0] doutb[0:3];
wire [23:0] din [0:3];
wire wea = s_axis_tvalid && s_axis_tready;
wire ena = wea;

assign EOL = (outXcnt == 'd1279);
assign EOF = ((outXcnt == 'd1279) & (outYcnt == 'd719));

assign din[0] = {s_axis_tdata[23:16],s_axis_tdata[15:8],s_axis_tdata[7:0]};
assign din[1] = {s_axis_tdata[47:40],s_axis_tdata[39:32],s_axis_tdata[31:24]};
assign din[2] = {s_axis_tdata[71:64],s_axis_tdata[63:56],s_axis_tdata[55:48]};
assign din[3] = {s_axis_tdata[95:88],s_axis_tdata[87:80],s_axis_tdata[79:72]};

always @(posedge i_clk) begin
    m_axis_tvalid <= m_axis_tvalid_inter;
end

always @(posedge i_clk) begin
    if (!i_rstn | wr_ptr_clr) begin
        wr_ptr <= 0;
    end else if (wea) begin
        wr_ptr <= wr_ptr + 1;
    end
end

always @(posedge i_clk) begin
   if (!i_rstn | rd_ptr_clr) begin
      rd_ptr <= 'd0;
   end
   else begin
      if (m_axis_tready & m_axis_tvalid_inter) begin
         if(rd_ptr >= 1280) begin
            rd_ptr <= 'd0;
         end
         else begin
            rd_ptr <= rd_ptr + 'd1;
         end
      end
   end
end

always @(*) begin
   case (rd_line_buffer)
      'd0:bramEn = 4'b0001;
      'd1:bramEn = 4'b0010;
      'd2:bramEn = 4'b0100;
      'd3:bramEn = 4'b1000;
      default:bramEn = 4'bxxxx;
   endcase
end

always @(*) begin
   case (rd_line_buffer)
      'd0:m_axis_tdata = doutb[0];
      'd1:m_axis_tdata = doutb[1];
      'd2:m_axis_tdata = doutb[2];
      'd3:m_axis_tdata = doutb[3];
      default:m_axis_tdata = 'dx;
   endcase
end


always @(posedge i_clk) begin
   if (!i_rstn) begin
      outXcnt <= 'd0;
      outYcnt <= 'd0;
   end
   else begin
      if (m_axis_tvalid & m_axis_tready) begin
         if (outXcnt == 'd1279) begin
            outXcnt <= 'd0;
            if(outYcnt == 'd719)begin
               outYcnt <= 'd0;
            end
            else begin 
               outYcnt <= outYcnt + 'd1;
            end
         end
         else begin
            outXcnt <= outXcnt + 'd1;
         end
      end
   end
end

localparam IDLE = 'd0,
           WRITE = 'd1,
           READ = 'd2,
           READ_HOLD = 'd3;

always @(posedge i_clk) begin
   if (!i_rstn) begin
      state <= IDLE;
      s_axis_tready <= 1'b0;
      rd_line_buffer <= 'd0;
   end
   else begin
      case (state)
         IDLE:begin
            rd_line_buffer <= 'd0;
            state <= WRITE;
            s_axis_tready <= 1'b0;
            m_axis_tvalid_inter <= 1'b0;
            wr_ptr_clr <= 1'b0;
            rd_ptr_clr <= 1'b0;
         end 
         WRITE:begin
            s_axis_tready <= 1'b1;
            if (s_axis_tready & s_axis_tvalid) begin
               if (wr_ptr >= 'd1278)begin
                  state <= READ;
               end
            end
         end
         READ:begin
            rd_ptr_clr <= 1'b0;
            wr_ptr_clr <= 1'b1;
            s_axis_tready <= 1'b0;
            m_axis_tvalid_inter <= 1'b1;
            if(m_axis_tvalid & m_axis_tready)begin
               if(rd_ptr > 'd1277) state <= READ_HOLD;
            end
         end
         READ_HOLD:begin
            m_axis_tvalid_inter <= 1'b0;
            if (rd_ptr > 'd1279) begin
               rd_ptr_clr <= 1'b1;
               if (rd_line_buffer == 'd3) begin
                  state <= IDLE;
               end
               else begin
                  rd_line_buffer <= rd_line_buffer + 'd1;
                  state <= READ;
               end
            end
         end
      endcase
   end
end


genvar i;
generate
   for (i = 0; i < 4 ; i = i + 1) begin
      xilinx_true_dual_port_no_change_1_clock_ram #(
        .RAM_WIDTH(24),
        .RAM_DEPTH(2048),
        .RAM_PERFORMANCE("LOW_LATENCY"),
        .INIT_FILE("")
      ) ram_inst (
        .addra(wr_ptr),
        .addrb(rd_ptr),
        .dina(din[i]),
        .dinb(),
        .clka(i_clk),
        .wea(wea),
        .web(1'b0),
        .ena(ena),
        .enb(bramEn[i] & m_axis_tready),
        .rsta(1'b0),
        .rstb(1'b0),
        .regcea(1'b0),
        .regceb(1'b1),
        .douta(),
        .doutb(doutb[i][23:0])
      );      
   end
endgenerate

   
endmodule