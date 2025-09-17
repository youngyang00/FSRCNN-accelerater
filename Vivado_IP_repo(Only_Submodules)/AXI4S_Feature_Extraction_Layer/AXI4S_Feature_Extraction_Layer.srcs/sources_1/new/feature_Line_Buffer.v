`timescale 1ns / 1ps
module feature_Line_Buffer (
    input  wire         i_clk,
    input  wire         i_rstn,

    // AXI4-Stream in (single channel, 8-bit)
    input  wire         s_axis_tvalid,
    input  wire [7:0]   s_axis_tdata,

    // backpressure from downstream fifo_generator or PE side
    input  wire         i_backbuffer_prog_full,
    input  wire         i_backbuffer_s_ready,

    output wire         s_axis_tready,

    // to PE_Array
    output wire         o_clr,
    output reg          o_valid,
    output reg  [2:0]   o_addr,          // for weight address (1clk Delay)
    output wire [39:0]  o_data_packed,
    output wire [2:0]   o_state_read
);

    reg                 s_axis_tready_origin;
    reg                 innerClr;
    reg  [39:0]         data_packed;

    wire                slave_transaction_on = s_axis_tready & s_axis_tvalid;
    assign              s_axis_tready = s_axis_tready_origin & ~i_backbuffer_prog_full & i_backbuffer_s_ready;

    wire [7:0]          bramOut [0:5];

    reg  [3:0]          state_WRITE;
    reg  [2:0]          state_READ;

    assign o_state_read = state_READ;

    reg  [9:0]          wDataCnt;     // 0..319
    reg  [2:0]          WrNum;        // 0..5
    reg  [5:0]          wrEn;         // one-hot
    reg  [8:0]          WrLineNum;    // 0..179
    reg  [2:0]          fillNum;

    reg                 read_on;
    reg  [9:0]          rdCnt;        // 1022,1023,0..321
    reg  [8:0]          rdYCnt;       // 0..179
    reg  [5:0]          bramReadEn;   // read enable
    reg  [2:0]          rdBase;       // 0..5

    // stride=1 window slide
    reg  [2:0]          rdsubCnt;     // 0..4
    wire [10:0]         rd_addr_sum = {1'b0, rdCnt} + rdsubCnt;
    wire [9:0]          rd_addr     = rd_addr_sum[9:0];

    wire [1:0]          pad_bot;
    assign              pad_bot = (rdYCnt >= 178) ? (rdYCnt - 177) : 2'd0;

    wire [1:0]          pad_top;
    assign              pad_top = (rdYCnt <= 1) ? (2 - rdYCnt) : 2'd0;

    reg [2:0]           o_addr_d;

    reg [1:0]           eof_delay_cnt;

    localparam          WRITE_IDLE          = 'd0,
                        WRITE_ON            = 'd1,
                        WRITE_BLOCK         = 'd2,
                        WRITE_PAUSE         = 'd3,
                        WRITE_DONE          = 'd4;

    localparam          READ_IDLE           = 'd0,
                        READ_ON             = 'd1,
                        READ_EOF_DELAY      = 'd2,
                        READ_CLR            = 'd3;

    always @(posedge i_clk) begin
        if (~i_rstn | innerClr) begin
            o_valid  <= 1'b0;
            o_addr_d <= 3'd0;
            o_addr   <= 3'd0;
        end 
        else begin
            o_valid <= read_on;
            o_addr  <= o_addr_d;

            if (read_on) begin
                if (o_addr_d == 3'd4) o_addr_d <= 3'd0;
                else                  o_addr_d <= o_addr_d + 3'd1;
            end 
            else begin
                o_addr_d <= 3'd0;
            end
        end
    end

    assign o_clr = (read_on && (o_addr==3'd0)) ? 1'b1 : 1'b0;

    always @(*) begin
        wrEn = 6'b0;
        wrEn[WrNum] = 1'b1;
    end

    wire do_write = (state_WRITE == WRITE_ON) && slave_transaction_on;

    wire row_last_beat = (state_WRITE == WRITE_ON) && read_on && slave_transaction_on && (wDataCnt == 10'd319);

    wire read_row_tail = read_on && (rdCnt == 10'd317) && (rdsubCnt == 3'd4);

    // ---------- fillNum driver update
    wire fill_inc = (state_WRITE == WRITE_ON) && slave_transaction_on && (wDataCnt == 10'd319) && (fillNum != 3'd5);

    wire fill_dec = (state_READ  == READ_ON) && read_row_tail && (fillNum != 3'd0);

    always @(posedge i_clk) begin
        if (~i_rstn | innerClr) begin
            fillNum <= 3'd2; // for first row padding
        end 
        else begin
            case ({fill_inc, fill_dec})
                2'b10: fillNum <= fillNum + 3'd1;
                2'b01: fillNum <= fillNum - 3'd1;
                default: fillNum <= fillNum; // 00 또는 11
            endcase
        end
    end

    // ---------- WRITE FSM ----------
    always @(posedge i_clk) begin
        if (~i_rstn | innerClr) begin
            state_WRITE             <= WRITE_IDLE;
            s_axis_tready_origin    <= 1'b0;

            wDataCnt                <= 10'd0;
            WrNum                   <= 3'd2;
            WrLineNum               <= 9'd0;
        end else begin
            case (state_WRITE)
                WRITE_IDLE: begin
                    s_axis_tready_origin <= 1'b0;
                    state_WRITE          <= WRITE_ON;
                end

                WRITE_ON: begin
                    if ((WrLineNum == 9'd179) && (wDataCnt == 10'd319) && slave_transaction_on) begin
                        s_axis_tready_origin <= 1'b0;
                        state_WRITE          <= WRITE_DONE;
                    end
                    else if (~i_backbuffer_s_ready || i_backbuffer_prog_full) begin
                        s_axis_tready_origin <= 1'b0;
                        state_WRITE          <= WRITE_BLOCK;
                    end
                    else if (row_last_beat) begin
                        s_axis_tready_origin <= 1'b0;
                        state_WRITE          <= WRITE_PAUSE;
                    end
                    else begin
                        s_axis_tready_origin <= 1'b1;
                    end

                    if (slave_transaction_on) begin
                        if (wDataCnt == 10'd319) begin
                            wDataCnt <= 10'd0;
                            WrNum    <= (WrNum == 3'd5) ? 3'd0 : (WrNum + 1);
                            if (WrLineNum != 9'd179) WrLineNum <= WrLineNum + 9'd1;
                        end 
                        else begin
                            wDataCnt <= wDataCnt + 10'd1;
                        end
                    end
                end

                WRITE_BLOCK: begin
                    s_axis_tready_origin <= 1'b0;
                    if (i_backbuffer_s_ready && ~i_backbuffer_prog_full) begin
                        s_axis_tready_origin <= 1'b1;
                        state_WRITE          <= WRITE_ON;
                    end
                end

                WRITE_PAUSE: begin
                    s_axis_tready_origin <= 1'b0;
                    if (read_row_tail) begin
                        if (~i_backbuffer_prog_full && i_backbuffer_s_ready) begin
                            s_axis_tready_origin <= 1'b1;
                            state_WRITE          <= WRITE_ON;
                        end 
                        else begin
                            state_WRITE          <= WRITE_BLOCK;
                        end
                    end
                end

                WRITE_DONE: begin
                    s_axis_tready_origin <= 1'b0;
                end

                default: state_WRITE <= WRITE_IDLE;
            endcase
        end
    end

    // ---------- Read enable map ----------
    always @(*) begin
        bramReadEn = 6'b0;
        bramReadEn[(rdBase+0)%6] = 1'b1;
        bramReadEn[(rdBase+1)%6] = 1'b1;
        bramReadEn[(rdBase+2)%6] = 1'b1;
        bramReadEn[(rdBase+3)%6] = 1'b1;
        bramReadEn[(rdBase+4)%6] = 1'b1;
    end

    // ---------- READ FSM ----------
    always @(posedge i_clk) begin
        if (~i_rstn | innerClr) begin
            state_READ      <= READ_IDLE;
            read_on         <= 1'b0;
            innerClr        <= 1'b0;

            rdCnt           <= 10'd1022;  // 1022,1023,0..321
            rdYCnt          <= 9'd0;
            rdBase          <= 3'd0;
            rdsubCnt        <= 3'd0;
            eof_delay_cnt   <= 2'd0;

        end 
        else begin
            case (state_READ)
                READ_IDLE: begin
                    read_on  <= 1'b0;
                    innerClr <= 1'b0;
                    rdsubCnt <= 3'd0;
                    eof_delay_cnt   <= 2'd0;
                    if (fillNum == 3'd5) state_READ <= READ_ON;
                end

                READ_ON: begin
                    read_on <= 1'b1;

                    if (rdsubCnt == 3'd4) begin
                        rdsubCnt <= 3'd0;

                        if (rdCnt == 10'd317) begin
                            rdCnt  <= 10'd1022;
                            rdBase <= (rdBase==3'd5) ? 3'd0 : (rdBase+1);

                            if (rdYCnt == 9'd179) begin
                                state_READ <= READ_EOF_DELAY;
                                eof_delay_cnt <= 2'd0;
                            end 
                            else begin
                                rdYCnt <= rdYCnt + 9'd1;
                            end
                        end
                        else if (rdCnt == 10'd1023) begin
                            rdCnt <= 10'd0;
                        end
                        else begin
                            rdCnt <= rdCnt + 10'd1;
                        end
                    end
                    else begin
                        rdsubCnt <= rdsubCnt + 3'd1;
                    end
                end

                READ_EOF_DELAY: begin
                    read_on <= 1'b1;
                    if (eof_delay_cnt == 2'd2) begin
                        state_READ <= READ_CLR;
                        eof_delay_cnt <= 2'd0;
                    end
                    else begin
                        eof_delay_cnt <= eof_delay_cnt + 1;
                    end
                end

                READ_CLR: begin
                    innerClr   <= 1'b1;
                    read_on    <= 1'b0;
                    state_READ <= READ_IDLE;
                end

                default: state_READ <= READ_IDLE;
            endcase
        end
    end

    // ---------- 윈도우 순환 및 패딩 ----------
    wire [7:0] col0 = bramOut[(rdBase+0) % 6];
    wire [7:0] col1 = bramOut[(rdBase+1) % 6];
    wire [7:0] col2 = bramOut[(rdBase+2) % 6];
    wire [7:0] col3 = bramOut[(rdBase+3) % 6];
    wire [7:0] col4 = bramOut[(rdBase+4) % 6];

    always @(posedge i_clk) begin
        case (pad_top)
            2'd2: begin // Top 2 lines pad
                case (pad_bot)
                    2'd0: data_packed <= {8'd0, 8'd0, col2, col3, col4};
                    2'd1: data_packed <= {8'd0, 8'd0, col2, col3, 8'd0};
                    2'd2: data_packed <= {8'd0, 8'd0, col2, 8'd0, 8'd0};
                    default: data_packed <= {8'd0, 8'd0, col2, col3, col4};
                endcase
            end

            2'd1: begin // Top 1 line pad
                case (pad_bot)
                    2'd0: data_packed <= {8'd0, col1, col2, col3, col4};
                    2'd1: data_packed <= {8'd0, col1, col2, col3, 8'd0};
                    2'd2: data_packed <= {8'd0, col1, col2, 8'd0, 8'd0};
                    default: data_packed <= {8'd0, col1, col2, col3, col4};
                endcase
            end

            default: begin // No top padding
                case (pad_bot)
                    2'd0: data_packed <= {col0, col1, col2, col3, col4};
                    2'd1: data_packed <= {col0, col1, col2, col3, 8'd0};
                    2'd2: data_packed <= {col0, col1, col2, 8'd0, 8'd0};
                    default: data_packed <= {col0, col1, col2, col3, col4};
                endcase
            end
        endcase
    end

    assign o_data_packed = data_packed;

    // ---------- BRAM (6-way) ----------
    genvar i;
    generate
        for (i=0; i<6; i=i+1) begin : GEN_LBUF
            feature_blk_mem_gen_0 line_buffer(
                .clka (i_clk),
                .ena  (1'b1),
                .wea  (wrEn[i] & do_write),
                .addra(wDataCnt), // 0..319
                .dina (s_axis_tdata),
                .douta(),

                .clkb (i_clk),
                .enb  (bramReadEn[i]),
                .web  (1'b0),
                .addrb(rd_addr),  // 1022,1023,0..321 (10b roll-over)
                .dinb (8'b0),
                .doutb(bramOut[i])
            );
        end
    endgenerate

endmodule