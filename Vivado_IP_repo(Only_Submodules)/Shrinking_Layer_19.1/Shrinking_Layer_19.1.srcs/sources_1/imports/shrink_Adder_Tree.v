`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/11 21:13:28
// Design Name: 
// Module Name: Adder_Tree
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shrink_Adder_Tree #(
    parameter DATA_WIDTH = 18,
              INPUT_CHANNEL = 16
)(
    input                                       i_clk,
    input                                       i_rst_n,
    input                                       i_valid,
    input   [DATA_WIDTH*INPUT_CHANNEL-1:0]      i_A,
    output                                      o_valid,
    output  [(DATA_WIDTH+4)-1:0]                o_C
    );
wire [(DATA_WIDTH)*(INPUT_CHANNEL/2)-1:0] i_A_1st;
wire [(DATA_WIDTH)*(INPUT_CHANNEL/2)-1:0] i_B_1st;
wire [INPUT_CHANNEL/2-1:0] o_valid_1st; 
wire [(DATA_WIDTH+1)*(INPUT_CHANNEL/2)-1:0] o_C_1st;

wire [(DATA_WIDTH+1)*(INPUT_CHANNEL/4)-1:0] i_A_2nd;
wire [(DATA_WIDTH+1)*(INPUT_CHANNEL/4)-1:0] i_B_2nd;
wire i_valid_2nd = &(o_valid_1st);
wire [INPUT_CHANNEL/4-1:0] o_valid_2nd;
wire [(DATA_WIDTH+2)*(INPUT_CHANNEL/4)-1:0] o_C_2nd;

wire [(DATA_WIDTH+2)*(INPUT_CHANNEL/8)-1:0] i_A_3rd;
wire [(DATA_WIDTH+2)*(INPUT_CHANNEL/8)-1:0] i_B_3rd;
wire i_valid_3rd = &(o_valid_2nd);
wire [INPUT_CHANNEL/8-1:0] o_valid_3rd;
wire [(DATA_WIDTH+3)*(INPUT_CHANNEL/8)-1:0] o_C_3rd;

wire [(DATA_WIDTH+3)-1:0] i_A_final;
wire [(DATA_WIDTH+3)-1:0] i_B_final;
wire i_valid_final = &(o_valid_3rd);


genvar i, j, k;
generate
    for ( i=0; i<INPUT_CHANNEL/2; i=i+1 ) begin: fisrt_part//16(18bits each) -> 8(19bits each)
        shrink_Adder #(
            .DATA_WIDTH(DATA_WIDTH)
        )Adder_inst_0(
            .i_clk(i_clk),//input                       
            .i_rst_n(i_rst_n),//input                       
            .i_valid(i_valid),//input                       
            .i_A(i_A_1st[DATA_WIDTH*i +: DATA_WIDTH]),//input   [DATA_WIDTH-1:0]    
            .i_B(i_B_1st[DATA_WIDTH*i +: DATA_WIDTH]),//input   [DATA_WIDTH-1:0]    
            .o_valid(o_valid_1st[i]),//output                      
            .o_C(o_C_1st[(DATA_WIDTH+1)*i +: (DATA_WIDTH+1)])//output  [DATA_WIDTH:0]      
        );
    end
endgenerate
generate
    for ( j=0; j<INPUT_CHANNEL/4; j=j+1 ) begin: second_part//8(19bits each) -> 4(20bits each)
        shrink_Adder #(
            .DATA_WIDTH(DATA_WIDTH+1)
        )Adder_inst_1(
            .i_clk(i_clk),//input                       
            .i_rst_n(i_rst_n),//input                       
            .i_valid(i_valid_2nd),//input                       
            .i_A(i_A_2nd[(DATA_WIDTH+1)*j +: (DATA_WIDTH+1)]),//input   [DATA_WIDTH-1:0]    
            .i_B(i_B_2nd[(DATA_WIDTH+1)*j +: (DATA_WIDTH+1)]),//input   [DATA_WIDTH-1:0]    
            .o_valid(o_valid_2nd[j]),//output                      
            .o_C(o_C_2nd[(DATA_WIDTH+2)*j +: (DATA_WIDTH+2)])//output  [DATA_WIDTH:0]      
        );
    end
endgenerate
generate
    for ( k=0; k<INPUT_CHANNEL/8; k=k+1 ) begin: third_part//4(20bits each) -> 2(21bits each)
        shrink_Adder #(
            .DATA_WIDTH(DATA_WIDTH+2)
        )Adder_inst_2(
            .i_clk(i_clk),//input                       
            .i_rst_n(i_rst_n),//input                       
            .i_valid(i_valid_3rd),//input                       
            .i_A(i_A_3rd[(DATA_WIDTH+2)*k +: (DATA_WIDTH+2)]),//input   [DATA_WIDTH-1:0]    
            .i_B(i_B_3rd[(DATA_WIDTH+2)*k +: (DATA_WIDTH+2)]),//input   [DATA_WIDTH-1:0]    
            .o_valid(o_valid_3rd[k]),//output                      
            .o_C(o_C_3rd[(DATA_WIDTH+3)*k +: (DATA_WIDTH+3)])//output  [DATA_WIDTH:0]      
        );
    end
endgenerate
shrink_Adder #(//2(21bits each) -> 1(22bits)
    .DATA_WIDTH(DATA_WIDTH+3)
)Adder_inst_3(
    .i_clk(i_clk),//input                       
    .i_rst_n(i_rst_n),//input                       
    .i_valid(i_valid_final),//input                       
    .i_A(i_A_final),//input   [DATA_WIDTH-1:0]    
    .i_B(i_B_final),//input   [DATA_WIDTH-1:0]    
    .o_valid(o_valid),//output                      
    .o_C(o_C)//output  [DATA_WIDTH:0]      
);
assign {i_B_1st, i_A_1st} = i_A;
assign {i_B_2nd, i_A_2nd} = o_C_1st;
assign {i_B_3rd, i_A_3rd} = o_C_2nd;
assign {i_B_final,i_A_final} = o_C_3rd;
endmodule
/*
Adder #(
    .DATA_WIDTH()
)(
    .i_clk(),//input                       
    .i_rst_n(),//input                       
    .i_valid(),//input                       
    .i_A(),//input   [DATA_WIDTH-1:0]    
    .i_B(),//input   [DATA_WIDTH-1:0]    
    .o_valid(),//output                      
    .i_C()//output  [DATA_WIDTH:0]      
);
*/
module shrink_Adder #(
    parameter DATA_WIDTH = 18
)(
    input                       i_clk,
    input                       i_rst_n,
    input                       i_valid,
    input   [DATA_WIDTH-1:0]    i_A,
    input   [DATA_WIDTH-1:0]    i_B,
    output                      o_valid,
    output  [DATA_WIDTH:0]      o_C
);

reg valid_reg;
(* use_dsp = "no" *)
reg signed [DATA_WIDTH:0] C_reg;

always @(posedge i_clk) begin
    if (!i_rst_n) begin
        valid_reg <= 0;
    end
    else begin
        valid_reg <= i_valid;
    end
end
always @(posedge i_clk) begin
    if (!i_rst_n) begin
        C_reg <= 0;
    end
    else if (i_valid) begin
        C_reg <= $signed(i_A) + $signed(i_B);
    end
end

assign o_valid = valid_reg;
assign o_C = C_reg;
endmodule