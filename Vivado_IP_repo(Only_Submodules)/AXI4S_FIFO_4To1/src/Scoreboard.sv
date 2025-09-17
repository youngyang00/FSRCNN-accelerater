`ifndef INC_SCOREBOARD
`define INC_SCOREBOARD
`include "imageProcessPkg.sv"
`include "pixelTypes.h"
import imageProcessPkg::*;
class Scoreboard;
   mailbox #(out_pixel_t)  in_box;
   int                     width;
   int                     depth;
   int                     frame_count;
   out_pixel_t             frame_ref[][];
   static int              received_Frame = 0;
   real                    coverage_result;


   // covergroup pixelCov;
   //    coverpoint red;
   //    coverpoint green;
   //    coverpoint blue;
   // endgroup

function new(mailbox #(out_pixel_t) in_box,
             int width, int depth,
             int frame_count);
   this.in_box = in_box;
   this.width = width;
   this.depth = depth;
   this.frame_count = frame_count;

   // pixelCov = new();
endfunction

task RefLoad(int fidx);
   string filename;
   frame_ref = new[width];
   for (int i = 0; i < width; i++) begin
      frame_ref[i] = new[depth];
   end
   filename = $sformatf("output_pixels%0d.txt", fidx);
   readPixelTxt_1d_out(filename, frame_ref);
endtask

task evalValue();
   out_pixel_t   dut_pixel_packed;
   forever begin
      RefLoad(received_Frame + 1);
      for (int y = 0; y < depth; y++) begin
         for (int x = 0; x < width; x++) begin
            in_box.get(dut_pixel_packed);
            if(totalPixelEval(x, y, received_Frame + 1, frame_ref[x][y], dut_pixel_packed, 0.01, 255))begin
               $finish;
            end
            // pixelCov.sample();
            // coverage_result = $get_coverage();
            // $display("cvrg = %3.2f",coverage_result);
         end
      end
      received_Frame++;
   end
endtask

task run();
   evalValue();
endtask



endclass
`endif