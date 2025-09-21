`timescale 1ns / 1ps //2025.09.13
module Feature_Extraction_Layer(
    input wire axi_clk,
    input wire axi_reset_n,

    input wire s_axis_tvalid,
    input wire [7:0] s_axis_tdata,
    output wire s_axis_tready,

    output wire m_axis_tvalid,
    output wire [127:0] m_axis_tdata,
    input wire m_axis_tready,

    output wire EOL,
    output wire EOF
    );

    wire fifo_s_ready;
    wire fifo_prog_full;

    wire lb_clr;
    wire lb_valid;
    wire [2:0] lb_addr;
    wire [39:0] lb_data_packed;
    wire [2:0] lb_state_read;

    wire pe_valid;
    wire [127:0] pe_result;

    reg [8:0] outXcnt;
    reg [7:0] outYcnt;

    assign EOL = (outXcnt == 'd319) & m_axis_tvalid;
    assign EOF = ((outXcnt == 'd319) & (outYcnt == 'd179)) & m_axis_tvalid;

    always @(posedge axi_clk) begin
       if (~axi_reset_n) begin
          outXcnt <= 'd0;
          outYcnt <= 'd0;
       end
       else begin
          if (m_axis_tvalid & m_axis_tready) begin
             if (outXcnt == 'd319) begin
                outXcnt <= 'd0;
                if(outYcnt == 'd179)begin
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

    feature_Line_Buffer Line_Buffer(
        .i_clk(axi_clk),
        .i_rstn(axi_reset_n),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .i_backbuffer_prog_full(fifo_prog_full),
        .i_backbuffer_s_ready(fifo_s_ready),

        .s_axis_tready(s_axis_tready),
        .o_clr(lb_clr),
        .o_valid(lb_valid),
        .o_addr(lb_addr),
        .o_data_packed(lb_data_packed),
        .o_state_read(lb_state_read)
    );

    feature_PE_Array #(
        .REQUANT(10'd171),

        .WEIGHT0_0(40'h36807F8035),
        .WEIGHT1_0(40'h9D7FD1001E),
        .WEIGHT2_0(40'hF5488021D5),
        .WEIGHT3_0(40'hD91DA67F84),
        .WEIGHT4_0(40'h50806C8069),

        .WEIGHT0_1(40'hFD1505F6F8),
        .WEIGHT1_1(40'h10D6E11606),
        .WEIGHT2_1(40'hEF4C7FDF0A),
        .WEIGHT3_1(40'hFDAA7F14FA),
        .WEIGHT4_1(40'h0605F4F802),

        .WEIGHT0_2(40'h06F8071209),
        .WEIGHT1_2(40'h0C1123C705),
        .WEIGHT2_2(40'hEC7F807FCD),
        .WEIGHT3_2(40'h8080808080),
        .WEIGHT4_2(40'h8080808080),

        .WEIGHT0_3(40'hFFE021F903),
        .WEIGHT1_3(40'h08DD12FCEF),
        .WEIGHT2_3(40'hF3507F3107),
        .WEIGHT3_3(40'h0722A51910),
        .WEIGHT4_3(40'hF4F81AE8FB),

        .WEIGHT0_4(40'h7F801D0206),
        .WEIGHT1_4(40'h80807FD03A),
        .WEIGHT2_4(40'h808080C62F),
        .WEIGHT3_4(40'h80807FB5F3),
        .WEIGHT4_4(40'h8080E00316),

        .WEIGHT0_5(40'hFDF22140EA),
        .WEIGHT1_5(40'h0504E8803D),
        .WEIGHT2_5(40'hF530808008),
        .WEIGHT3_5(40'h0AEC461210),
        .WEIGHT4_5(40'h000201FB01),

        .WEIGHT0_6(40'h00F313F00D),
        .WEIGHT1_6(40'hEE64C15BDF),
        .WEIGHT2_6(40'hF4257F901F),
        .WEIGHT3_6(40'h10E83E1EF5),
        .WEIGHT4_6(40'hFFF20AF401),

        .WEIGHT0_7(40'hF906FDFDF5),
        .WEIGHT1_7(40'h0AFAED0704),
        .WEIGHT2_7(40'hF8E77FA910),
        .WEIGHT3_7(40'h021DEC8080),
        .WEIGHT4_7(40'h00FD068080),

        .WEIGHT0_8(40'h07F8E01701),
        .WEIGHT1_8(40'hFFEC5DE1EC),
        .WEIGHT2_8(40'hE545807F0D),
        .WEIGHT3_8(40'h26C27F0703),
        .WEIGHT4_8(40'hFB0806EB09),

        .WEIGHT0_9(40'h0020DF0905),
        .WEIGHT1_9(40'h0BCA6CD900),
        .WEIGHT2_9(40'h09CA7F5EE3),
        .WEIGHT3_9(40'hF724EEC71D),
        .WEIGHT4_9(40'hFD0BF50EFE),

        .WEIGHT0_10(40'h8080806C06),
        .WEIGHT1_10(40'h8080808080),
        .WEIGHT2_10(40'h0FDD7FFD04),
        .WEIGHT3_10(40'hF706F4F6FC),
        .WEIGHT4_10(40'hFE07F507FF),

        .WEIGHT0_11(40'hA90F7FCA1E),
        .WEIGHT1_11(40'h317F00EDEC),
        .WEIGHT2_11(40'h3E80803AF9),
        .WEIGHT3_11(40'hF7FC3BB203),
        .WEIGHT4_11(40'hF739D6FE02),

        .WEIGHT0_12(40'hF2040FFF00),
        .WEIGHT1_12(40'h2C8047D31F),
        .WEIGHT2_12(40'hF07F7F12EB),
        .WEIGHT3_12(40'h18D6EBFA08),
        .WEIGHT4_12(40'hFDF9210405),

        .WEIGHT0_13(40'hFFFC15F8F9),
        .WEIGHT1_13(40'h16E0E27FCE),
        .WEIGHT2_13(40'hE42E80E948),
        .WEIGHT3_13(40'h040F12E6F3),
        .WEIGHT4_13(40'h05F9FBFB10),    
        
        .WEIGHT0_14(40'hFF0CFAFB04),
        .WEIGHT1_14(40'h12B1310A03),
        .WEIGHT2_14(40'hF22DB88003),
        .WEIGHT3_14(40'hF4317F1DFE),
        .WEIGHT4_14(40'h06F7010AFB),

        .WEIGHT0_15(40'h02F1030609),
        .WEIGHT1_15(40'h00071FC010),
        .WEIGHT2_15(40'hF418807FC6),
        .WEIGHT3_15(40'hF720D37F20),
        .WEIGHT4_15(40'h0BE828E7FE)   
    ) core_calculator(
        .i_clk(axi_clk),
        .i_clr(lb_clr),
        .i_rstn(axi_reset_n),
        .i_en(1'b1),
        .i_addr(lb_addr),
        .i_pixel(lb_data_packed),
        .i_state_read(lb_state_read),

        .o_pe_valid(pe_valid),
        .o_result(pe_result)
    );

    feature_fifo_generator_0 backBuffer(
        .s_aclk(axi_clk),                  // input wire s_aclk
        .s_aresetn(axi_reset_n),            // input wire s_aresetn
        .s_axis_tvalid(pe_valid),    // input wire s_axis_tvalid
        .s_axis_tready(fifo_s_ready),    // output wire s_axis_tready
        .s_axis_tdata(pe_result),      // input wire [127 : 0] s_axis_tdata
        .m_axis_tvalid(m_axis_tvalid),    // output wire m_axis_tvalid
        .m_axis_tready(m_axis_tready),    // input wire m_axis_tready
        .m_axis_tdata(m_axis_tdata),      // output wire [127 : 0] m_axis_tdata
        .axis_prog_full(fifo_prog_full)  // output wire axis_prog_full
);
endmodule
