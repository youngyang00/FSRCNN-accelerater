// SPDX-License-Identifier: MIT
// Copyright (c) 2025 Gwangsun Shin
module fifo_bram_quad_to_single_axi4s#(
    parameter DATA_WIDTH = 96,   // Width of each individual data word (24 bits)
    parameter DEPTH      = 1024   // Number of quad-entries in memory
)(
    input  wire                     clk,           // Clock
    input  wire                     rst_n,         // Active-low reset

    // AXI4-Stream Slave Interface (Input: 4 words per beat)
    input  wire [DATA_WIDTH*4-1:0]  s_axis_tdata,  // Packed quad-word data (4×24 = 96 bits)
    input  wire                     s_axis_tvalid, // Input data valid
    output wire                     s_axis_tready, // Ready to accept input

    // AXI4-Stream Master Interface (Output: 1 word per beat)
    output reg  [DATA_WIDTH-1:0]    m_axis_tdata,  // Single-word data out (24 bits)
    output                          m_axis_tvalid, // Output data valid
    input  wire                     m_axis_tready, // Consumer ready for output

    // Status Signals
    output wire                     full,          // FIFO almost full
    output wire                     empty,          // FIFO empty
    output reg [$clog2(DEPTH*4+1)-1:0]         wc
);

    // Internal pointers and counters
    localparam ADDR_WIDTH = $clog2(DEPTH);
    reg [ADDR_WIDTH-1:0] wr_ptr, rd_ptr;
    reg [1:0] sub_cnt;                      // Sub-word index 0..3     // Word count
    reg  [DATA_WIDTH-1:0]    temp_data;
    reg                      intermediate_valid;
    reg                      empty2;
    // Flow control signals
    assign s_axis_tready = !full;
    assign full  = (wc + 4 > DEPTH*4);
    assign empty = (wc == 0);
    assign m_axis_tvalid = !empty & intermediate_valid;
    // True Dual-Port No-Change RAM instantiation
    wire [DATA_WIDTH*4-1:0] doutb;
    wire [DATA_WIDTH*4-1:0] dina  = s_axis_tdata;
    wire                    wea   = s_axis_tvalid && s_axis_tready;
    wire                    ena   = wea;
    wire                    enb;
    wire                    regceb = 1'b1;
    wire                    rsta  = 1'b0;

    xilinx_true_dual_port_no_change_1_clock_ram #(
      .RAM_WIDTH(DATA_WIDTH*4),
      .RAM_DEPTH(DEPTH),
      .RAM_PERFORMANCE("LOW_LATENCY"),
      .INIT_FILE("")
    ) ram_inst (
      .addra(wr_ptr),
      .addrb(rd_ptr),
      .dina(dina),
      .dinb({DATA_WIDTH*4{1'b0}}),
      .clka(clk),
      .wea(wea),
      .web(1'b0),
      .ena(ena),
      .enb(enb),
      .rsta(1'b0),
      .rstb(rsta),
      .regcea(1'b0),
      .regceb(regceb),
      .douta(),
      .doutb(doutb)
    );

    // Write logic: pointer increment when write occurs
    always @(posedge clk) begin
        if (!rst_n) begin
            wr_ptr <= 0;
        end else if (wea) begin
            wr_ptr <= wr_ptr + 1;
        end
    end

    // Read & output logic: unpack one 24-bit word
    always @(posedge clk) begin
        if (!rst_n) begin
            rd_ptr        <= 0;
            sub_cnt       <= 0;
            intermediate_valid <= 1'b0;
        end else begin
            if (!empty2) begin        // gate read by empty flag
                if (!intermediate_valid || (intermediate_valid && m_axis_tready)) begin
                    intermediate_valid <= m_axis_tready;
                    // assert read enable one cycle before unpack
                    // enb drives read port enable
                    // unpack sub-word
                    case (sub_cnt)
                        2'd0: m_axis_tdata <= doutb[DATA_WIDTH*1-1:DATA_WIDTH*0];
                        2'd1: m_axis_tdata <= doutb[DATA_WIDTH*2-1:DATA_WIDTH*1];
                        2'd2: m_axis_tdata <= doutb[DATA_WIDTH*3-1:DATA_WIDTH*2];
                        2'd3: m_axis_tdata <= temp_data;
                    endcase
                    if (sub_cnt == 'd2) begin
                        rd_ptr  <= rd_ptr + 1; 
                        temp_data <= doutb[DATA_WIDTH*4-1:DATA_WIDTH*3];
                    end

                    if (sub_cnt == 2'd3 && m_axis_tready) begin
                        sub_cnt <= 0;
                    end else if (m_axis_tready) begin
                        sub_cnt <= sub_cnt + 1;
                    end
                end
            end else begin
                intermediate_valid <= 1'b0;
                sub_cnt       <= 0;
            end
        end
    end

    // Word count update
    always @(posedge clk) begin
        empty2 <= empty;
        if (!rst_n) begin
            wc <= 0;
        end else begin
            case ({wea, m_axis_tvalid & m_axis_tready})
                2'b10: wc <= wc + 4;
                2'b01:begin
                    if(wc > 0)wc <= wc - 1;
                end
                2'b11: wc <= wc + 3;
                default: ;
            endcase
        end
    end

    // Connect read enable after write domain
    assign enb = !empty;

endmodule
