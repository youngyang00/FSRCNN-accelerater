// -----------------------------------------------------------------------------
// AXI4-Stream 4B -> 3B Repacking FIFO (Depth-Guarded)
//
// Requirements
// 1) When depth (occupied bytes) is >= 4, the master outputs in 3-byte packets.
// 2) If the FIFO is full, or if the remaining free space is < 3 bytes,
//    the slave must not accept input (s_axis_tready = 0).
// 3) DEPTH_BYTES is parameterized.
// 4) Frame (TLAST) is preserved. At end of frame, any remaining 1~2 bytes are
//    flushed in the final beat with TKEEP accordingly.
//
// Note: If DEPTH_BYTES is too small (e.g., < 6), certain fill levels can cause
//       a stall where free < 3 and depth < 4. DEPTH_BYTES >= 6 is recommended.
// -----------------------------------------------------------------------------
module axis_4to3_fifo#(
    parameter DEPTH_BYTES = 32
)(
    input   wire          aclk,
    input   wire          aresetn,
    input   wire  [31:0]  s_axis_tdata,
    input   wire          s_axis_tvalid,
    output  wire          s_axis_tready,
    output  wire  [23:0]  m_axis_tdata,
    output  wire          m_axis_tvalid,
    input   wire          m_axis_tready
);
localparam integer PTR_W = (DEPTH_BYTES <= 2) ? 1 : $clog2(DEPTH_BYTES);
localparam integer CNT_W = $clog2(DEPTH_BYTES+2);

(* ram_style = "registers", shreg_extract = "no" *)
reg [7:0] mem [0:DEPTH_BYTES-1];

reg [PTR_W-1:0] wr_ptr;
reg [PTR_W-1:0] rd_ptr;
reg [CNT_W-1:0] pixel_cnt;
wire slave_transaction = s_axis_tvalid & s_axis_tready;
wire master_transaction = m_axis_tvalid & m_axis_tready;

wire [PTR_W-1:0] rd_adr0 = rd_ptr;
wire [PTR_W-1:0] rd_adr1 = rd_ptr + 1;
wire [PTR_W-1:0] rd_adr2 = rd_ptr + 2;
assign s_axis_tready = (pixel_cnt < DEPTH_BYTES - 'd8) ? 1'b1 : 1'b0;
assign m_axis_tvalid = (pixel_cnt >= 3) ? 1'b1:1'b0;

assign m_axis_tdata = {mem[rd_adr0],mem[rd_adr1],mem[rd_adr2]};

always @(posedge aclk) begin
    if (slave_transaction) begin
        mem[wr_ptr]     <= s_axis_tdata[31:24];
        mem[wr_ptr+1]   <= s_axis_tdata[23:16];
        mem[wr_ptr+2]   <= s_axis_tdata[15:8];
        mem[wr_ptr+3]   <= s_axis_tdata[7:0];
    end
end

always @(posedge aclk) begin
    if (!aresetn) begin
        wr_ptr <= 'd0;
        rd_ptr <= 'd0;
        pixel_cnt <= 'd0;
    end
    else begin
        case ({slave_transaction, master_transaction})
            2'b01:begin
                rd_ptr <= rd_ptr + 'd3; 
                pixel_cnt <= pixel_cnt - 'd3;
            end
            2'b10:begin
                wr_ptr <= wr_ptr + 'd4;
                pixel_cnt <= pixel_cnt + 'd4;
            end
            2'b11:begin
                rd_ptr <= rd_ptr + 'd3;
                wr_ptr <= wr_ptr + 'd4;
                pixel_cnt <= pixel_cnt + 'd1;
            end
        endcase
    end
end
endmodule
