module bicubicResizer(
   input                i_clk,
   input                i_rstn,
   input [31:0]         s_axis_tdata, // MSB {8'hx,B,G,R} LSB
   input                s_axis_tvalid,
   output               s_axis_tready,
   output wire[127:0]   m_axis_tdata,
   output               m_axis_tvalid,
   input                m_axis_tready,
   output wire          EOL,
   output wire          EOF
);

wire       out_backBuffer_ready;
wire       in_rearranger_valid;
wire [7:0] in_rearranger_pixel_r;
wire [7:0] in_rearranger_pixel_g;
wire [7:0] in_rearranger_pixel_b;
reg        in_rearranger_force_read;

wire [127:0] out_rearranger_pixel_r;
wire [127:0] out_rearranger_pixel_g;
wire [127:0] out_rearranger_pixel_b;
wire         out_rearranger_valid;
wire         out_rearranger_intr;
wire [8:0]   out_rearranger_pixelCounter;
wire [95:0]  m_axis_tdata_unpadded;

wire [127:0] out_BCU_pixel_R;
wire [127:0] out_BCU_pixel_G;
wire [127:0] out_BCU_pixel_B;
wire         out_BCU_valid;

reg [127:0] inter_BCU_pixel_r;
reg [127:0] inter_BCU_pixel_g;
reg [127:0] inter_BCU_pixel_b;
reg [127:0] in_BCU_pixel_r;
reg [127:0] in_BCU_pixel_g;
reg [127:0] in_BCU_pixel_b;
reg         inter_BCU_valid;
reg         in_BCU_valid;
reg         rearranger_CLR;
reg         rearranger_CLR_done;

reg rearranger_ready;


