`timescale 1ns / 100ps

module tb_top();

reg             clk;
reg             rst;

reg     [15:0]  bram_act_addr;

    
reg             s_valid;
wire            s_ready;
wire    [127:0] s_data;

reg             m_ready;
wire            m_valid;
wire    [7:0]   m_data; 


wire    [127:0] dout;
reg     [1:0]   delay;
    
wire    [7:0]  check_output;
    
deconv_top deconv_top(
    .axi_clk(clk),
    .axi_reset_n(rst),
    
    .s_axis_tvalid(s_valid),
    .s_axis_tready(s_ready),
    .s_axis_tdata(s_data),
    
    .m_axis_tready(m_ready),
    .m_axis_tvalid(m_valid),
    .m_axis_tdata(m_data),

    .EOL(),
    .EOF()
);    

reg [3:0]   cnt;
    
always #5 clk = ~clk;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        cnt <= 1;
        m_ready <= 1;
    end
    else begin //delay
        if(cnt != 1) begin
            s_valid <= 0;
            cnt <= cnt + 1;
        end
        else begin // cnt == 2
            s_valid <= 1;
            if(s_valid & s_ready) begin //cnt != 4
                s_valid <= 0;
                cnt <= 0;
            end
            else begin
                cnt <= cnt;
            end
        end
     end
end
    
    
initial begin
    clk <= 0;
    rst <= 0;
    s_valid <= 0;
    delay <= 0;
    m_ready <= 0;
    cnt <= 0;
    
    #30 rst = 1;
         m_ready <= 1;
end




assign s_data = (s_valid) ? dout :  0; 


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        bram_act_addr <= 16'd0;
//        bram_act_addr <= 54_400; //PAD SIMUL

    end 
    else begin
        // 원래 하던 주소 증가
        if (s_ready & s_valid)
            bram_act_addr <= bram_act_addr + 1'b1;

        // 다음 사이클에 57600이 될 상황이면 지금 멈춤
        if (s_ready & s_valid & (bram_act_addr == 16'd58_900)) begin
            $display("[%0t] Reached last valid address (%0d). Stopping.", $time, 16'd57_599);
            $stop; // 종료하려면 $finish
        end
    end
end

bram_sim  #(
    .WIDTH(128),
    .DEPTH(57600),
    .INIT_FILE("C:/Users/jungh/IDSL/Capstone/FSRCNN-pytorch/output_txt/outputs/layer7_expand_output_hex_reversed.txt")
)INPUT(
    .clk(clk),
    .en(s_valid),
    .wen(1'b0),
    .addr(bram_act_addr),
    .din(128'd0),
    .dout(dout)
); 


    
endmodule
