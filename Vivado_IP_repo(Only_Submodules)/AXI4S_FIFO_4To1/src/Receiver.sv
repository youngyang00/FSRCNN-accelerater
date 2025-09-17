`ifndef INC_RECEIVER_SV
`define INC_RECEIVER_SV
`include "axi4s_io.sv"
`include "PixelTypes.h"
class Receiver;
   virtual axi4s_io.TB vif;
   mailbox#(out_pixel_t) out_box;
   integer master_ready_pause_cycles;
   integer master_ready_burst_len;
   out_pixel_t packed_pixel_data;

   function new(virtual axi4s_io.TB vif = null,
                mailbox #(out_pixel_t) out_box,
                int master_ready_burst_len = 20,
                int master_ready_pause_cycles = 5);
      this.vif = vif;
      this.master_ready_burst_len = master_ready_burst_len;
      this.master_ready_pause_cycles = master_ready_pause_cycles;
      this.out_box = out_box;
   endfunction

   task GenReady();
      forever begin
         @(vif.cb);
         vif.signal_drv.m_axis_tready <= 0;
         for (int i = 0; i < master_ready_burst_len; i++) begin
            @(vif.cb);
            vif.signal_drv.m_axis_tready <= 1;
         end
         @(vif.cb);
         // wait(vif.cb.m_axis_tvalid == 1);
         vif.signal_drv.m_axis_tready <= 0;
         for (int i = 0; i < master_ready_pause_cycles ;i++) begin
            @(vif.cb);
         end  
      end
   endtask

   task recv();
      @(vif.cb);
      if (vif.cb.m_axis_tvalid && vif.signal_smp.m_axis_tready) begin
         packed_pixel_data = vif.cb.m_axis_tdata;
         out_box.put(packed_pixel_data);
      end
   endtask

   task run();
   fork
      GenReady();
      begin
         forever begin
            recv();
         end
      end
   join
   endtask
endclass

`endif