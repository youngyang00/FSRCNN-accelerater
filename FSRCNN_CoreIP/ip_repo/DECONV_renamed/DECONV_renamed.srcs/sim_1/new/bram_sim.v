`timescale 1ns / 100ps

module bram_sim #(
    parameter WIDTH = 32,
    parameter DEPTH = 1024,
    parameter ADDR_WIDTH = $clog2(DEPTH),
    parameter INIT_FILE = ""
)(
    input wire clk,
    input wire en,
    input wire wen,
    input wire [ADDR_WIDTH-1:0] addr,
    input wire [WIDTH-1:0] din,
    output wire [WIDTH-1:0] dout
);
                           
    reg [WIDTH-1:0] mem [0:DEPTH-1];
    
    generate
        if (INIT_FILE != "") begin: use_init_file
            initial
                $readmemh(INIT_FILE, mem, 0, DEPTH-1);
        end
        else begin: init_bram_to_zero
        integer ram_index;
        initial
            for (ram_index = 0; ram_index < DEPTH; ram_index = ram_index + 1)
                mem[ram_index] = {WIDTH{1'b0}};
        end
    endgenerate    
    
    assign dout = (en) ? mem[addr] : 0;
    
//    always @(posedge clk) begin
//        if (en) begin
//            if (wen) begin
//                mem[addr] <= din;
//            end
//            else begin
//                dout <= mem[addr];
//            end
//        end
//    end    

endmodule
