`timescale 1ns / 100ps

module deconv_PE(
    input   wire    clk_i,
    input   wire    rst_i,
    input   wire    [23:0]      window_0_i,
    input   wire    [23:0]      window_1_i,
    input   wire    [23:0]      window_2_i,
    input   wire                window_ready_i,
    input   wire    [71:0]      weight_i,
    input   wire                weight_valid_i,

    output  reg                 kernel_output_valid_o,
    output  reg     signed  [15:0]  kernel_output_o
    );

reg   [7:0]    input_0_0, input_0_1, input_0_2;
reg   [7:0]    input_1_0, input_1_1, input_1_2;
reg   [7:0]    input_2_0, input_2_1, input_2_2;
    
reg signed  [7:0]    weight_0_0, weight_0_1, weight_0_2;
reg signed  [7:0]    weight_1_0, weight_1_1, weight_1_2;
reg signed  [7:0]    weight_2_0, weight_2_1, weight_2_2;
    
wire signed [15:0]  mul_0_0, mul_0_1, mul_0_2;
wire signed [15:0]  mul_1_0, mul_1_1, mul_1_2;
wire signed [15:0]  mul_2_0, mul_2_1, mul_2_2;

reg                 mul_ready;
reg                 mul_valid;

reg signed  [15:0]  tree_0_0, tree_0_1, tree_0_2, tree_0_3, tree_0_4;
reg signed  [15:0]  tree_1_0, tree_1_1, tree_1_2;
reg signed  [15:0]  tree_2_0, tree_2_1;
reg signed  [15:0]  tree_3_0;

reg                 tree_0_valid;
reg                 tree_1_valid;
reg                 tree_2_valid;

always @(posedge clk_i or negedge rst_i) begin//DSP INPUT(WINDOW&KERENEL) CONTROL
    if(!rst_i) begin
        input_0_0   <= 0;
        input_0_1   <= 0;
        input_0_2   <= 0;
        input_1_0   <= 0;
        input_1_1   <= 0;
        input_1_2   <= 0;
        input_2_0   <= 0;
        input_2_1   <= 0;
        input_2_2   <= 0;
        weight_0_0  <= 0;
        weight_0_1  <= 0;
        weight_0_2  <= 0;
        weight_1_0  <= 0;
        weight_1_1  <= 0;
        weight_1_2  <= 0;
        weight_2_0  <= 0;
        weight_2_1  <= 0;
        weight_2_2  <= 0;
        mul_ready   <= 0;   
        mul_valid   <= 0;   
    end
    else begin
        mul_valid <= mul_ready;
        if(weight_valid_i & window_ready_i) begin
            mul_ready <= 1;    
                
                    input_0_0   <= window_0_i[23:16];
                    input_0_1   <= window_0_i[15:8];
                    input_0_2   <= window_0_i[7:0];
                    input_1_0   <= window_1_i[23:16];
                    input_1_1   <= window_1_i[15:8];
                    input_1_2   <= window_1_i[7:0];
                    input_2_0   <= window_2_i[23:16];
                    input_2_1   <= window_2_i[15:8];
                    input_2_2   <= window_2_i[7:0];
                    
                    weight_0_0  <= $signed(weight_i[71:64]);
                    weight_0_1  <= $signed(weight_i[63:56]);
                    weight_0_2  <= $signed(weight_i[55:48]);
                    weight_1_0  <= $signed(weight_i[47:40]);
                    weight_1_1  <= $signed(weight_i[39:32]);
                    weight_1_2  <= $signed(weight_i[31:24]);
                    weight_2_0  <= $signed(weight_i[23:16]);
                    weight_2_1  <= $signed(weight_i[15:8]);
                    weight_2_2  <= $signed(weight_i[7:0]);
        end    
        else begin
            mul_ready <= 0;
        end              
    end
end

always @(posedge clk_i or negedge rst_i) begin  //ADDER TREE CONTROL
    if(!rst_i) begin
        tree_0_0        <= 0;
        tree_0_1        <= 0;
        tree_0_2        <= 0;
        tree_0_3        <= 0;
        tree_0_4        <= 0;
        tree_1_0        <= 0;
        tree_1_1        <= 0;
        tree_1_2        <= 0;
        tree_2_0        <= 0;
        tree_0_valid    <= 0;
        tree_1_valid    <= 0;
        tree_2_valid    <= 0;
        kernel_output_o <= 0;
        kernel_output_valid_o <= 0;
    end
    else begin
        tree_0_valid    <= mul_valid;
        tree_1_valid    <= tree_0_valid;
        tree_2_valid    <= tree_1_valid;
        kernel_output_valid_o  <= tree_2_valid;
        
        if(mul_valid) begin
            tree_0_0 <= mul_0_0 + mul_0_1;
            tree_0_1 <= mul_0_2 + mul_1_0;
            tree_0_2 <= mul_1_1 + mul_1_2;
            tree_0_3 <= mul_2_0 + mul_2_1;
            tree_0_4 <= mul_2_2;
        end
        else begin //mul_valid == 0
            tree_0_0 <= 0;
            tree_0_1 <= 0;
            tree_0_2 <= 0;
            tree_0_3 <= 0;
            tree_0_4 <= 0;
        end
        
        if(tree_0_valid) begin
            tree_1_0 <= tree_0_0 + tree_0_1;
            tree_1_1 <= tree_0_2 + tree_0_3;
            tree_1_2 <= tree_0_4;
        end
        else begin //tree_0_valid == 0
            tree_1_0 <= 0;
            tree_1_1 <= 0;
            tree_1_2 <= 0;
        end
        
        if(tree_1_valid) begin
            tree_2_0 <= tree_1_0 + tree_1_1;
            tree_2_1 <= tree_1_2;
        end
        else begin //tree_1_valid == 0
            tree_2_0 <= 0;
            tree_2_1 <= 0;
        end
        
        if(tree_2_valid) begin
            kernel_output_o <= tree_2_0 + tree_2_1; //output
        end
        else begin
            kernel_output_o <= 0;
        end
    end
end

deconv_dsp_macro_1 dsp_mul_0_0 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_0_0}),
    .B(weight_0_0),
    .P(mul_0_0)
);

deconv_dsp_macro_1 dsp_mul_0_1 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_0_1}),
    .B(weight_0_1),
    .P(mul_0_1)
);

deconv_dsp_macro_1 dsp_mul_0_2 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_0_2}),
    .B(weight_0_2),
    .P(mul_0_2)
);

deconv_dsp_macro_1 dsp_mul_1_0 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_1_0}),
    .B(weight_1_0),
    .P(mul_1_0)
);

deconv_dsp_macro_1 dsp_mul_1_1 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_1_1}),
    .B(weight_1_1),
    .P(mul_1_1)
);

deconv_dsp_macro_1 dsp_mul_1_2 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_1_2}),
    .B(weight_1_2),
    .P(mul_1_2)
);

deconv_dsp_macro_1 dsp_mul_2_0 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_2_0}),
    .B(weight_2_0),
    .P(mul_2_0)
);

deconv_dsp_macro_1 dsp_mul_2_1 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_2_1}),
    .B(weight_2_1),
    .P(mul_2_1)
);

deconv_dsp_macro_1 dsp_mul_2_2 (
    .CLK(clk_i),
    .CE(mul_ready),
    .A({0,input_2_2}),
    .B(weight_2_2),
    .P(mul_2_2)
);

endmodule
 