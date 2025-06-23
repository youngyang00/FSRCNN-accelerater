/*
 * bicubic_ref_reduced.c
 * --------------------------
 * 480x270 크기의 input.bmp 파일을 읽어 픽셀 데이터를 덤프하고,
 * 축소된 2D 가중치 파일을 로드하여 4배 확대 bicubic 보간 후
 * output.bmp 와 픽셀 텍스트를 생성합니다.
 *
 * Compile:
 *   gcc bicubic_ref_reduced.c -lm -o bicubic_ref_reduced
 * Run:
 *   ./bicubic_ref input.bmp bicubic_2d_weights_reduced.txt
 */

 #include <stdio.h>
 #include <stdlib.h>
 #include <stdint.h>
 #include <math.h>
 
 #pragma pack(push,1)
 
 typedef struct { uint16_t type; uint32_t fileSize; uint16_t reserved1, reserved2; uint32_t pixelDataOffset; } BMPFileHeader;
 typedef struct { uint32_t headerSize; int32_t width, height; uint16_t planes, bitCount; uint32_t compression, imageSize; int32_t xPixelsPerMeter, yPixelsPerMeter; uint32_t colorsUsed, importantColors; } BMPInfoHeader;
 
 #pragma pack(pop)
 
 #define SCALE_FACTOR 4.0
 #define WEIGHT_STEPS 16
 
 static inline int clamp(int v, int lo, int hi) { return v<lo?lo:(v>hi?hi:v); }
 
 // W2D filled only for needed ix,iy ∈ {0,4,8,12}
 static double W2D[WEIGHT_STEPS][WEIGHT_STEPS][4][4];
 
 // load reduced 2D weights: only 16 lines
 void load_reduced_weights(const char *path) {
     FILE *f = fopen(path, "r");
     if (!f) { perror(path); exit(EXIT_FAILURE); }
     char line[512];
     // skip header
     if (fgets(line, sizeof(line), f) == NULL) { fclose(f); return; }
     while (fgets(line, sizeof(line), f)) {
         if (line[0] == '#') continue;
         int ix, iy;
         double w[16];
         int cnt = sscanf(line, "%d %d"
                          " %lf %lf %lf %lf"
                          " %lf %lf %lf %lf"
                          " %lf %lf %lf %lf"
                          " %lf %lf %lf %lf",
                          &ix, &iy,
                          &w[0], &w[1], &w[2], &w[3],
                          &w[4], &w[5], &w[6], &w[7],
                          &w[8], &w[9], &w[10], &w[11],
                          &w[12], &w[13], &w[14], &w[15]);
         if (cnt == 18) {
             for (int j = 0; j < 4; j++) {
                 for (int i = 0; i < 4; i++) {
                     W2D[ix][iy][j][i] = w[j*4 + i];
                 }
             }
         }
     }
     fclose(f);
 }
 
 // read BMP pixel data
 uint8_t* read_bmp(const char *path, BMPFileHeader *fh, BMPInfoHeader *ih, int *rowSize) {
     FILE *f = fopen(path, "rb"); if (!f){ perror(path); return NULL; }
     fread(fh, sizeof(*fh), 1, f);
     fread(ih, sizeof(*ih), 1, f);
     int w = ih->width, h = abs(ih->height);
     *rowSize = (w*3 + 3)&~3;
     uint8_t *data = malloc((size_t)(*rowSize)*h);
     fseek(f, fh->pixelDataOffset, SEEK_SET);
     for (int y=0; y<h; y++) fread(data + y*(*rowSize), 1, *rowSize, f);
     fclose(f);
     return data;
 }
 
 // dump pixels
 void dump_pixels(const char *path, uint8_t *data, int w, int h, int rowSize) {
     FILE *f = fopen(path, "w");
     fprintf(f, "# x y R G B\n");
     for (int y=0; y<h; y++) for (int x=0; x<w; x++) {
         uint8_t *p = data + y*rowSize + x*3;
         fprintf(f, "%d %d %02x %02x %02x\n", x, y, p[2], p[1], p[0]);
     }
     fclose(f);
 }
 
 // bicubic resize using precomputed W2D
 uint8_t* bicubic_resize(uint8_t *inData, int width, int height, int rowSize, int *outW, int *outH) {
     *outW = (int)(width * SCALE_FACTOR);
     *outH = (int)(height * SCALE_FACTOR);
     int outRow = (*outW*3 + 3)&~3;
     uint8_t *out = calloc((size_t)outRow * (*outH), 1);
     for (int j=0; j<*outH; j++) {
         for (int i=0; i<*outW; i++) {
             double srcX = i / SCALE_FACTOR, srcY = j / SCALE_FACTOR;
             int baseX = (int)floor(srcX), baseY = (int)floor(srcY);
             double fracX = srcX - baseX, fracY = srcY - baseY;
             int ix = clamp((int)(fracX*WEIGHT_STEPS), 0, WEIGHT_STEPS-1);
             int iy = clamp((int)(fracY*WEIGHT_STEPS), 0, WEIGHT_STEPS-1);
             double (*w)[4] = W2D[ix][iy];
             double accR=0, accG=0, accB=0;
             for (int dy=-1; dy<=2; dy++) for (int dx=-1; dx<=2; dx++) {
                 int sx = clamp(baseX+dx, 0, width-1);
                 int sy = clamp(baseY+dy, 0, height-1);
                 uint8_t *p = inData + sy*rowSize + sx*3;
                 double wt = w[dy+1][dx+1];
                 accR += p[2]*wt; accG += p[1]*wt; accB += p[0]*wt;
             }
             int idx = j*outRow + i*3;
             out[idx+2] = clamp((int)round(accR),0,255);
             out[idx+1] = clamp((int)round(accG),0,255);
             out[idx+0] = clamp((int)round(accB),0,255);
         }
     }
     return out;
 }
 
 // write BMP
 void write_bmp(const char *path, BMPFileHeader fh, BMPInfoHeader ih, uint8_t *data, int w, int h) {
     int row = (w*3+3)&~3;
     ih.width = w; ih.height = h; ih.imageSize = row*h;
     fh.fileSize = ih.imageSize + sizeof(BMPFileHeader) + sizeof(BMPInfoHeader);
     FILE *f = fopen(path, "wb"); fwrite(&fh,sizeof(fh),1,f); fwrite(&ih,sizeof(ih),1,f);
     uint8_t pad[3]={0};
     for (int y=0; y<h; y++) {
         for(int x=0; x<w; x++) fwrite(data + y*row + x*3,1,3,f);
         fwrite(pad,1,row-w*3,f);
     }
     fclose(f);
 }
 
 int main(int argc, char *argv[]) {
     if (argc != 3) {
         fprintf(stderr, "Usage: %s input.bmp weights.txt\n", argv[0]);
         return EXIT_FAILURE;
     }
     const char *inBmp = argv[1], *wtFile = argv[2];
     BMPFileHeader fh; BMPInfoHeader ih;
     int rowSize;
     uint8_t *inData = read_bmp(inBmp, &fh, &ih, &rowSize);
     dump_pixels("input_pixels.txt", inData, ih.width, abs(ih.height), rowSize);
     load_reduced_weights(wtFile);
     int outW, outH;
     uint8_t *outData = bicubic_resize(inData, ih.width, abs(ih.height), rowSize, &outW, &outH);
     dump_pixels("output_pixels.txt", outData, outW, outH, (outW*3+3)&~3);
     write_bmp("output.bmp", fh, ih, outData, outW, outH);
     free(inData); free(outData);
     printf("Resized %dx%d -> %dx%d and saved output.bmp\n", ih.width, abs(ih.height), outW, outH);
     return EXIT_SUCCESS;
 }
 