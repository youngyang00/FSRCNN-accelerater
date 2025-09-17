`timescale 1ns / 100ps

module deconv_top(
    input   wire            axi_clk,
    input   wire            axi_reset_n,
    
    input   wire            s_axis_tvalid,
    output  wire            s_axis_tready, //used for en
    input   wire    [127:0] s_axis_tdata,

    input   wire            m_axis_tready,
    output  wire            m_axis_tvalid,
    output  wire    [7:0]   m_axis_tdata,
    
    output wire             EOL,
    output wire             EOF
    );
    
//EOF EOL FIFO_OUTPUT CONTROL    
reg     [10:0]      fifo_x_cnt;
reg     [9:0]       fifo_y_cnt;
//AXI CONTROL
reg     [4:0]       ready_delay;
reg     [127:0]     s_data_keep;
reg     [1:0]       row_cnt;
reg                 pause;
reg                 not_ready;
reg                 padding;
//LINE BUFFER    
reg                 ena_0; //write
reg                 ena_1;
reg                 ena_2;
reg                 ena_3;
reg                 enb_0; //read
reg                 enb_1;
reg                 enb_2;
reg                 enb_3;
wire    [127:0]     dout_0;
wire    [127:0]     dout_1;
wire    [127:0]     dout_2;
wire    [127:0]     dout_3;
reg                 dout_valid;
reg                 dout_valid_edge;
reg                 linebuffer_ready;
//wire    [1:0]       linebuffer_cnt;
//WINDOW IN
reg    [7:0]        window_in_0[0:15];
reg    [7:0]        window_in_1[0:15];
reg    [7:0]        window_in_2[0:15];
reg                 window_in_valid;
reg                 window_ready;
//WINDNOW 3x8
reg     [23:0]      window_0[0:15];
reg     [23:0]      window_1[0:15];
reg     [23:0]      window_2[0:15];
//INPUT OUTPUT COUNTER
reg     [8:0]       bram_x_cnt;
reg     [10:0]       bram_y_cnt;
reg     [8:0]       x_cnt_delay;
//wire    [7:0]       in_y_cnt; //count 180
//reg     [9:0]       out_y_cnt; //count 720
//WEIGHT CONTROL
wire    [71:0]      weight_dout[0:15];
//reg     [71:0]      weight[0:15
reg     [1:0]       pattern_addr;
reg     [1:0]       pattern_cnt;
reg     [5:0]       weight_delay;
reg                 weight_en;
reg                 weight_valid;
//KERNEL OUTPUT CONTROL + 16CHANNEL ADDER TREE
wire                    kernel_output_valid[0:15];
wire    signed  [15:0]  kernel_output[0:15];
reg     signed  [15:0]  tree_0_0;
reg     signed  [15:0]  tree_0_1;
reg     signed  [15:0]  tree_0_2;
reg     signed  [15:0]  tree_0_3;
reg     signed  [15:0]  tree_0_4;
reg     signed  [15:0]  tree_0_5;
reg     signed  [15:0]  tree_0_6;
reg     signed  [15:0]  tree_0_7;
reg     signed  [15:0]  tree_1_0;
reg     signed  [15:0]  tree_1_1;
reg     signed  [15:0]  tree_1_2;
reg     signed  [15:0]  tree_1_3;     
reg     signed  [15:0]  tree_2_0;     
reg     signed  [15:0]  tree_2_1;     
reg     signed  [15:0]  tree_3;     
reg                     tree_0_valid;
reg                     tree_1_valid;
reg                     tree_2_valid;
reg                     tree_3_valid;
reg     signed  [31:0]  requant;
reg                     requant_valid;     
reg     signed  [7:0]   output_o;
reg                     output_valid_o;
//FIFO
wire                    fifo_rd_en;
wire                    fifo_empty;
wire                    fifo_full;
wire                    fifo_almost_full;
reg                     fifo_almost_full_delay;

integer i;
genvar j;

assign  s_axis_tready = (ready_delay == 3) && (!not_ready) &&(!pause) && (!padding);

assign check_output = output_o; 

assign m_axis_tvalid = !fifo_empty;
assign fifo_rd_en = m_axis_tready && !fifo_empty;
assign EOL = (fifo_x_cnt == 1279) ? 1 : 0;
assign EOF = (fifo_x_cnt == 1279 && fifo_y_cnt == 719) ? 1 : 0;

always @(posedge axi_clk or negedge axi_reset_n) begin //EOF EOL CONTROL
    if(!axi_reset_n) begin
        fifo_x_cnt <= 0;
        fifo_y_cnt <= 0;
//        fifo_y_cnt <= 692; //pad sim
    end
    else begin
        if(m_axis_tvalid && m_axis_tready) begin
            fifo_x_cnt <= fifo_x_cnt + 1;
            if(fifo_x_cnt == 1279) begin
                fifo_x_cnt <= 0;
                fifo_y_cnt <= fifo_y_cnt + 1;
            end
        end
    end
end

always @(posedge axi_clk or negedge axi_reset_n) begin //AXI CONTROL
    if(!axi_reset_n) begin
        ready_delay <= 3;
        s_data_keep <= 0;
        row_cnt     <= 0;
        pause       <= 0;
        not_ready   <= 0;
        padding     <= 0;
    end
    else begin
        if(bram_x_cnt <= 319) begin
            ready_delay <= ready_delay + 1;
            if(ready_delay == 3) begin
                if((s_axis_tvalid || pause) && (!not_ready || padding)) begin
                    ready_delay <= (fifo_almost_full_delay) ? 3 : 0;
                    s_data_keep <= (pause) ? 0 : s_axis_tdata;
                end
                else begin //s_valid_ == 0
                    s_data_keep <= (pause) ? 0 : s_axis_tdata;
                    ready_delay <= 3;      
                end
            end
            else if(ready_delay == 15 && bram_y_cnt >= 2) begin //row counting begin 
//            else if(ready_delay == 5'd15 && bram_y_cnt >= 11'd176) begin //PAD SIMULATION
                ready_delay <= ready_delay + 1;
                if(row_cnt <= 2 || bram_y_cnt >= 181) begin // for last row 
                    pause <= (row_cnt == 3) ? 0 : 1; // last row
                    row_cnt <= row_cnt + 1;
//                    padding <= (row_cnt == 3'd7) ? 0: 1; //end padding 
                end
                else begin //row_cnt == 3
                    pause <= 0;
                    row_cnt <= 0;
                end
            end
            else if(ready_delay == 20) begin
                ready_delay <= 3;
                s_data_keep <= 0;
            end
        end
        else begin //in_x_cnt > 319
            ready_delay <= ready_delay + 1;
            if(ready_delay == 3) begin
                s_data_keep <= s_axis_tdata;
                if(pause) begin
                    s_data_keep <= 0;
                end
            end   
        end
        
        if(bram_y_cnt >= 180) begin
            padding <= (row_cnt == 3 && ready_delay == 15) ? 0: 1;
        end
        else begin
            padding <= 0;
        end
        
        if(fifo_almost_full || bram_x_cnt == 320) begin
            not_ready <= 1;
        end
        else begin
            not_ready <= 0;
        end
    end
end

always @(posedge axi_clk or negedge axi_reset_n) begin //LINEBUFFER CONTROL
    if(!axi_reset_n) begin  
        dout_valid          <= 0; 
        dout_valid_edge     <= 0;       
        linebuffer_ready    <= 0;
        ena_0               <= 0;
        ena_1               <= 0;
        ena_2               <= 0;
        ena_3               <= 0;
        enb_0               <= 0;
        enb_1               <= 0;
        enb_2               <= 0;
        enb_3               <= 0;        
    end
    else begin  
    ///////////////////// ENABLE A DIN
        if((ready_delay == 0) && !pause) begin
            case(bram_y_cnt[1:0])
                2'b00: begin
                    ena_0   <= 0;
                    ena_1   <= 1;
                    ena_2   <= 0;
                    ena_3   <= 0;                              
                end
                
                2'b01: begin
                    ena_0   <= 0;
                    ena_1   <= 0;
                    ena_2   <= 1;
                    ena_3   <= 0;                        
                end
                
                2'b10: begin
                    ena_0   <= 0;
                    ena_1   <= 0;
                    ena_2   <= 0;
                    ena_3   <= 1;                       
                end
                
                2'b11: begin
                    ena_0   <= 1;
                    ena_1   <= 0;
                    ena_2   <= 0;
                    ena_3   <= 0;                           
                end
                
                default: begin
                    ena_0           <= 0;
                    ena_1           <= 0;
                    ena_2           <= 0;
                    ena_3           <= 0;               
                end
            endcase 
        end
        else if(bram_y_cnt == 181 && row_cnt == 3 && ready_delay == 0) begin
            ena_0 <= 1;
        end
        else begin //s_valid_in == 0
            ena_0           <= 0;
            ena_1           <= 0;
            ena_2           <= 0;
            ena_3           <= 0;     
        end          
    /////////////////////ENABLE B DOUT
        if(ready_delay == 0 || ready_delay == 4) begin
            case(bram_y_cnt[1:0])
                2'b00: begin
                    enb_0   <= 1;
                    enb_1   <= 0;
                    enb_2   <= 1;
                    enb_3   <= 1;                                      
                end
                
                2'b01: begin
                    enb_0   <= 1;
                    enb_1   <= 1;
                    enb_2   <= 0;
                    enb_3   <= 1;                      
                end
                
                2'b10: begin
                    enb_0   <= 1;
                    enb_1   <= 1;
                    enb_2   <= 1;
                    enb_3   <= 0;                               
                end
                
                2'b11: begin  
                    enb_0   <= 0;
                    enb_1   <= 1;
                    enb_2   <= 1;
                    enb_3   <= 1;                        
                end
                
                default: begin
                    enb_0           <= 0;
                    enb_1           <= 0;
                    enb_2           <= 0;
                    enb_3           <= 0;                    
                end
            endcase 
        end
        else begin //s_valid_in == 0
            enb_0           <= 0;
            enb_1           <= 0;
            enb_2           <= 0;
            enb_3           <= 0;     
        end          
    end    
end 

always @(posedge axi_clk or negedge axi_reset_n) begin //WINDOW IN CONTROL
    if(!axi_reset_n) begin
        window_in_valid <= 0;
        window_ready    <= 0;
        for (i = 0; i < 16; i = i + 1) begin       
            window_in_0[i] <= 0;
            window_in_1[i] <= 0;
            window_in_2[i] <= 0;
        end        
    end
    else begin 
        if(ready_delay == 2 || ready_delay == 6 || ready_delay == 10) begin
            window_in_valid <= 1;
            case(bram_y_cnt[1:0])
                2'b00: begin
                    for (i = 0; i < 16; i = i + 1) begin
                        window_in_0[i] <= dout_2[8*i +: 8];
                        window_in_1[i] <= dout_3[8*i +: 8];
                        window_in_2[i] <= dout_0[8*i +: 8];
                    end
                end
                
                2'b01: begin
                    for (i = 0; i < 16; i = i + 1) begin
                        window_in_0[i] <= dout_3[8*i +: 8];
                        window_in_1[i] <= dout_0[8*i +: 8];
                        window_in_2[i] <= dout_1[8*i +: 8];
                    end
                    
                    if(bram_y_cnt == 181) begin //LAST ROW PADDING
                        for (i = 0; i < 16; i = i + 1) begin
                            window_in_2[15-i] <= 0;
                        end
                    end                    
                end
                
                2'b10: begin
                    for (i = 0; i < 16; i = i + 1) begin
                        window_in_0[i] <= dout_0[8*i +: 8];
                        window_in_1[i] <= dout_1[8*i +: 8];
                        window_in_2[i] <= dout_2[8*i +: 8];
                    end
                end
                
                2'b11: begin
                    for (i = 0; i < 16; i = i + 1) begin
                        window_in_0[i] <= dout_1[8*i +: 8];
                        window_in_1[i] <= dout_2[8*i +: 8];
                        window_in_2[i] <= dout_3[8*i +: 8];
                    end
                end
            endcase
        end
        else if(ready_delay == 15 ) begin //padding
            for (i = 0; i < 16; i = i + 1) begin
                window_in_0[i] <= 0;
                window_in_1[i] <= 0;
                window_in_2[i] <= 0;
            end
        end
        else begin //ready delay no use
            window_in_valid <= 0;
            for (i = 0; i < 16; i = i + 1) begin       
                window_in_0[i] <= window_in_0[i];
                window_in_1[i] <= window_in_1[i];
                window_in_2[i] <= window_in_2[i];
            end   
        end
        
        if((x_cnt_delay != 1)  && (bram_y_cnt >= 2))  begin
//        if((x_cnt_delay != 1)  && (bram_y_cnt >= 176))  begin //PAD SIMULATION
            window_ready <= 1;
        end
        else begin
            window_ready <= 0;
        end
    end
end


always @(posedge axi_clk or negedge axi_reset_n) begin //WINDOW CONTROL
    if(!axi_reset_n) begin
        for (i = 0; i < 16; i = i + 1) begin       
            window_0[i] <= 0;
            window_1[i] <= 0;
            window_2[i] <= 0;
        end
    end
    else begin        
        if(window_in_valid) begin                            
            for (i = 0; i < 16; i = i + 1) begin      
                window_0[i] <= window_in_0[i];  //input                
                window_1[i] <= window_in_1[i];
                window_2[i] <= window_in_2[i];
                window_0[i][23:8] <= window_0[i][15:0]; //shift
                window_1[i][23:8] <= window_1[i][15:0];
                window_2[i][23:8] <= window_2[i][15:0];
            end                          
        end
    end
end

always @(posedge axi_clk or negedge axi_reset_n) begin //OUTPUT COUNT
    if(!axi_reset_n) begin    
        bram_x_cnt      <= 0;
        bram_y_cnt      <= 0;
//        bram_y_cnt      <= 174; //PAD SIMULATION
        x_cnt_delay     <= 0;
    end
    else begin
        x_cnt_delay <= bram_x_cnt;
        
        if(ready_delay == 1 || ready_delay == 5) begin
            bram_x_cnt <= bram_x_cnt + 1; 
            if(bram_x_cnt >= 11'd320) begin
                bram_x_cnt <= 0;
//                bram_y_cnt <= bram_y_cnt + 1;
            end
        end
        else begin
            bram_x_cnt <= bram_x_cnt;
        end
        
        if(ready_delay == 16 && (!pause)) begin
            bram_y_cnt <= bram_y_cnt + 1;
            if(bram_y_cnt == 181) begin
                bram_y_cnt <= 0;
            end
        end
    end
end


always @(posedge axi_clk or negedge axi_reset_n) begin  ///WEIGHT CONTROL
    if(!axi_reset_n) begin
        weight_en  <= 0;
        weight_valid <= 0;  
        weight_delay <= 0;
        pattern_cnt  <= 0;
//        pattern_addr <= 12;
        pattern_addr <= 2; //
//        pattern_id  <= 0;
    end
    else begin
//        pattern_id <= ((out_y_cnt[1:0]-2) << 2) | out_x_cnt[1:0]  ; // == (oy % 4) * 4 + (ox % 4)    
        weight_valid <= weight_en;
        weight_delay <= weight_delay << 1;
        
        if(ready_delay == 0 || ready_delay == 4) begin
            weight_delay[0] <= 1;
        end
        else begin //window_in_valid == 0
            weight_delay[0] <= 0;
        end
        
        if(ready_delay == 20) begin
            pattern_addr <= pattern_addr + 1;
            if(bram_y_cnt == 0) begin
                pattern_addr <= 2;
            end
        end
        
        if(weight_en)begin
            pattern_cnt <= pattern_cnt + 1;
        end
        else begin
            pattern_cnt <= 0;
        end
        
        if(weight_delay[4:1])begin
            weight_en <= 1;
        end
        else begin
            weight_en <= 0;
        end

    end
end

always @(posedge axi_clk or negedge axi_reset_n) begin //ADDER TREE CONTROL
    if(!axi_reset_n) begin
        tree_0_0        <= 0;    
        tree_0_1        <= 0;    
        tree_0_2        <= 0;    
        tree_0_3        <= 0;    
        tree_0_4        <= 0;    
        tree_0_5        <= 0;    
        tree_0_6        <= 0;    
        tree_0_7        <= 0;    
        tree_1_0        <= 0;    
        tree_1_1        <= 0;    
        tree_1_2        <= 0;    
        tree_1_3        <= 0;    
        tree_2_0        <= 0;    
        tree_2_1        <= 0;
        tree_3          <= 0;
        output_o        <= 0;    
        tree_0_valid    <= 0;
        tree_1_valid    <= 0;
        tree_2_valid    <= 0;
        tree_3_valid    <= 0;
        requant         <= 0;
        requant_valid   <= 0;
        output_o        <= 0;
        output_valid_o  <= 0;        
    end
    else begin
        tree_0_valid    <= kernel_output_valid[0];
        tree_1_valid    <= tree_0_valid;
        tree_2_valid    <= tree_1_valid;
        tree_3_valid    <= tree_2_valid;
        requant_valid   <= tree_3_valid;
        
        if(kernel_output_valid[0]) begin
            tree_0_0    <=  kernel_output[0]  + kernel_output[1];
            tree_0_1    <=  kernel_output[2]  + kernel_output[3];
            tree_0_2    <=  kernel_output[4]  + kernel_output[5];
            tree_0_3    <=  kernel_output[6]  + kernel_output[7];
            tree_0_4    <=  kernel_output[8]  + kernel_output[9];
            tree_0_5    <=  kernel_output[10] + kernel_output[11];
            tree_0_6    <=  kernel_output[12] + kernel_output[13];
            tree_0_7    <=  kernel_output[14] + kernel_output[15];
        end
        else begin
            tree_0_0    <=  0;
            tree_0_1    <=  0;
            tree_0_2    <=  0;
            tree_0_3    <=  0;
            tree_0_4    <=  0;
            tree_0_5    <=  0;
            tree_0_6    <=  0;
            tree_0_7    <=  0;
        end
        
        if(tree_0_valid) begin
            tree_1_0    <=  tree_0_0 + tree_0_1;
            tree_1_1    <=  tree_0_2 + tree_0_3;
            tree_1_2    <=  tree_0_4 + tree_0_5;
            tree_1_3    <=  tree_0_6 + tree_0_7;
        end
        else begin
            tree_1_0    <= 0;
            tree_1_1    <= 0;
            tree_1_2    <= 0;
            tree_1_3    <= 0; 
        end        
        
        if(tree_1_valid) begin
            tree_2_0    <=  tree_1_0 + tree_1_1;
            tree_2_1    <=  tree_1_2 + tree_1_3;
        end
        else begin
            tree_2_0    <=  0;
            tree_2_1    <=  0;
        end
        
        if(tree_2_valid) begin
            tree_3    <= tree_2_0 + tree_2_1;
        end
        else begin
            tree_3    <= 0;
        end
        
        if(tree_3_valid) begin
            requant <= tree_3 * 693;
        end
        else begin
            requant <= 0;
        end
        
        if(requant_valid) begin
            output_o <= requant[23:16]; //rightshift 16
            output_valid_o <= 1;
        end
        else begin
             output_o <= 0;
             output_valid_o <= 0;
        end
                        
    end
end

always @(posedge axi_clk or negedge axi_reset_n) begin //ADDER TREE CONTROL
    if(!axi_reset_n) begin
        fifo_almost_full_delay <= 0;
    end
    else begin
        fifo_almost_full_delay <= fifo_almost_full;
    end
end

generate//INSTANTIATE DECONV
    for (j = 0; j < 16; j = j + 1) begin
        deconv_PE deconv(
            .clk_i(axi_clk),
            .rst_i(axi_reset_n),
            .window_0_i(window_0[j]),
            .window_1_i(window_1[j]),
            .window_2_i(window_2[j]),
            .window_ready_i(window_ready),
            .weight_i(weight_dout[j]),
            .weight_valid_i(weight_valid),
            
            .kernel_output_valid_o(kernel_output_valid[j]),
            .kernel_output_o(kernel_output[j])
        );
    end
endgenerate 
    
    deconv_xilinx_true_dual_port_no_change_1_clock_ram #(
      .RAM_WIDTH(128),
      .RAM_DEPTH(322),
      .RAM_PERFORMANCE("LOW_LATENCY"),
      .INIT_FILE("")
    ) LINEBUFFER_0 (
      .addra(bram_x_cnt),
      .addrb(bram_x_cnt),
      .dina(s_data_keep),
      .dinb({8*16{1'b0}}),
      .clka(axi_clk),
      .wea(ena_0),
//      .web(1'b0),
      .ena(ena_0),
      .enb(enb_0),
      .rsta(1'b0),
      .rstb(1'b0),
      .regcea(1'b0),
      .regceb(1'b0),
      .douta(),
      .doutb(dout_0)
    );

    deconv_xilinx_true_dual_port_no_change_1_clock_ram #(
      .RAM_WIDTH(128),
      .RAM_DEPTH(322),
      .RAM_PERFORMANCE("LOW_LATENCY"),
      .INIT_FILE("")
    ) LINEBUFFER_1 (
      .addra(bram_x_cnt),
      .addrb(bram_x_cnt),
      .dina(s_data_keep),
      .dinb({8*16{1'b0}}),
      .clka(axi_clk),
      .wea(ena_1),
//      .web(1'b0),
      .ena(ena_1),
      .enb(enb_1),
      .rsta(1'b0),
      .rstb(1'b0),
      .regcea(1'b0),
      .regceb(1'b0),
      .douta(),
      .doutb(dout_1)
    );

    deconv_xilinx_true_dual_port_no_change_1_clock_ram #(
      .RAM_WIDTH(128),
      .RAM_DEPTH(322),
      .RAM_PERFORMANCE("LOW_LATENCY"),
      .INIT_FILE("")
    ) LINEBUFFER_2 (
      .addra(bram_x_cnt),
      .addrb(bram_x_cnt),
      .dina(s_data_keep),
      .dinb({8*16{1'b0}}),
      .clka(axi_clk),
      .wea(ena_2),
//      .web(1'b0),
      .ena(ena_2),
      .enb(enb_2),
      .rsta(1'b0),
      .rstb(1'b0),
      .regcea(1'b0),
      .regceb(1'b0),
      .douta(),
      .doutb(dout_2)
    );

    deconv_xilinx_true_dual_port_no_change_1_clock_ram #(
      .RAM_WIDTH(128),
      .RAM_DEPTH(322),
      .RAM_PERFORMANCE("LOW_LATENCY"),
      .INIT_FILE("")
    ) LINEBUFFER_3 (
      .addra(bram_x_cnt),
      .addrb(bram_x_cnt),
      .dina(s_data_keep),
      .dinb({8*16{1'b0}}),
      .clka(axi_clk),
      .wea(ena_3),
//      .web(1'b0),
      .ena(ena_3),
      .enb(enb_3),
      .rsta(1'b0),
      .rstb(1'b0),
      .regcea(1'b0),
      .regceb(1'b0),
      .douta(),
      .doutb(dout_3)
    );
    
    
    
    
    
////////////////////////////////KERNEL 
deconv_transposed_weight inst_deconv_transposed_weight(
    .clk(axi_clk),
    .en(weight_en),
    .addr({pattern_addr,pattern_cnt}),
    
    .dout_0(weight_dout[0]),
    .dout_1(weight_dout[1]),
    .dout_2(weight_dout[2]),
    .dout_3(weight_dout[3]),
    .dout_4(weight_dout[4]),
    .dout_5(weight_dout[5]),
    .dout_6(weight_dout[6]),
    .dout_7(weight_dout[7]),
    .dout_8(weight_dout[8]),
    .dout_9(weight_dout[9]),
    .dout_10(weight_dout[10]),
    .dout_11(weight_dout[11]),
    .dout_12(weight_dout[12]),
    .dout_13(weight_dout[13]),
    .dout_14(weight_dout[14]),
    .dout_15(weight_dout[15])
);        


deconv_fifo_generator_1 inst_FIFO(
    .clk(axi_clk),
    .srst(!axi_reset_n),
    .din(output_o), 
    .wr_en(output_valid_o), 
    .rd_en(fifo_rd_en),//32
    .dout(m_axis_tdata), 
    .full(fifo_full), 
    .empty(fifo_empty),
    .prog_full(fifo_almost_full),
    .wr_rst_busy(),
    .rd_rst_busy()
);

endmodule