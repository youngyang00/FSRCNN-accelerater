`timescale 1ns/1ps

module tb_pipelined_multiplier_2stage();
  parameter INPUT_WIDTH = 18;
  parameter CLK_PERIOD  = 10; 


  reg                       clk;
  reg                       reset;
  reg                       valid;
  reg [INPUT_WIDTH-1:0]     A;
  reg [INPUT_WIDTH-1:0]     B;
  wire [INPUT_WIDTH*2-1:0]  out;
  wire                      o_valid;


  pipelined_multiplier_2stage #(
    .INPUT_WIDTH(INPUT_WIDTH)
  ) uut (
    .i_clk(clk),
    .i_reset(reset),
    .i_valid(valid),
    .i_A(A),
    .i_B(B),
    .o_out(out),
    .o_valid(o_valid)
  );


initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

initial begin
  valid <= 0;
  reset <= 1;
  repeat(3)@(posedge clk);
  reset <= 0;
  @(posedge clk);
  valid <= 1;
  A <= 'd5123;
  B <= 'd1234;
  @(posedge clk);
  valid <= 0;
  A <= 'd0;
  B <= 'd0;
  repeat(4)@(posedge clk);
  valid <= 'd1;
  A <= 'd2;
  B <= 'd3;  
  @(posedge clk);
  A <= 'd5;
  B <= 'd10;
  @(posedge clk);
  valid <= 'd0;  
end



endmodule
