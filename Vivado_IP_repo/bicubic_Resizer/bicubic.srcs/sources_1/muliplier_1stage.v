module pipelined_multiplier_1stage_signed #(
  parameter INPUT_WIDTH = 18
)(
  input                         i_clk,
  input                         i_reset,
  input                         i_valid,
  input      signed [INPUT_WIDTH-1:0] i_A,
  input      signed [INPUT_WIDTH-1:0] i_B,
  output reg signed [INPUT_WIDTH*2-1:0] o_out,
  output reg                    o_valid
);

  (* use_dsp = "no" *)
  wire signed [INPUT_WIDTH*2-1:0] mul_wire;

  assign mul_wire = i_A * i_B;

  always @(posedge i_clk) begin
    if (i_reset) begin
      o_out   <= {INPUT_WIDTH*2{1'b0}};
      o_valid <= 1'b0;
    end else begin
      if (i_valid) begin
        o_out <= mul_wire;
      end
      o_valid <= i_valid;
    end
  end

endmodule
