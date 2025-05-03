`timescale 1ns/1ps

module tb_bicubic_compute_unit;

  // Parameters
  localparam CLK_PERIOD = 10;

  // Testbench signals
  reg         i_clk;
  reg         i_reset;
  reg         i_valid;
  reg [1:0]   i_indexX;
  reg [1:0]   i_indexY;
  reg [127:0] i_pixel_R;
  reg [127:0] i_pixel_G;
  reg [127:0] i_pixel_B;
  wire [7:0]  o_pixel_R;
  wire [7:0]  o_pixel_G;
  wire [7:0]  o_pixel_B;
  wire        o_valid;

  // Instantiate the DUT
  bicubic_compute_unit dut (
    .i_clk    (i_clk),
    .i_reset  (i_reset),
    .i_valid  (i_valid),
    .i_indexX (i_indexX),
    .i_indexY (i_indexY),
    .i_pixel_R(i_pixel_R),
    .i_pixel_G(i_pixel_G),
    .i_pixel_B(i_pixel_B),
    .o_pixel_R(o_pixel_R),
    .o_pixel_G(o_pixel_G),
    .o_pixel_B(o_pixel_B),
    .o_valid  (o_valid)
  );

  // Clock generation
  initial begin
    i_clk = 0;
    forever #(CLK_PERIOD/2) i_clk = ~i_clk;
  end

  // Reset pulse
  initial begin
    i_reset = 1;
    #(CLK_PERIOD*2);
    i_reset = 0;
  end

  integer y;
  integer x;

  // Stimulus
  initial begin
    // Initialize inputs
    i_valid   = 0;
    i_indexX  = 2'b00;
    i_indexY  = 2'b00;
    i_pixel_R = 128'd0;
    i_pixel_G = 128'd0;
    i_pixel_B = 128'd0;

    // Wait for reset deassertion
    @(negedge i_reset);
    @(posedge i_clk);

    // Provide a sample 4x4 block: values 0-15 for R, 16-31 for G, 32-47 for B
    i_pixel_R <= {8'd149, 8'd149, 8'd124, 8'd111,
                 8'd149, 8'd149, 8'd124, 8'd111,
                 8'd123, 8'd123, 8'd115, 8'd123,
                 8'd119, 8'd119, 8'd98, 8'd109};
    i_pixel_G <= {8'd158, 8'd158, 8'd142, 8'd131,
                 8'd158, 8'd158, 8'd142, 8'd131,
                 8'd142, 8'd142, 8'd133, 8'd136,
                 8'd141, 8'd141, 8'd122, 8'd132};
    i_pixel_B <= {8'd129, 8'd129, 8'd100, 8'd93,
                 8'd129, 8'd129, 8'd100, 8'd93,
                 8'd112, 8'd112, 8'd91, 8'd95,
                 8'd110, 8'd110, 8'd78, 8'd76};

    // Test all sub-pixel indices (0,0) to (3,3)
    for (y = 0; y < 4; y = y + 1) begin
      for (x = 0; x < 4; x = x + 1) begin
        @(posedge i_clk);
        i_valid  <= 1'b1;
        i_indexX <= x[1:0];
        i_indexY <= y[1:0];
        @(posedge i_clk);
        i_valid <= 1'b0;

        // Wait for output valid
        wait(o_valid);
        $display("[%0t] Index (%0d,%0d) -> R: %0d, G: %0d, B: %0d", $time, x, y, o_pixel_R, o_pixel_G, o_pixel_B);
      end
    end

    // Finish simulation
    # (CLK_PERIOD * 10);
    $finish;
  end

endmodule
