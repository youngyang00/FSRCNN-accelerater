// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin

module AxiBramDistributor(
   input             i_clk,
   input             i_rstn,
   output            s_axis_tready,
   input             s_axis_tvalid,
   input [95:0]      s_axis_tdata, /* MSB: Ch12 ~ LSB:CH0 */
   input             i_backBuffer_prog_full,
   input             i_backBuffer_s_ready,
   output   [287:0]  o_data_packed,
   output            o_clr,
   output reg[2:0]   o_addr,
   output reg        o_valid
);

reg s_axis_tready_origin;
reg innerClr;
reg[287:0] data_packed;
wire slave_transaction_on = s_axis_tready & s_axis_tvalid;
wire [95:0] bramOut[0:3];
reg [3:0] state_WRITE;
reg [2:0] state_READ;
reg [8:0] wrCnt;
reg [1:0] WrNum;
reg [3:0] wrEn;
reg [2:0] fillNum;
reg       read_on;
reg [8:0] rdCnt;
reg [1:0] rdSubCnt;
reg       ChannelSwitch;
reg [1:0] rdNum;
reg [7:0] rdYCnt;
reg [3:0] bramReadEn;
reg [7:0] WrLineNum;
localparam  WRITE_IDLE = 'd0,
            WRITE_ON = 'd1,
            WRITE_BLOCK = 'd2,
            WRITE_DONE = 'd3;

localparam READ_IDLE = 'd0,
           READ_ON = 'd1,
           READ_FINAL = 'd2,
           READ_CLR = 'd3;
assign s_axis_tready = s_axis_tready_origin & ~i_backBuffer_prog_full & i_backBuffer_s_ready;
assign o_clr = ((o_addr == 0) | (o_addr == 1) | (o_addr == 3)|(o_addr == 4) ) ? 1'b0:1'b1;
assign o_data_packed = ((rdYCnt == 'd0) ? {data_packed[287:96],{96{1'b0}}}: rdYCnt == 'd179 ? {{96{1'b0}},data_packed[191:0]}: data_packed);

always @(*) begin
   case (WrNum)
      'd0:wrEn = 4'b0001;
      'd1:wrEn = 4'b0010;
      'd2:wrEn = 4'b0100;
      'd3:wrEn = 4'b1000;
      default: wrEn = 'dx; 
   endcase
end

always @(posedge i_clk) begin
   o_valid <= read_on;
end

