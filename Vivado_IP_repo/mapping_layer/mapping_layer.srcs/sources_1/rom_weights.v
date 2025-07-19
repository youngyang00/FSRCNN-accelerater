module rom_6x24_ff_async #(
    parameter [23:0] DATA0 = 24'h10D3E8,
    parameter [23:0] DATA1 = 24'h7FD6B5,
    parameter [23:0] DATA2 = 24'hE87F7F,
    parameter [23:0] DATA3 = 24'h10D3E8,
    parameter [23:0] DATA4 = 24'h7FD6B5,
    parameter [23:0] DATA5 = 24'hE87F7F
)(  
    input  [2:0]  addr,     
    output reg [23:0] dout  
);

    // combinational read
    always @(*) begin
        case (addr)
            'd0: dout = DATA0;
            'd1: dout = DATA1;
            'd2: dout = DATA2;
            'd3: dout = DATA3;
            'd4: dout = DATA4;
            'd5: dout = DATA5;
            default: dout = {24{1'b0}};
        endcase
    end

endmodule
