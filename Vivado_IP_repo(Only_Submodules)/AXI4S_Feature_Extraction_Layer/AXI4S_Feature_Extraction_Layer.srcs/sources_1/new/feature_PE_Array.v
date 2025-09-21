`timescale 1ns / 1ps //2025.09.18
module feature_PE_Array #(
    parameter REQUANT = 10'd171,

    // Channel 0
    parameter [39:0] WEIGHT0_0 = 40'h36807F8035,
    parameter [39:0] WEIGHT1_0 = 40'h9D7FD1001E,
    parameter [39:0] WEIGHT2_0 = 40'hF5488021D5,
    parameter [39:0] WEIGHT3_0 = 40'hD91DA67F84,
    parameter [39:0] WEIGHT4_0 = 40'h50806C8069,

    // Channel 1
    parameter [39:0] WEIGHT0_1 = 40'hFD1505F6F8,
    parameter [39:0] WEIGHT1_1 = 40'h10D6E11606,
    parameter [39:0] WEIGHT2_1 = 40'hEF4C7FDF0A,
    parameter [39:0] WEIGHT3_1 = 40'hFDAA7F14FA,
    parameter [39:0] WEIGHT4_1 = 40'h0605F4F802,

    // Channel 2
    parameter [39:0] WEIGHT0_2 = 40'h06F8071209,
    parameter [39:0] WEIGHT1_2 = 40'h0C1123C705,
    parameter [39:0] WEIGHT2_2 = 40'hEC7F807FCD,
    parameter [39:0] WEIGHT3_2 = 40'h8080808080,
    parameter [39:0] WEIGHT4_2 = 40'h8080808080,

    // Channel 3
    parameter [39:0] WEIGHT0_3 = 40'hFFE021F903,
    parameter [39:0] WEIGHT1_3 = 40'h08DD12FCEF,
    parameter [39:0] WEIGHT2_3 = 40'hF3507F3107,
    parameter [39:0] WEIGHT3_3 = 40'h0722A51910,
    parameter [39:0] WEIGHT4_3 = 40'hF4F81AE8FB,

    // Channel 4
    parameter [39:0] WEIGHT0_4 = 40'h7F801D0206,
    parameter [39:0] WEIGHT1_4 = 40'h80807FD03A,
    parameter [39:0] WEIGHT2_4 = 40'h808080C62F,
    parameter [39:0] WEIGHT3_4 = 40'h80807FB5F3,
    parameter [39:0] WEIGHT4_4 = 40'h8080E00316,

    // Channel 5
    parameter [39:0] WEIGHT0_5 = 40'hFDF22140EA,
    parameter [39:0] WEIGHT1_5 = 40'h0504E8803D,
    parameter [39:0] WEIGHT2_5 = 40'hF530808008,
    parameter [39:0] WEIGHT3_5 = 40'h0AEC461210,
    parameter [39:0] WEIGHT4_5 = 40'h000201FB01,

    // Channel 6
    parameter [39:0] WEIGHT0_6 = 40'h00F313F00D,
    parameter [39:0] WEIGHT1_6 = 40'hEE64C15BDF,
    parameter [39:0] WEIGHT2_6 = 40'hF4257F901F,
    parameter [39:0] WEIGHT3_6 = 40'h10E83E1EF5,
    parameter [39:0] WEIGHT4_6 = 40'hFFF20AF401,

    // Channel 7
    parameter [39:0] WEIGHT0_7 = 40'hF906FDFDF5,
    parameter [39:0] WEIGHT1_7 = 40'h0AFAED0704,
    parameter [39:0] WEIGHT2_7 = 40'hF8E77FA910,
    parameter [39:0] WEIGHT3_7 = 40'h021DEC8080,
    parameter [39:0] WEIGHT4_7 = 40'h00FD068080,

    // Channel 8
    parameter [39:0] WEIGHT0_8 = 40'h07F8E01701,
    parameter [39:0] WEIGHT1_8 = 40'hFFEC5DE1EC,
    parameter [39:0] WEIGHT2_8 = 40'hE545807F0D,
    parameter [39:0] WEIGHT3_8 = 40'h26C27F0703,
    parameter [39:0] WEIGHT4_8 = 40'hFB0806EB09,

    // Channel 9
    parameter [39:0] WEIGHT0_9 = 40'h0020DF0905,
    parameter [39:0] WEIGHT1_9 = 40'h0BCA6CD900,
    parameter [39:0] WEIGHT2_9 = 40'h09CA7F5EE3,
    parameter [39:0] WEIGHT3_9 = 40'hF724EEC71D,
    parameter [39:0] WEIGHT4_9 = 40'hFD0BF50EFE,

    // Channel 10
    parameter [39:0] WEIGHT0_10 = 40'h8080806C06,
    parameter [39:0] WEIGHT1_10 = 40'h8080808080,
    parameter [39:0] WEIGHT2_10 = 40'h0FDD7FFD04,
    parameter [39:0] WEIGHT3_10 = 40'hF706F4F6FC,
    parameter [39:0] WEIGHT4_10 = 40'hFE07F507FF,

    // Channel 11
    parameter [39:0] WEIGHT0_11 = 40'hA90F7FCA1E,
    parameter [39:0] WEIGHT1_11 = 40'h317F00EDEC,
    parameter [39:0] WEIGHT2_11 = 40'h3E80803AF9,
    parameter [39:0] WEIGHT3_11 = 40'hF7FC3BB203,
    parameter [39:0] WEIGHT4_11 = 40'hF739D6FE02,

    // Channel 12
    parameter [39:0] WEIGHT0_12 = 40'hF2040FFF00,
    parameter [39:0] WEIGHT1_12 = 40'h2C8047D31F,
    parameter [39:0] WEIGHT2_12 = 40'hF07F7F12EB,
    parameter [39:0] WEIGHT3_12 = 40'h18D6EBFA08,
    parameter [39:0] WEIGHT4_12 = 40'hFDF9210405,

    // Channel 13
    parameter [39:0] WEIGHT0_13 = 40'hFFFC15F8F9,
    parameter [39:0] WEIGHT1_13 = 40'h16E0E27FCE,
    parameter [39:0] WEIGHT2_13 = 40'hE42E80E948,
    parameter [39:0] WEIGHT3_13 = 40'h040F12E6F3,
    parameter [39:0] WEIGHT4_13 = 40'h05F9FBFB10,

    // Channel 14
    parameter [39:0] WEIGHT0_14 = 40'hFF0CFAFB04,
    parameter [39:0] WEIGHT1_14 = 40'h12B1310A03,
    parameter [39:0] WEIGHT2_14 = 40'hF22DB88003,
    parameter [39:0] WEIGHT3_14 = 40'hF4317F1DFE,
    parameter [39:0] WEIGHT4_14 = 40'h06F7010AFB,

    // Channel 15
    parameter [39:0] WEIGHT0_15 = 40'h02F1030609,
    parameter [39:0] WEIGHT1_15 = 40'h00071FC010,
    parameter [39:0] WEIGHT2_15 = 40'hF418807FC6,
    parameter [39:0] WEIGHT3_15 = 40'hF720D37F20,
    parameter [39:0] WEIGHT4_15 = 40'h0BE828E7FE
)(
    input wire i_clk,
    input wire i_clr,
    input wire i_rstn,
    input wire i_en,
    input wire [2:0] i_addr,
    input wire [39:0] i_pixel,
    input wire [2:0] i_state_read,

    output wire o_pe_valid,
    output wire [127:0] o_result
    );

    wire w_dsp_valid;
    reg [4:0] valid_dealy;
    reg [31:0] pe_valid_toggle_cnt;
    reg first_valid_mask;

    wire [7:0] peOut [0:15];

    assign o_result =  {peOut[15], peOut[14], peOut[13], peOut[12],
                        peOut[11], peOut[10], peOut[9], peOut[8],
                        peOut[7], peOut[6], peOut[5], peOut[4],
                        peOut[3], peOut[2], peOut[1], peOut[0]};

    always @(posedge i_clk) begin
        if (~i_rstn) begin
            valid_dealy <= 0;
        end
        else begin
            valid_dealy[0] <= w_dsp_valid;
            valid_dealy[1] <= valid_dealy[0];
            valid_dealy[2] <= valid_dealy[1];
            valid_dealy[3] <= valid_dealy[2];
            valid_dealy[4] <= valid_dealy[3];
        end
    end

    always @(posedge i_clk) begin
        if (~i_rstn) begin
            pe_valid_toggle_cnt <= 0;
        end
        else begin
            if (o_pe_valid) begin
                pe_valid_toggle_cnt <= pe_valid_toggle_cnt + 1;
            end
        end
    end

    //2025.09.16 Debugging
    reg remove_first_pe_valid;

    always @(posedge i_clk) begin
        if (~i_rstn) begin
            remove_first_pe_valid <= 0;
        end
        else if (valid_dealy[3]) begin
            remove_first_pe_valid <= 1;
        end
    end

    always @(posedge i_clk) begin
        if (~i_rstn) begin
            first_valid_mask <= 1'b0;
        end 
        else if ((i_state_read == 3'd0) && valid_dealy[4]) begin
            first_valid_mask <= 1'b0;
        end 
        else if (valid_dealy[3]) begin //2025.09.17 Debugging
            first_valid_mask <= 1'b1;
        end
    end

    //2025.09.18 Debugging: orgating
    reg extra_first_valid_mask;

    always @(posedge i_clk) begin
        if (~i_rstn) begin
            extra_first_valid_mask <= 1'b0;
        end
        else if ((i_state_read == 3'd0) && valid_dealy[4]) begin
            extra_first_valid_mask <= 1'b1;
        end
        else if ((i_state_read == 3'd0) && valid_dealy[3]) begin
            extra_first_valid_mask <= 1'b0;
        end
        else if (i_state_read == 3'd1) begin //2025.09.18 12:50
            extra_first_valid_mask <= 1'b0;
        end
    end
    
    wire w_pe_valid = valid_dealy[3] && (first_valid_mask || extra_first_valid_mask);

    assign o_pe_valid = remove_first_pe_valid && w_pe_valid;

    ////////////////////// PE INSTANCE /////////////////////////

    // Channel 0
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_0),
        .WEIGHT1(WEIGHT1_0),
        .WEIGHT2(WEIGHT2_0),
        .WEIGHT3(WEIGHT3_0),
        .WEIGHT4(WEIGHT4_0)
    )pe0(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[0]),
        .o_valid(w_dsp_valid)
    );

    // Channel 1
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_1),
        .WEIGHT1(WEIGHT1_1),
        .WEIGHT2(WEIGHT2_1),
        .WEIGHT3(WEIGHT3_1),
        .WEIGHT4(WEIGHT4_1)
    )pe1(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[1]),
        .o_valid(w_dsp_valid)
    );

    // Channel 2
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_2),
        .WEIGHT1(WEIGHT1_2),
        .WEIGHT2(WEIGHT2_2),
        .WEIGHT3(WEIGHT3_2),
        .WEIGHT4(WEIGHT4_2)
    )pe2(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[2]),
        .o_valid(w_dsp_valid)
    );

    // Channel 3
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_3),
        .WEIGHT1(WEIGHT1_3),
        .WEIGHT2(WEIGHT2_3),
        .WEIGHT3(WEIGHT3_3),
        .WEIGHT4(WEIGHT4_3)
    )pe3(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[3]),
        .o_valid(w_dsp_valid)
    );

    // Channel 4
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_4),
        .WEIGHT1(WEIGHT1_4),
        .WEIGHT2(WEIGHT2_4),
        .WEIGHT3(WEIGHT3_4),
        .WEIGHT4(WEIGHT4_4)
    )pe4(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[4]),
        .o_valid(w_dsp_valid)
    );

    // Channel 5
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_5),
        .WEIGHT1(WEIGHT1_5),
        .WEIGHT2(WEIGHT2_5),
        .WEIGHT3(WEIGHT3_5),
        .WEIGHT4(WEIGHT4_5)
    )pe5(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[5]),
        .o_valid(w_dsp_valid)
    );

    // Channel 6
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_6),
        .WEIGHT1(WEIGHT1_6),
        .WEIGHT2(WEIGHT2_6),
        .WEIGHT3(WEIGHT3_6),
        .WEIGHT4(WEIGHT4_6)
    )pe6(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[6]),
        .o_valid(w_dsp_valid)
    );

    // Channel 7
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_7),
        .WEIGHT1(WEIGHT1_7),
        .WEIGHT2(WEIGHT2_7),
        .WEIGHT3(WEIGHT3_7),
        .WEIGHT4(WEIGHT4_7)
    )pe7(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[7]),
        .o_valid(w_dsp_valid)
    );

    // Channel 8
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_8),
        .WEIGHT1(WEIGHT1_8),
        .WEIGHT2(WEIGHT2_8),
        .WEIGHT3(WEIGHT3_8),
        .WEIGHT4(WEIGHT4_8)
    )pe8(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[8]),
        .o_valid(w_dsp_valid)
    );

    // Channel 9
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_9),
        .WEIGHT1(WEIGHT1_9),
        .WEIGHT2(WEIGHT2_9),
        .WEIGHT3(WEIGHT3_9),
        .WEIGHT4(WEIGHT4_9)
    )pe9(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[9]),
        .o_valid(w_dsp_valid)
    );

    // Channel 10
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_10),
        .WEIGHT1(WEIGHT1_10),
        .WEIGHT2(WEIGHT2_10),
        .WEIGHT3(WEIGHT3_10),
        .WEIGHT4(WEIGHT4_10)
    )pe10(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[10]),
        .o_valid(w_dsp_valid)
    );

    // Channel 11
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_11),
        .WEIGHT1(WEIGHT1_11),
        .WEIGHT2(WEIGHT2_11),
        .WEIGHT3(WEIGHT3_11),
        .WEIGHT4(WEIGHT4_11)
    )pe11(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[11]),
        .o_valid(w_dsp_valid)
    );

    // Channel 12
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_12),
        .WEIGHT1(WEIGHT1_12),
        .WEIGHT2(WEIGHT2_12),
        .WEIGHT3(WEIGHT3_12),
        .WEIGHT4(WEIGHT4_12)
    )pe12(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[12]),
        .o_valid(w_dsp_valid)
    );

    // Channel 13
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_13),
        .WEIGHT1(WEIGHT1_13),
        .WEIGHT2(WEIGHT2_13),
        .WEIGHT3(WEIGHT3_13),
        .WEIGHT4(WEIGHT4_13)
    )pe13(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[13]),
        .o_valid(w_dsp_valid)
    );

    // Channel 14
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_14),
        .WEIGHT1(WEIGHT1_14),
        .WEIGHT2(WEIGHT2_14),
        .WEIGHT3(WEIGHT3_14),
        .WEIGHT4(WEIGHT4_14)
    )pe14(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[14]),
        .o_valid(w_dsp_valid)
    );

    // Channel 15
    feature_PE#(
        .REQUANT(10'd171),
        .WEIGHT0(WEIGHT0_15),
        .WEIGHT1(WEIGHT1_15),
        .WEIGHT2(WEIGHT2_15),
        .WEIGHT3(WEIGHT3_15),
        .WEIGHT4(WEIGHT4_15)
    )pe15(
        .i_clk(i_clk),
        .i_clr(i_clr),
        .i_en(i_en),
        .i_pixel(i_pixel),
        .i_addr(i_addr),
        .o_result(peOut[15]),
        .o_valid(w_dsp_valid)
    );

endmodule