wire [8:0] rdCounter;
assign s_axis_tready = rearranger_ready & out_backBuffer_ready;
assign in_rearranger_valid = s_axis_tvalid & rearranger_ready & out_backBuffer_ready;
assign m_axis_tdata = {32'b0, m_axis_tdata_unpadded};

reg [8:0] Xcounter; //320
reg [7:0] Ycounter; // 180


///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// final x,y clamping Logic
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
reg [3:0]clampState;
reg [3:0]clampState_delayed;
reg  [9:0] rdLineCounter;

parameter   CLAMP_IDLE = 'd0,
            CLAMP_X_1 = 'd1,
            CLAMP_X_2 = 'd2,
            CLAMP_Y_Y1_IDLE = 'd3,
            CLAMP_Y_11 = 'd4,
            CLAMP_Y_12 = 'd5,
            CLAMP_Y_Y2_IDLE = 'd6,
            CLAMP_Y_21 = 'd7,
            CLAMP_Y_22 = 'd8,
            CLAMP_CLEAR = 'd9;

always @(posedge i_clk) begin
   if (!i_rstn) begin
      clampState <= CLAMP_IDLE;
   end
   else begin
      case (clampState)
         CLAMP_IDLE:begin
            rearranger_CLR_done <= 'b0;
            rearranger_CLR <= 'b0;
            if(rdLineCounter >= 'd176 & Ycounter >= 'd180) in_rearranger_force_read <= 'b1;
            else in_rearranger_force_read <= 'b0;
            if (rdCounter == 'd317) begin
               clampState <= CLAMP_X_1;
            end
         end
         CLAMP_X_1:begin
            if (rdCounter == 'd318) begin
               clampState <= CLAMP_X_2;
            end
         end
         CLAMP_X_2:begin
            if (rdLineCounter == 'd177) clampState <= CLAMP_Y_Y1_IDLE;
            else clampState <= CLAMP_IDLE;
         end
         CLAMP_Y_Y1_IDLE:begin
            if (rdCounter == 'd317) begin
               clampState <= CLAMP_Y_11;
            end            
         end
         CLAMP_Y_11:begin
            if (rdCounter == 'd318) begin
               clampState <= CLAMP_Y_12;
            end
         end
         CLAMP_Y_12:begin
            clampState <= CLAMP_Y_Y2_IDLE;       
         end
         CLAMP_Y_Y2_IDLE:begin
            if (rdCounter == 'd317) begin
               clampState <= CLAMP_Y_21;
            end                        
         end
         CLAMP_Y_21:begin
            if (rdCounter == 'd318) begin
               clampState <= CLAMP_Y_22;
            end            
         end
         CLAMP_Y_22:begin
            clampState <= CLAMP_CLEAR;
            rearranger_CLR <= 'b1;
         end
         CLAMP_CLEAR:begin
            in_rearranger_force_read <= 'b0; 
            clampState <= CLAMP_IDLE;
            rearranger_CLR_done <= 'b1;
         end
      endcase
   end
end

always @(posedge i_clk) begin
   if (!i_rstn | rearranger_CLR) begin
      rdLineCounter <= 'd0;
   end
   else begin
      if (out_rearranger_intr) begin
         rdLineCounter <= rdLineCounter + 'd1;
      end
   end
end




always @(posedge i_clk) begin
   inter_BCU_valid <= out_rearranger_valid;
   case (clampState)
      CLAMP_IDLE:begin
         inter_BCU_pixel_r <= out_rearranger_pixel_r;
         inter_BCU_pixel_g <= out_rearranger_pixel_g;
         inter_BCU_pixel_b <= out_rearranger_pixel_b;
      end
      CLAMP_X_1:begin
         inter_BCU_pixel_r <= {out_rearranger_pixel_r[127:104],out_rearranger_pixel_r[111:104],
                            out_rearranger_pixel_r[95:72],out_rearranger_pixel_r[79:72],
                            out_rearranger_pixel_r[63:40],out_rearranger_pixel_r[47:40],
                            out_rearranger_pixel_r[31:8],out_rearranger_pixel_r[15:8]};
         inter_BCU_pixel_g <= {out_rearranger_pixel_g[127:104],out_rearranger_pixel_g[111:104],
                            out_rearranger_pixel_g[95:72],out_rearranger_pixel_g[79:72],
                            out_rearranger_pixel_g[63:40],out_rearranger_pixel_g[47:40],
                            out_rearranger_pixel_g[31:8],out_rearranger_pixel_g[15:8]};
         inter_BCU_pixel_b <= {out_rearranger_pixel_b[127:104],out_rearranger_pixel_b[111:104],
                            out_rearranger_pixel_b[95:72],out_rearranger_pixel_b[79:72],
                            out_rearranger_pixel_b[63:40],out_rearranger_pixel_b[47:40],
                            out_rearranger_pixel_b[31:8],out_rearranger_pixel_b[15:8]};
      end
      CLAMP_X_2:begin
         inter_BCU_pixel_r <= {out_rearranger_pixel_r[127:112],out_rearranger_pixel_r[119:112],out_rearranger_pixel_r[119:112],
                            out_rearranger_pixel_r[95:80],out_rearranger_pixel_r[87:80],out_rearranger_pixel_r[87:80],
                            out_rearranger_pixel_r[63:48],out_rearranger_pixel_r[55:48],out_rearranger_pixel_r[55:48],
                            out_rearranger_pixel_r[31:16],out_rearranger_pixel_r[23:16],out_rearranger_pixel_r[23:16]};
         inter_BCU_pixel_g <= {out_rearranger_pixel_g[127:112],out_rearranger_pixel_g[119:112],out_rearranger_pixel_g[119:112],
                            out_rearranger_pixel_g[95:80],out_rearranger_pixel_g[87:80],out_rearranger_pixel_g[87:80],
                            out_rearranger_pixel_g[63:48],out_rearranger_pixel_g[55:48],out_rearranger_pixel_g[55:48],
                            out_rearranger_pixel_g[31:16],out_rearranger_pixel_g[23:16],out_rearranger_pixel_g[23:16]};
         inter_BCU_pixel_b <= {out_rearranger_pixel_b[127:112],out_rearranger_pixel_b[119:112],out_rearranger_pixel_b[119:112],
                            out_rearranger_pixel_b[95:80],out_rearranger_pixel_b[87:80],out_rearranger_pixel_b[87:80],
                            out_rearranger_pixel_b[63:48],out_rearranger_pixel_b[55:48],out_rearranger_pixel_b[55:48],
                            out_rearranger_pixel_b[31:16],out_rearranger_pixel_b[23:16],out_rearranger_pixel_b[23:16]};      
      end
      CLAMP_Y_Y1_IDLE:begin
         inter_BCU_pixel_r <= {out_rearranger_pixel_r[127:32]
                            ,out_rearranger_pixel_r[63:32]};
         inter_BCU_pixel_g <= {out_rearranger_pixel_g[127:32]
                            ,out_rearranger_pixel_g[63:32]};
         inter_BCU_pixel_b <= {out_rearranger_pixel_b[127:32]
                            ,out_rearranger_pixel_b[63:32]};      
      end
      CLAMP_Y_11:begin
         inter_BCU_pixel_r <= {out_rearranger_pixel_r[127:104],out_rearranger_pixel_r[111:104],
                            out_rearranger_pixel_r[95:72],out_rearranger_pixel_r[79:72],
                            out_rearranger_pixel_r[63:40],out_rearranger_pixel_r[47:40],
                            out_rearranger_pixel_r[63:40],out_rearranger_pixel_r[47:40]};
         inter_BCU_pixel_g <= {out_rearranger_pixel_g[127:104],out_rearranger_pixel_g[111:104],
                            out_rearranger_pixel_g[95:72],out_rearranger_pixel_g[79:72],
                            out_rearranger_pixel_g[63:40],out_rearranger_pixel_g[47:40],
                            out_rearranger_pixel_g[63:40],out_rearranger_pixel_g[47:40]};
         inter_BCU_pixel_b <= {out_rearranger_pixel_b[127:104],out_rearranger_pixel_b[111:104],
                            out_rearranger_pixel_b[95:72],out_rearranger_pixel_b[79:72],
                            out_rearranger_pixel_b[63:40],out_rearranger_pixel_b[47:40],
                            out_rearranger_pixel_b[63:40],out_rearranger_pixel_b[47:40]};
      end
      default:begin
         inter_BCU_pixel_r <= out_rearranger_pixel_r;
         inter_BCU_pixel_g <= out_rearranger_pixel_g;
         inter_BCU_pixel_b <= out_rearranger_pixel_b;
      end
   endcase
end

always @(posedge i_clk) begin
   in_BCU_valid <= inter_BCU_valid;
   clampState_delayed <= clampState;
   case (clampState_delayed)
      CLAMP_Y_12:begin
         in_BCU_pixel_r <= {inter_BCU_pixel_r[127:112],inter_BCU_pixel_r[119:112],inter_BCU_pixel_r[119:112],
                            inter_BCU_pixel_r[95:80],inter_BCU_pixel_r[87:80],inter_BCU_pixel_r[87:80],
                            inter_BCU_pixel_r[63:48],inter_BCU_pixel_r[55:48],inter_BCU_pixel_r[55:48],
                            inter_BCU_pixel_r[63:48],inter_BCU_pixel_r[55:48],inter_BCU_pixel_r[55:48]};
         in_BCU_pixel_b <= {inter_BCU_pixel_g[127:112],inter_BCU_pixel_g[119:112],inter_BCU_pixel_g[119:112],
                            inter_BCU_pixel_g[95:80],inter_BCU_pixel_g[87:80],inter_BCU_pixel_g[87:80],
                            inter_BCU_pixel_g[63:48],inter_BCU_pixel_g[55:48],inter_BCU_pixel_g[55:48],
                            inter_BCU_pixel_g[63:48],inter_BCU_pixel_g[55:48],inter_BCU_pixel_g[55:48]};
         in_BCU_pixel_g <= {inter_BCU_pixel_b[127:112],inter_BCU_pixel_b[119:112],inter_BCU_pixel_b[119:112],
                            inter_BCU_pixel_b[95:80],inter_BCU_pixel_b[87:80],inter_BCU_pixel_b[87:80],
                            inter_BCU_pixel_b[63:48],inter_BCU_pixel_b[55:48],inter_BCU_pixel_b[55:48],
                            inter_BCU_pixel_b[63:48],inter_BCU_pixel_b[55:48],inter_BCU_pixel_b[55:48]};
      end
      CLAMP_Y_Y2_IDLE:begin
         in_BCU_pixel_r <= { inter_BCU_pixel_r[127:64],
                             inter_BCU_pixel_r[95:64],
                             inter_BCU_pixel_r[95:64]};
         in_BCU_pixel_b <= { inter_BCU_pixel_g[127:64],
                             inter_BCU_pixel_g[95:64],
                             inter_BCU_pixel_g[95:64]};
         in_BCU_pixel_g <= { inter_BCU_pixel_b[127:64],
                             inter_BCU_pixel_b[95:64],
                             inter_BCU_pixel_b[95:64]};        
      end
      CLAMP_Y_21:begin
         in_BCU_pixel_r <= {inter_BCU_pixel_r[127:104],inter_BCU_pixel_r[111:104],
                            inter_BCU_pixel_r[95:72],inter_BCU_pixel_r[79:72],
                            inter_BCU_pixel_r[95:72],inter_BCU_pixel_r[79:72],
                            inter_BCU_pixel_r[95:72],inter_BCU_pixel_r[79:72]};
         in_BCU_pixel_b <= {inter_BCU_pixel_g[127:104],inter_BCU_pixel_g[111:104],
                            inter_BCU_pixel_g[95:72],inter_BCU_pixel_g[79:72],
                            inter_BCU_pixel_g[95:72],inter_BCU_pixel_g[79:72],
                            inter_BCU_pixel_g[95:72],inter_BCU_pixel_g[79:72]};
         in_BCU_pixel_g <= {inter_BCU_pixel_b[127:104],inter_BCU_pixel_b[111:104],
                            inter_BCU_pixel_b[95:72],inter_BCU_pixel_b[79:72],
                            inter_BCU_pixel_b[95:72],inter_BCU_pixel_b[79:72],
                            inter_BCU_pixel_b[95:72],inter_BCU_pixel_b[79:72]};        
      end
      CLAMP_Y_22:begin
         in_BCU_pixel_r <= {inter_BCU_pixel_r[127:112],inter_BCU_pixel_r[119:112],inter_BCU_pixel_r[119:112],
                            inter_BCU_pixel_r[95:80],inter_BCU_pixel_r[87:80],inter_BCU_pixel_r[87:80],
                            inter_BCU_pixel_r[95:80],inter_BCU_pixel_r[87:80],inter_BCU_pixel_r[87:80],
                            inter_BCU_pixel_r[95:80],inter_BCU_pixel_r[87:80],inter_BCU_pixel_r[87:80]};
         in_BCU_pixel_b <= {inter_BCU_pixel_g[127:112],inter_BCU_pixel_g[119:112],inter_BCU_pixel_g[119:112],
                            inter_BCU_pixel_g[95:80],inter_BCU_pixel_g[87:80],inter_BCU_pixel_g[87:80],
                            inter_BCU_pixel_g[95:80],inter_BCU_pixel_g[87:80],inter_BCU_pixel_g[87:80],
                            inter_BCU_pixel_g[95:80],inter_BCU_pixel_g[87:80],inter_BCU_pixel_g[87:80]};
         in_BCU_pixel_g <= {inter_BCU_pixel_b[127:112],inter_BCU_pixel_b[119:112],inter_BCU_pixel_b[119:112],
                            inter_BCU_pixel_b[95:80],inter_BCU_pixel_b[87:80],inter_BCU_pixel_b[87:80],
                            inter_BCU_pixel_b[95:80],inter_BCU_pixel_b[87:80],inter_BCU_pixel_b[87:80],
                            inter_BCU_pixel_b[95:80],inter_BCU_pixel_b[87:80],inter_BCU_pixel_b[87:80]};         
      end
      default:begin
         in_BCU_pixel_r <= inter_BCU_pixel_r;
         in_BCU_pixel_g <= inter_BCU_pixel_g;
         in_BCU_pixel_b <= inter_BCU_pixel_b;         
      end
   endcase
end
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// Write Control
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
reg [1:0] WrControlState;  
localparam  WRITE_IDLE = 'd0,
            REARRANGE_READY = 'd1,
            WRITE_HOLD = 'd2;

always @(posedge i_clk) begin
   if (!i_rstn | rearranger_CLR) begin
      Xcounter <= 'd0;
      Ycounter <= 'd0;
   end
   else begin
      if (s_axis_tvalid & s_axis_tready) begin
         if (Xcounter == 'd319)begin
            Xcounter <= 'd0;
            if (Ycounter == 'd180)Ycounter <= Ycounter;
            else Ycounter <= Ycounter + 'd1;               
         end
         else Xcounter <= Xcounter + 'd1;
      end
   end
end            

always @(posedge i_clk) begin
   if (!i_rstn) begin
      WrControlState <= WRITE_IDLE;
      rearranger_ready <= 1'b0;
   end
   else begin
      case (WrControlState)
         WRITE_IDLE:begin
            WrControlState <= REARRANGE_READY;
            rearranger_ready <= 1'b0;
         end
         REARRANGE_READY:begin
            rearranger_ready <= 1'b1;
            if ((Ycounter == 'd179) && (Xcounter == 'd318)) begin
               WrControlState <= WRITE_HOLD;
            end
         end
         WRITE_HOLD:begin
            rearranger_ready <= 1'b0;
            if (rearranger_CLR_done == 1'b1) begin
               WrControlState <= WRITE_IDLE;
            end
         end
      endcase
   end
end

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// Clam Rearranger instance
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////

assign in_rearranger_pixel_r = s_axis_tdata[7:0];
assign in_rearranger_pixel_g = s_axis_tdata[15:8];
assign in_rearranger_pixel_b = s_axis_tdata[23:16];

imageRearranger_clamp Rearranger(
   .i_clk(i_clk),//input                
   .i_rst(!i_rstn | rearranger_CLR),//input                
   .i_pixel_data_valid(in_rearranger_valid),//input                
   .i_pixel_data_r(in_rearranger_pixel_r),//input       [7:0]    
   .i_pixel_data_g(in_rearranger_pixel_g),//input       [7:0]    
   .i_pixel_data_b(in_rearranger_pixel_b),//input       [7:0]    
   .i_force_read(in_rearranger_force_read),//input
   .o_rdCounter(rdCounter),
   .o_pixelCounter(out_rearranger_pixelCounter),                
   .o_pixel_data_r(out_rearranger_pixel_r),//output reg  [127:0]  
   .o_pixel_data_g(out_rearranger_pixel_g),//output reg  [127:0]  
   .o_pixel_data_b(out_rearranger_pixel_b),//output reg  [127:0]  
   .o_pixel_data_valid(out_rearranger_valid),//output               
   .o_intr(out_rearranger_intr)//output reg           
);

BCU_array bcu_array(
   .i_clk(i_clk),//input                
   .i_reset(!i_rstn),//input                
   .i_valid(in_BCU_valid),//input                
   .i_recusriveMod(),//input                
   .i_pixel_R(in_BCU_pixel_r),//input [127:0]        
   .i_pixel_G(in_BCU_pixel_g),//input [127:0]        
   .i_pixel_B(in_BCU_pixel_b),//input [127:0]        
   .o_pixel_R(out_BCU_pixel_R), //output [127:0]        
   .o_pixel_G(out_BCU_pixel_G), //output [127:0]        
   .o_pixel_B(out_BCU_pixel_B), //output [127:0]        
   .o_valid(out_BCU_valid)//output               
);

bicubicValueBuffer BackBuffer(
   .i_clk(i_clk),//input          
   .i_valid(out_BCU_valid),//input          
   .i_rstn(i_rstn),//input          
   .i_pixel_data_r(out_BCU_pixel_R),//input [127:0]  
   .i_pixel_data_g(out_BCU_pixel_G),//input [127:0]  
   .i_pixel_data_b(out_BCU_pixel_B),//input [127:0]  
   .o_loadReady(out_backBuffer_ready),//output reg     
   .m_axis_tdata(m_axis_tdata_unpadded),//output [95:0]  
   .m_axis_tvalid(m_axis_tvalid),//output         
   .m_axis_tready(m_axis_tready),//input
   .EOL(EOL),
   .EOF(EOF)          
);

   
endmodule