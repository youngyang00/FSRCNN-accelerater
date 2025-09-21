`timescale 1ns / 1ps //2025.09.13
module feature_PE#(
    parameter REQUANT = 10'd171,
    parameter [39:0] WEIGHT0 = 40'h36807F8035,
    parameter [39:0] WEIGHT1 = 40'h9D7FD1001E,
    parameter [39:0] WEIGHT2 = 40'hF5488021D5,
    parameter [39:0] WEIGHT3 = 40'hD91DA67F84,
    parameter [39:0] WEIGHT4 = 40'h50806C8069
)(
    input wire i_clk,
    input wire i_clr,
    input wire i_en,
    input wire [39:0] i_pixel,
    input wire [2:0] i_addr,

    output reg [7:0] o_result,
    output reg o_valid
    );

    reg [1:0] resetInter;
    wire signed [36:0] DSP_inter [0:4];
    wire [39:0] weight_packed;

    reg signed [23:0] adder_stage1;
    reg signed [23:0] adder_stage2;
    reg signed [23:0] adderReg_pipe0;
    wire signed [23:0] adderReg_pipe0_wire;

    assign adderReg_pipe0_wire = adderReg_pipe0;

    wire [35:0] requant_dsp_out;
    wire [18:0] requant_dsp_out_shifted;
    
    wire signed [35:0] P_s     = $signed(requant_dsp_out);
    wire signed [35:0] rq_full = P_s >>> 16;
    assign requant_dsp_out_shifted = rq_full[18:0];

    always @(posedge i_clk) begin
        resetInter[0] <= i_clr & i_en;
        resetInter[1] <= resetInter[0];
        o_valid <= i_clr;
    end

    always @(posedge i_clk) begin
      if (resetInter[0]) begin
        adder_stage1 <= $signed(DSP_inter[0][19:0]) + $signed(DSP_inter[1][19:0]) + $signed(DSP_inter[2][19:0]);
        adder_stage2 <= $signed(DSP_inter[3][19:0]) + $signed(DSP_inter[4][19:0]);
      end
    end

    always @(posedge i_clk) begin
        if (resetInter[1]) begin
            adderReg_pipe0 <= adder_stage1 + adder_stage2;
        end
    end

    feature_dsp_Requant DSP_Requant(
        .CLK(i_clk), // input wire CLK
        .A($signed(adderReg_pipe0_wire[23:0])), // input wire [23 : 0] A
        .B({1'b0, REQUANT}), // input wire [ : 0] B
        .C('d0), // input wire [1 : 0] C
        .P(requant_dsp_out)  // output wire [35 : 0] P
    );

    always @(posedge i_clk) begin
        if (requant_dsp_out_shifted[18] == 1) begin
            o_result <= 'd0;
        end
        else begin
            if (requant_dsp_out_shifted >= 255) begin
                o_result <= 'd255;
            end
            else begin
                o_result <= requant_dsp_out_shifted;
            end
        end
    end

    feature_dsp_macro_0 DSP4(
      .CLK(i_clk),    // input wire CLK
      .CE(i_en),      // input wire CE    
      .A({{10{1'b0}},i_pixel[7:0]}),        // input wire [17 : 0] A
      .B({{10{weight_packed[7]}},weight_packed[7:0]}),        // input wire [17 : 0] B
      .C(resetInter[0] ? 32'sd0 : {{12{DSP_inter[4][19]}}, DSP_inter[4][19:0]}),        // input wire [31 : 0] C
      .P(DSP_inter[4])        // output wire [36 : 0] P
    );

    feature_dsp_macro_0 DSP3(
      .CLK(i_clk),    // input wire CLK
      .CE(i_en),      // input wire CE
    
      .A({{10{1'b0}},i_pixel[15:8]}),        // input wire [17 : 0] A
      .B({{10{weight_packed[15]}},weight_packed[15:8]}),        // input wire [17 : 0] B
      .C(resetInter[0] ? 32'sd0 : {{12{DSP_inter[3][19]}}, DSP_inter[3][19:0]}),        // input wire [31 : 0] C
      .P(DSP_inter[3])        // output wire [36 : 0] P
    );

    feature_dsp_macro_0 DSP2(
      .CLK(i_clk),    // input wire CLK
      .CE(i_en),      // input wire CE
    
      .A({{10{1'b0}},i_pixel[23:16]}),        // input wire [17 : 0] A
      .B({{10{weight_packed[23]}},weight_packed[23:16]}),        // input wire [17 : 0] B
      .C(resetInter[0] ? 32'sd0 : {{12{DSP_inter[2][19]}}, DSP_inter[2][19:0]}),        // input wire [31 : 0] C
      .P(DSP_inter[2])        // output wire [36 : 0] P
    );

    feature_dsp_macro_0 DSP1(
      .CLK(i_clk),    // input wire CLK
      .CE(i_en),      // input wire CE
    
      .A({{10{1'b0}},i_pixel[31:24]}),        // input wire [17 : 0] A
      .B({{10{weight_packed[31]}},weight_packed[31:24]}),        // input wire [17 : 0] B
      .C(resetInter[0] ? 32'sd0 : {{12{DSP_inter[1][19]}}, DSP_inter[1][19:0]}),        // input wire [31 : 0] C
      .P(DSP_inter[1])        // output wire [36 : 0] P
    );

    feature_dsp_macro_0 DSP0(
      .CLK(i_clk),    // input wire CLK
      .CE(i_en),      // input wire CE
    
      .A({{10{1'b0}},i_pixel[39:32]}),        // input wire [17 : 0] A
      .B({{10{weight_packed[39]}},weight_packed[39:32]}),       // input wire [17 : 0] B
      .C(resetInter[0] ? 32'sd0 : {{12{DSP_inter[0][19]}}, DSP_inter[0][19:0]}),        // input wire [31 : 0] C
      .P(DSP_inter[0])        // output wire [36 : 0] P
    );

    feature_rom_40_ff_async #(
      .DATA0(WEIGHT0),
      .DATA1(WEIGHT1),
      .DATA2(WEIGHT2),
      .DATA3(WEIGHT3),
      .DATA4(WEIGHT4)
    )weight_rom(
      .i_addr(i_addr),
      .o_dout(weight_packed)
    );

endmodule