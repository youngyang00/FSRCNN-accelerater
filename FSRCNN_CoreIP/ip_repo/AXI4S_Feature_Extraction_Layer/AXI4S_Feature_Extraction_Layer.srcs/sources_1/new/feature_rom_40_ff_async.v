`timescale 1ns / 1ps //2025.09.13
module feature_rom_40_ff_async#(
    parameter [39:0] DATA0 = 40'h36807F8035,
    parameter [39:0] DATA1 = 40'h9D7FD1001E,
    parameter [39:0] DATA2 = 40'hF5488021D5,
    parameter [39:0] DATA3 = 40'hD91DA67F84,
    parameter [39:0] DATA4 = 40'h50806C8069
)(
    input wire [2:0] i_addr,
    output reg [39:0] o_dout
    );

    always @(*) begin
        case (i_addr)
            3'b000: o_dout = DATA0;
            3'b001: o_dout = DATA1;
            3'b010: o_dout = DATA2;
            3'b011: o_dout = DATA3;
            3'b100: o_dout = DATA4;
            default: o_dout = {40{1'b0}};
        endcase
    end
    
endmodule