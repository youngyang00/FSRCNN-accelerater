`ifndef INC_DRIVER_SV
`define INC_DRIVER_SV
`include "axi4s_io.sv"
`include "PixelTypes.h"
class Driver;
   mailbox #(in_pixel_t)    in_box;
   virtual axi4s_io  vif;
   int               burst_len;
   int               pause_cycles;
   static int        DrivedPixelNum = 0;
   int               pixel_num;

   function new(virtual axi4s_io.TB vif = null,
                mailbox #(in_pixel_t) in_box,
                int burst_len,
                int pause_cycles,
                int pixel_num);
      this.vif = vif;
      this.in_box = in_box;
      this.burst_len = burst_len;
      this.pause_cycles = pause_cycles;
      this.pixel_num = pixel_num;
   endfunction

   task reset_seq();
      @(vif.cb);
      vif.cb.i_rstn <= 0;
      repeat(10)@(vif.cb);
      vif.cb.i_rstn <= 1;
      @(vif.cb);
      vif.signal_drv.s_axis_tvalid <= 0;
   endtask

   task drive_frame();
      int burst_count = 0;
      in_pixel_t pixel;
      vif.signal_drv.s_axis_tvalid <= 0;
      forever begin
         @(vif.cb);
         if(DrivedPixelNum >= pixel_num)begin
            vif.signal_drv.s_axis_tvalid <= 1'b0;
            vif.cb.s_axis_tdata <= 'dx;
            break;
         end
         in_box.get(pixel);
         wait (vif.cb.s_axis_tready);
         vif.cb.s_axis_tdata <= pixel;
         vif.signal_drv.s_axis_tvalid <= 1;
         burst_count++;
         if ((burst_count >= burst_len)) begin
            @(vif.cb);
            wait(vif.cb.s_axis_tready);
            vif.signal_drv.s_axis_tvalid <= 0;
            repeat(pause_cycles) @(vif.cb);
            burst_count = 0;
         end
         DrivedPixelNum++;
      end
   endtask

   task run();
      reset_seq();
      drive_frame();
   endtask

endclass
`endif