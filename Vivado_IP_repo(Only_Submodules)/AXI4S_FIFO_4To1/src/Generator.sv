`ifndef INC_GENERATOR_SV
`define INC_GENERATOR_SV
`include "imageProcessPkg.sv"
`include "PixelTypes.h"
import imageProcessPkg::*;

class Generator;
int                     width;
int                     depth;
int                     frame_count;
in_pixel_t              frame[][];
mailbox #(in_pixel_t)  out_box;

function new(string name = "Generator",
             int width = 0,
             int depth = 0,
             int frame_count = 0,
             mailbox #(in_pixel_t) out_box = null);
   this.width       = width;
   this.depth       = depth;
   this.frame_count = frame_count;
   this.out_box     = out_box;
endfunction

task gen(int fidx);
   string filename;
   frame = new[width];

   for (int i = 0; i < width; i++) begin
      frame[i] = new[depth];
   end
   filename = $sformatf("input_pixels%0d.txt", fidx);
   readPixelTxt_1d_in(filename, frame);
endtask

task send();
   in_pixel_t pixel;
   for (int y = 0; y < depth; y++) begin
      for (int x = 0; x < width ;x++) begin
         pixel = frame[x][y];
         out_box.put(pixel);
      end
   end
endtask

task run();
   for (int i = 1; i <=frame_count; i++) begin
      gen(i);
      send();
   end
endtask
endclass
`endif