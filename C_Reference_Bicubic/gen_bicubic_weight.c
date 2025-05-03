/*
 * gen_bicubic_weight.c (reduced)
 * -------------------------------
 * Generate reduced 2D bicubic weight table for SCALE_FACTOR=4.
 * Only outputs entries for ix,iy ∈ {0,4,8,12} (4×4=16 lines).
 * Outputs to bicubic_2d_weights_reduced.txt with columns:
 *   ix iy w00 w01 w02 w03 w10 ... w33
 *
 * Compile:
 *   gcc gen_bicubic_weight.c -lm -o gen_bicubic_weight_reduced
 * Run:
 *   ./gen_bicubic_weight_reduced
 */

 #include <stdio.h>
 #include <stdlib.h>
 #include <math.h>
 
 #define WEIGHT_STEPS 16
 #define SCALE_FACTOR 4
 #define OUTPUT_FILE "bicubic_2d_weights_reduced.txt"
 
 // Catmull-Rom cubic weight (a = -0.5)
 static inline double weight_cubic(double t) {
     const double a = -0.5;
     double x = fabs(t);
     if (x <= 1.0) return (a + 2.0)*x*x*x - (a + 3.0)*x*x + 1.0;
     if (x < 2.0)  return a*x*x*x - 5.0*a*x*x + 8.0*a*x - 4.0*a;
     return 0.0;
 }
 
 int main(void) {
     // indices actually used for 4× upsampling: {0, 4, 8, 12}
     int needed[SCALE_FACTOR] = {0,
                                 WEIGHT_STEPS/SCALE_FACTOR,
                                 2*WEIGHT_STEPS/SCALE_FACTOR,
                                 3*WEIGHT_STEPS/SCALE_FACTOR};
 
     FILE *fp = fopen(OUTPUT_FILE, "w");
     if (!fp) {
         perror("fopen");
         return EXIT_FAILURE;
     }
 
     // Header
     fprintf(fp, "# ix iy w00 w01 w02 w03 w10 w11 w12 w13 w20 w21 w22 w23 w30 w31 w32 w33\n");
 
     // Loop only over needed ix, iy
     for (int iy_idx = 0; iy_idx < SCALE_FACTOR; iy_idx++) {
         int iy = needed[iy_idx];
         double fracY = (double)iy / WEIGHT_STEPS;
         double wy[4];
         for (int j = -1; j <= 2; j++) {
             wy[j+1] = weight_cubic(fracY - j);
         }
         for (int ix_idx = 0; ix_idx < SCALE_FACTOR; ix_idx++) {
             int ix = needed[ix_idx];
             double fracX = (double)ix / WEIGHT_STEPS;
             double wx[4];
             for (int i = -1; i <= 2; i++) {
                 wx[i+1] = weight_cubic(fracX - i);
             }
 
             // Write indices and weights
             fprintf(fp, "%d %d", ix, iy);
             for (int j = 0; j < 4; j++) {
                 for (int i = 0; i < 4; i++) {
                     double w = wx[i] * wy[j];
                     fprintf(fp, " %.12f", w);
                 }
             }
             fprintf(fp, "\n");
         }
     }
 
     fclose(fp);
     printf("Generated %s with %d lines.\n", OUTPUT_FILE, SCALE_FACTOR * SCALE_FACTOR);
     return EXIT_SUCCESS;
 }
 