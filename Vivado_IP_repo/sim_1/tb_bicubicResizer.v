// Pure Verilog Testbench for bicubicResizer
// 기존 imageRearrangeFifo용 TB를 기반으로, DUT만 교체하고 입력 포트 형식(s_axis_tdata, s_axis_tvalid) 유지
`timescale 1ns/1ps

module tb_bicubicResizer;
  // Parameters
  parameter INPUT_IMAGE_WIDTH  = 320;
  parameter INPUT_IMAGE_HEIGHT = 180;
  localparam TOTAL_PIXELS      = INPUT_IMAGE_WIDTH * INPUT_IMAGE_HEIGHT;

  // Clock & Reset
  reg clk;
  reg rstn;
  initial begin clk = 0; forever #5 clk = ~clk; end
  initial begin rstn = 0; #20 rstn = 1; end

  // DUT I/O regs and wires
  reg         s_axis_tvalid = 0;
  reg [31:0]  s_axis_tdata  = 0; // MSB {8'hx, B, G, R}
  wire        s_axis_tready;
  wire [31:0] m_axis_tdata;
  wire        m_axis_tvalid;
  reg         m_axis_tready = 1;

  // Instantiate DUT: bicubicResizer
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

  // Reference image mem and line FIFOs (for local model)
  reg [7:0] ref_r [0:TOTAL_PIXELS-1];
  reg [7:0] ref_g [0:TOTAL_PIXELS-1];
  reg [7:0] ref_b [0:TOTAL_PIXELS-1];
  reg [7:0] fifo_r [0:4][0:INPUT_IMAGE_WIDTH-1];
  reg [7:0] fifo_g [0:4][0:INPUT_IMAGE_WIDTH-1];
  reg [7:0] fifo_b [0:4][0:INPUT_IMAGE_WIDTH-1];
  integer write_line, tx, col;

  // Initialize reference image memory
  integer i;
  initial begin
    for (i = 0; i < TOTAL_PIXELS; i = i + 1) begin
      ref_r[i] = i;
      ref_g[i] = i + 1;
      ref_b[i] = i + 2;
    end
  end

  // Send pixels to DUT with no gaps after reset deassertion
  initial begin
    // wait until reset is released (rstn==1)
    @(posedge rstn);
    write_line    = 0;
    s_axis_tvalid = 0;
    s_axis_tdata  = 0;
    m_axis_tready = 1;
    @(posedge clk);
    for (tx = 0; tx < TOTAL_PIXELS; tx = tx + 1) begin
      // drive when ready or valid low
      @(posedge clk);
      if (s_axis_tready) begin
        s_axis_tvalid <= 1;
        s_axis_tdata  <= {8'h00, ref_b[tx], ref_g[tx], ref_r[tx]};
        col = tx % INPUT_IMAGE_WIDTH;
        fifo_r[write_line][col] <= ref_r[tx];
        fifo_g[write_line][col] <= ref_g[tx];
        fifo_b[write_line][col] <= ref_b[tx];
        if (col == INPUT_IMAGE_WIDTH-1)
          write_line <= (write_line + 1) % 5;
      end else begin
        s_axis_tvalid <= 0;
      end
    end
    @(posedge clk);
    s_axis_tvalid <= 0;
  end

  // Placeholder for output verification (master port 구현 후 추가)
  initial begin
    #1000000;
    $display("[INFO] Simulation complete.");
    $finish;
  end
endmodule
