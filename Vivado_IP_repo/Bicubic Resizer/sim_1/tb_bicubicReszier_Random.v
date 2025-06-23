// Pure Verilog Testbench for bicubicResizer with random pixel inputs (non-blocking updates)
// Based on SVTB_2016.06_LG_InternalUse.pdf
`timescale 1ns/1ps

module tb_bicubicResizer;
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
    #20;       
    rstn = 1;  
  end

  // DUT I/O
  reg  [31:0] s_axis_tdata;    // MSB {8'h00,B,G,R} LSB
  reg         s_axis_tvalid;
  wire        s_axis_tready;
  wire [127:0] m_axis_tdata;
  wire        m_axis_tvalid;
  reg         m_axis_tready;


  // Instantiate DUT
  bicubicResizer dut (
    .i_clk       (clk),
    .i_rstn      (rstn),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready)
  );

  // Drive s_axis stream with random pixel data and log R values to txt in matrix form
  integer tx, fp, col;
  reg [7:0] rnd_r, rnd_g, rnd_b;
  initial begin
    // Open output file
    fp = $fopen("./pixel_r_values.txt", "w");

    @(posedge rstn);
    s_axis_tvalid <= 0;
    m_axis_tready <= 1;
    @(posedge clk);

    // Send all pixels
    for (tx = 0; tx < TOTAL_PIXELS; tx = tx + 1) begin
      @(posedge clk);
      if (s_axis_tready) begin
        // Generate random colors
        rnd_r = $random;
        rnd_g = $random;
        rnd_b = $random;
        s_axis_tdata <= {8'h00, rnd_b, rnd_g, rnd_r};
        s_axis_tvalid<= 1;
        // Log R channel value in matrix form
        col = tx % INPUT_IMAGE_WIDTH;
        $fwrite(fp, "%02h ", rnd_r);
        if (col == INPUT_IMAGE_WIDTH-1) begin
          $fwrite(fp, "\n");
        end
      end else begin
        s_axis_tvalid<= 0;
      end
    end

    // Deassert valid and close file
    @(posedge clk);
    s_axis_tvalid <= 0;
    $fclose(fp);
  end

  // Simple monitor prints first few outputs
  integer count;
  initial begin
    count = 0;
    @(posedge rstn);
    forever begin
      @(posedge clk);
      if (m_axis_tvalid && count < 10) begin
        $display("Output[%0d]=%h at %0t ns", count, m_axis_tdata, $time);
        count = count + 1;
      end
    end
  end
endmodule
