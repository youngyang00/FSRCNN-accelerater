module pipelined_multiplier_2stage_low_latency#(
  parameter INPUT_WIDTH = 18
)(
  input                   i_clk,
  input                   i_reset,
  input                   i_valid,
  input    [INPUT_WIDTH-1:0]    i_A,
  input    [INPUT_WIDTH-1:0]    i_B,
  output   [INPUT_WIDTH*2-1:0]  o_out,
  output                  o_valid
);

wire [INPUT_WIDTH/2-1:0] B_lo;
wire [INPUT_WIDTH/2-1:0] B_hi;

reg valid_1;
reg valid_2;
reg [INPUT_WIDTH + INPUT_WIDTH/2 - 1 :0] reg_p_lo;
reg [INPUT_WIDTH + INPUT_WIDTH/2 - 1 :0] reg_p_hi;
reg [INPUT_WIDTH*2-1:0] p;

assign B_lo = i_B[INPUT_WIDTH/2-1:0];
assign B_hi = i_B[INPUT_WIDTH-1: INPUT_WIDTH/2];

(* use_dsp = "no" *) 
wire [INPUT_WIDTH + INPUT_WIDTH/2 - 1 :0] p_lo; 
(* use_dsp = "no" *) 
wire [INPUT_WIDTH + INPUT_WIDTH/2 - 1 :0] p_hi;

// 1st stage of multiplication

assign p_lo = i_A * B_lo;
assign p_hi = i_A * B_hi;

always @(posedge i_clk) begin
  valid_1 <= i_valid;
if (i_reset) begin
  valid_1 <= 1'd0;
  reg_p_lo <= 'd0;
  reg_p_hi <= 'd0;
end
else begin
  if (i_valid) begin
    reg_p_lo <= p_lo;
    reg_p_hi <= p_hi;
  end
end
end

//2st stage of multiplication

always @(posedge i_clk) begin
  valid_2 <= valid_1;
  if (i_reset) begin
    p <= 'd0;
    valid_2 <= 'd0;
  end
  else begin
    if (valid_1) begin
      p <= {{(INPUT_WIDTH/2){1'b0}},reg_p_lo} + {reg_p_hi,{(INPUT_WIDTH/2){1'b0}}};
    end
  end
end

assign o_out = p;
assign o_valid = valid_2;

endmodule
