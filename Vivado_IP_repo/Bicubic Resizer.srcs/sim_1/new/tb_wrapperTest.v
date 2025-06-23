`timescale 1ns/1ps

module tb_design_1_wrapper;
  // Parameters
  parameter INPUT_IMAGE_WIDTH  = 320;
  parameter INPUT_IMAGE_HEIGHT = 180;
  localparam TOTAL_PIXELS      = INPUT_IMAGE_WIDTH * INPUT_IMAGE_HEIGHT;

  // Clock & Reset
  reg clk;
  reg rstn;
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    rstn = 0;
    #20 rstn = 1;
  end

  // DUT I/O Signals
  reg  [31:0] S_AXIS_tdata;
  reg         S_AXIS_tvalid;
  wire        S_AXIS_tready;
  reg  [3:0]  S_AXIS_tuser;

  // Instantiate DUT
  design_1_wrapper dut (
    .S_AXIS_tdata (S_AXIS_tdata),
    .S_AXIS_tready(S_AXIS_tready),
    .S_AXIS_tuser (S_AXIS_tuser),
    .S_AXIS_tvalid(S_AXIS_tvalid),
    .s_aclk       (clk),
    .s_aresetn    (rstn)
  );

  // Drive two continuous frames of S_AXIS stream and log R values separately
  integer frame, tx, fp, col;
  reg [7:0] rnd_r, rnd_g, rnd_b;
  initial begin
    @(posedge rstn);
    // Initialize
    S_AXIS_tvalid <= 0;
    S_AXIS_tuser  <= 0;
    @(posedge clk);

    // Frame 1
    fp = $fopen("./pixel_r_values_wrapper_frame1.txt", "w");
    tx = 0;
    while (tx < TOTAL_PIXELS) begin
      @(posedge clk);
      if (S_AXIS_tready) begin
        rnd_r = $random; rnd_g = $random; rnd_b = $random;
        S_AXIS_tdata  <= {8'h00, rnd_b, rnd_g, rnd_r};
        S_AXIS_tvalid <= 1;
        S_AXIS_tuser  <= 4'b0000;
        col = tx % INPUT_IMAGE_WIDTH;
        $fwrite(fp, "%02h ", rnd_r);
        if (col == INPUT_IMAGE_WIDTH-1) $fwrite(fp, "\n");
        tx = tx + 1;
      end
    end
    $fclose(fp);

    // Frame 2 (immediately after Frame 1)
    fp = $fopen("./pixel_r_values_wrapper_frame2.txt", "w");
    tx = 0;
    while (tx < TOTAL_PIXELS) begin
      @(posedge clk);
      if (S_AXIS_tready) begin
        rnd_r = $random; rnd_g = $random; rnd_b = $random;
        S_AXIS_tdata  <= {8'h00, rnd_b, rnd_g, rnd_r};
        S_AXIS_tvalid <= 1;
        S_AXIS_tuser  <= 4'b0000;
        col = tx % INPUT_IMAGE_WIDTH;
        $fwrite(fp, "%02h ", rnd_r);
        if (col == INPUT_IMAGE_WIDTH-1) $fwrite(fp, "\n");
        tx = tx + 1;
      end
    end
    $fclose(fp);

    // After two frames, deassert
    @(posedge clk);
    S_AXIS_tvalid <= 0;
    S_AXIS_tdata  <= 32'h0;
    S_AXIS_tuser  <= 4'b0000;
  end

  // Monitor first few transactions
  integer count;
  initial begin
    count = 0;
    @(posedge rstn);
    forever begin
      @(posedge clk);
      if (S_AXIS_tready && S_AXIS_tvalid && count < 10) begin
        $display("Sent[%0d]=%h at %0t ns", count, S_AXIS_tdata, $time);
        count = count + 1;
      end
    end
  end
endmodule