always @(posedge i_clk) begin
   if (!i_rstn | innerClr) begin
      wrCnt <= 'd1;
      WrNum <= 'd1;
      // fillNum <= 'd1;
      WrLineNum <= 'd0;
   end
   else begin
      if (slave_transaction_on) begin
         if(wrCnt <= 'd319)begin
            wrCnt <= wrCnt + 'd1;
         end
         else begin
            wrCnt <= 'd1;
            WrNum <= WrNum + 'd1;
            WrLineNum <= WrLineNum + 'd1;
         end
      end
   end
end

always @(posedge i_clk) begin
   if (!i_rstn | innerClr) begin
      fillNum <= 'd1;
   end
   else begin
      if (wrCnt=='d320 & slave_transaction_on) begin
         if(rdCnt == 'd321 & ChannelSwitch)begin
            fillNum <= fillNum;
         end
         else begin
            fillNum <= fillNum + 'd1;
         end
      end
      else begin
         if (rdCnt == 'd321 & ChannelSwitch) begin
            fillNum <= fillNum - 'd1;
         end
         else begin
            fillNum <= fillNum;
         end
      end
   end
end

// always @(posedge i_clk) begin
//    if (!i_rstn | innerClr) begin
//       wrCnt <= 'd1;
//       WrNum <= 'd1;
//       fillNum <= 'd1;
//       WrLineNum <= 'd0;
//    end
//    else begin
//       if (slave_transaction_on) begin
//          if(wrCnt <= 'd319)begin
//             wrCnt <= wrCnt + 'd1;
//          end
//          else begin
//             wrCnt <= 'd1;
//             WrNum <= WrNum + 'd1;
//             if(rdCnt == 'd321 & ChannelSwitch)begin
//                if(wrCnt == 'd320) fillNum <= fillNum;
//                else fillNum <= fillNum -'d1;
//             end
//             else begin
//                fillNum <= fillNum + 'd1;
//             end
//             WrLineNum <= WrLineNum + 'd1;
//          end
//       end
//       else begin
//          if(rdCnt == 'd321 & ChannelSwitch) fillNum <= fillNum - 'd1;
//       end
//    end
// end

always @(posedge i_clk) begin
   if(!i_rstn)begin
      state_WRITE <= WRITE_IDLE;
   end
   else begin
      case (state_WRITE)
         WRITE_IDLE:begin
            s_axis_tready_origin <= 1'b0;
            state_WRITE <= WRITE_ON;
         end
         WRITE_ON:begin
            if ((wrCnt == 'd320) && slave_transaction_on && WrLineNum == 'd179) begin
               s_axis_tready_origin <= 1'b0;
               state_WRITE <= WRITE_DONE;
            end
            else begin
               if((fillNum == 'd3) &&(wrCnt == 'd320) && slave_transaction_on)begin
                  state_WRITE <= WRITE_BLOCK;
                  s_axis_tready_origin <= 1'b0;
               end
               else s_axis_tready_origin <= 1'b1;
            end
         end
         WRITE_BLOCK:begin
            if(fillNum == 'd3) state_WRITE <= WRITE_ON;
         end
         WRITE_DONE:begin
            if(innerClr) state_WRITE <= WRITE_IDLE;
         end
      endcase
   end
end

always @(posedge i_clk) begin
   if (!i_rstn) begin
      state_READ <= READ_IDLE;
   end
   else begin
      case (state_READ)
         READ_IDLE:begin
            read_on <= 1'b0;
            innerClr <= 1'b0;
            if(rdYCnt == 'd179)begin
               state_READ <= READ_FINAL;
            end
            else begin
               if(fillNum >= 'd3)begin
                  state_READ <= READ_ON;
               end
            end
         end
         READ_ON:begin
            read_on <= 1'b1;
            if(rdCnt == 'd321 & ChannelSwitch)begin
               state_READ <= READ_IDLE;
               read_on <= 1'b0;
            end
         end
         READ_FINAL:begin
            read_on <= 1'b1;
            if(rdCnt == 'd321 & ChannelSwitch)begin
               state_READ <= READ_CLR;
               read_on <= 1'b0;
            end
         end
         READ_CLR:begin
            innerClr <= 1'b1;
            state_READ <= READ_IDLE;
         end
      endcase
   end
end

always @(posedge i_clk) begin
   if (!i_rstn | innerClr) begin
      rdCnt <= 'd0;
      rdSubCnt <= 'd0;
      o_addr <= 'd7;
      ChannelSwitch <= 1'b0;
      rdNum <= 'd0;
      rdYCnt <= 'd0;
   end
   else begin
      if (read_on) begin
         if (o_addr >= 'd5) begin
            o_addr <= 'd0;
         end
         else o_addr <= o_addr + 'd1;

         rdSubCnt <= rdSubCnt + 'd1;
         if(rdSubCnt == 'd2)begin
            rdSubCnt <= 'd0;
         end

         rdCnt <= rdCnt + 'd1;
         if ((rdSubCnt == 'd2)) begin
            if(!((rdCnt == 'd321) & (ChannelSwitch)))begin
               if(!ChannelSwitch)begin
                  rdCnt <= rdCnt - 'd2;
                  ChannelSwitch <= ~ChannelSwitch;
               end
               else begin
                  rdCnt <= rdCnt - 'd1;
                  ChannelSwitch <= ~ChannelSwitch;
               end
            end
            else begin
               rdCnt <= 'd0;
               rdNum <= rdNum + 'd1;
               if(rdYCnt >= 'd179) rdYCnt <= 'd0;
               else rdYCnt <= rdYCnt + 'd1;
            end
         end
      end
      else begin
         rdCnt <= 'd0;
         rdSubCnt <= 'd0;
         o_addr <= 'd7;
         ChannelSwitch <= 1'b0;
      end
   end
end

always @(*) begin
   case (rdNum)
      'd0:data_packed = {bramOut[2],bramOut[1],bramOut[0]};
      'd1:data_packed = {bramOut[3],bramOut[2],bramOut[1]};
      'd2:data_packed = {bramOut[0],bramOut[3],bramOut[2]};
      'd3:data_packed = {bramOut[1],bramOut[0],bramOut[3]};
      default: data_packed = 'dx;
   endcase
end

always @(*) begin
   case (rdNum)
      'd0:bramReadEn = 4'b0111;
      'd1:bramReadEn = 4'b1110;
      'd2:bramReadEn = 4'b1101;
      'd3:bramReadEn = 4'b1011;
      default: bramReadEn = 'dx;
   endcase
end

genvar i;
generate
   for (i = 0; i < 4; i = i + 1) begin
      line_buffer LB0(
         .clka(i_clk),    // input wire clka
         .ena(1'b1),      // input wire ena
         .wea(wrEn[i] & slave_transaction_on),      // input wire [0 : 0] wea
         .addra(wrCnt),  // input wire [8 : 0] addra
         .dina(s_axis_tdata),    // input wire [95 : 0] dina
         .douta(),  // output wire [95 : 0] douta
         .clkb(i_clk),    // input wire clkb
         .enb(bramReadEn[i]),      // input wire enb
         .web(1'b0),      // input wire [0 : 0] web
         .addrb(rdCnt),  // input wire [8 : 0] addrb
         .dinb(),    // input wire [95 : 0] dinb
         .doutb(bramOut[i])  // output wire [95 : 0] doutb
      );      
   end
endgenerate
   
endmodule