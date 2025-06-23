`timescale 1ns/1ps

module tb_design_1_wrapper;
  // Parameters
  parameter INPUT_IMAGE_WIDTH    = 320;
  parameter INPUT_IMAGE_HEIGHT   = 180;
  localparam TOTAL_PIXELS        = INPUT_IMAGE_WIDTH * INPUT_IMAGE_HEIGHT;
  parameter REPEAT_COUNT         = 2;
  // Random idle term parameters (cycles)
  parameter IDLE_TERM_MIN        = 5;
  parameter IDLE_TERM_MAX        = 500;

  // Clock & Reset
  reg clk;
  reg rstn;
  initial begin clk = 0; forever #5 clk = ~clk; end
  initial begin rstn = 0; #20 rstn = 1; end

  // DUT I/O
  reg  [31:0] S_AXIS_tdata;
  reg         S_AXIS_tvalid;
  reg  [3:0]  S_AXIS_tuser;
  wire        S_AXIS_tready;
  design_1_wrapper dut (
    .S_AXIS_tdata (S_AXIS_tdata),
    .S_AXIS_tready(S_AXIS_tready),
    .S_AXIS_tuser (S_AXIS_tuser),
    .S_AXIS_tvalid(S_AXIS_tvalid),
    .s_aclk       (clk),
    .s_aresetn    (rstn)
  );

  // File handles and vars
  integer fp1, fp2, fout;
  integer rep;
  integer curr_fp;
  integer idx;
  integer x, y;
  reg [7:0] r, g, b;
  reg [8*64:1] header;
  integer idle_count;

  // FSM states
  localparam IDLE = 2'd0;
  localparam LOAD = 2'd1;
  localparam DONE = 2'd2;
  reg [1:0] state;

  // Initial setup
  initial begin
    fp1 = $fopen("input_pixels1.txt", "r");
    fp2 = $fopen("input_pixels2.txt", "r");
    $fgets(header, fp1);
    $fgets(header, fp2);
    fout = $fopen("pixel_r_values_wrapper.txt", "w");
    state         = IDLE;
    rep           = 0;
    idx           = 0;
    idle_count    = 0;
    S_AXIS_tvalid = 0;
    S_AXIS_tdata  = 0;
    S_AXIS_tuser  = 4'b0;
  end

  // FSM to send pixels with random idle bursts
  always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      state         <= IDLE;
      S_AXIS_tvalid <= 0;
      idx           <= 0;
      rep           <= 0;
      idle_count    <= 0;
    end else begin
      // default valid low
      S_AXIS_tvalid <= 0;
      case (state)
        IDLE: begin
          if (rep < REPEAT_COUNT) begin
            // select file and rewind
            if (rep % 2 == 0) begin
              $fclose(fp1);
              fp1 = $fopen("input_pixels1.txt", "r");
              $fgets(header, fp1);
              curr_fp = fp1;
            end else begin
              $fclose(fp2);
              fp2 = $fopen("input_pixels2.txt", "r");
              $fgets(header, fp2);
              curr_fp = fp2;
            end
            idx        <= 0;
            idle_count <= 0;
            state      <= LOAD;
          end else begin
            state <= DONE;
          end
        end
        LOAD: begin
          if (idle_count > 0) begin
            // idle cycles: keep valid low
            idle_count <= idle_count - 1;
          end else if (S_AXIS_tready && idx < TOTAL_PIXELS) begin
            // read and send one pixel
            $fscanf(curr_fp, "%d %d %h %h %h\n", x, y, r, g, b);
            S_AXIS_tdata  <= {8'h00, b, g, r};
            S_AXIS_tvalid <= 1;
            $fwrite(fout, "%02h ", r);
            if ((idx % INPUT_IMAGE_WIDTH) == INPUT_IMAGE_WIDTH-1) $fwrite(fout, "\n");
            idx <= idx + 1;
            // set next idle_count randomly within range
            idle_count <= IDLE_TERM_MIN + ($urandom_range(IDLE_TERM_MAX - IDLE_TERM_MIN, 0));
          end
          if (idx == TOTAL_PIXELS) begin
            rep   <= rep + 1;
            state <= IDLE;
          end
        end
        DONE: begin
          S_AXIS_tvalid <= 0;
          if (rep == REPEAT_COUNT) begin
            $fclose(fp1);
            $fclose(fp2);
            $fclose(fout);
            rep <= rep + 1;
          end
        end
      endcase
    end
  end

  // Monitor
  integer count;
  initial count = 0;
  always @(posedge clk) begin
    if (rstn && S_AXIS_tvalid && S_AXIS_tready && count < 10) begin
      $display("Sent[%0d]=%h at %0t ns", count, S_AXIS_tdata, $time);
      count <= count + 1;
    end
  end
endmodule
