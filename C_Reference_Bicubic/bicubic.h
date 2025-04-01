#ifndef BICUBIC_H
#define BICUBIC_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>

// BMP 헤더 구조체 (패킹)
#pragma pack(push, 1)
typedef struct {
    uint16_t bfType;      // "BM" = 0x4D42
    uint32_t bfSize;      // 파일 전체 크기
    uint16_t bfReserved1;
    uint16_t bfReserved2;
    uint32_t bfOffBits;   // 픽셀 데이터 시작 오프셋
} BITMAPFILEHEADER;

typedef struct {
    uint32_t biSize;          // 정보 헤더 크기 (40)
    int32_t  biWidth;         // 이미지 너비
    int32_t  biHeight;        // 이미지 높이 (바텀업 저장 방식)
    uint16_t biPlanes;        // 항상 1
    uint16_t biBitCount;      // 비트 수 (24)
    uint32_t biCompression;   // 압축 방식 (0: 없음)
    uint32_t biSizeImage;     // 이미지 데이터 크기
    int32_t  biXPelsPerMeter;
    int32_t  biYPelsPerMeter;
    uint32_t biClrUsed;
    uint32_t biClrImportant;
} BITMAPINFOHEADER;
#pragma pack(pop)

// Bicubic 보간 커널 (a = -0.5)
static double bicubic_filter(double x) {
    const double a = -0.5;
    if(x < 0) x = -x;
    if(x < 1)
        return (a + 2) * pow(x, 3) - (a + 3) * pow(x, 2) + 1;
    else if(x < 2)
        return a * pow(x, 3) - 5 * a * pow(x, 2) + 8 * a * x - 4 * a;
    else
        return 0.0;
}

// 클램핑 함수
static int clamp(int val, int low, int high) {
    if(val < low) return low;
    if(val > high) return high;
    return val;
}

// BMP 헤더와 픽셀 데이터를 텍스트 파일로 덤프 (디버깅용)
static void dump_header(const char *filename, const BITMAPFILEHEADER *fileHeader, const BITMAPINFOHEADER *infoHeader) {
    FILE *fp = fopen(filename, "w");
    if (!fp) return;
    fprintf(fp, "bfType: 0x%X\n", fileHeader->bfType);
    fprintf(fp, "bfSize: %u\n", fileHeader->bfSize);
    fprintf(fp, "bfReserved1: %u\n", fileHeader->bfReserved1);
    fprintf(fp, "bfReserved2: %u\n", fileHeader->bfReserved2);
    fprintf(fp, "bfOffBits: %u\n", fileHeader->bfOffBits);
    fprintf(fp, "biSize: %u\n", infoHeader->biSize);
    fprintf(fp, "biWidth: %d\n", infoHeader->biWidth);
    fprintf(fp, "biHeight: %d\n", infoHeader->biHeight);
    fprintf(fp, "biPlanes: %u\n", infoHeader->biPlanes);
    fprintf(fp, "biBitCount: %u\n", infoHeader->biBitCount);
    fprintf(fp, "biCompression: %u\n", infoHeader->biCompression);
    fprintf(fp, "biSizeImage: %u\n", infoHeader->biSizeImage);
    fprintf(fp, "biXPelsPerMeter: %d\n", infoHeader->biXPelsPerMeter);
    fprintf(fp, "biYPelsPerMeter: %d\n", infoHeader->biYPelsPerMeter);
    fprintf(fp, "biClrUsed: %u\n", infoHeader->biClrUsed);
    fprintf(fp, "biClrImportant: %u\n", infoHeader->biClrImportant);
    fclose(fp);
}

static void dump_pixels(const char *filename, uint8_t *pixels, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) return;
    // BMP 파일은 바텀업 저장되므로 위에서부터 출력하려면 아래쪽부터 읽음.
    for (int i = height - 1; i >= 0; i--) {
        for (int j = 0; j < width; j++) {
            uint8_t *p = pixels + (i * width + j) * 3;
            // BMP는 BGR 순서이므로 R, G, B 순으로 출력
            fprintf(fp, "(%3d,%3d,%3d) ", p[2], p[1], p[0]);
        }
        fprintf(fp, "\n");
    }
    fclose(fp);
}

// 24비트 비압축 BMP 파일 읽기
static int read_bmp(const char *filename, BITMAPFILEHEADER *fileHeader, BITMAPINFOHEADER *infoHeader, uint8_t **pixelData) {
    FILE *fp = fopen(filename, "rb");
    if(!fp) return 0;
    fread(fileHeader, sizeof(BITMAPFILEHEADER), 1, fp);
    fread(infoHeader, sizeof(BITMAPINFOHEADER), 1, fp);

    // 24비트, 압축 없음 확인
    if(infoHeader->biBitCount != 24 || infoHeader->biCompression != 0) {
        fclose(fp);
        return 0;
    }
    int width = infoHeader->biWidth;
    int height = infoHeader->biHeight;
    int rowSize = ((width * 3 + 3) / 4) * 4;
    int dataSize = rowSize * height;
    *pixelData = (uint8_t*) malloc(dataSize);
    if(!(*pixelData)) {
        fclose(fp);
        return 0;
    }
    fseek(fp, fileHeader->bfOffBits, SEEK_SET);
    fread(*pixelData, 1, dataSize, fp);
    fclose(fp);
    return 1;
}

// 24비트 BMP 파일 쓰기
static int write_bmp(const char *filename, const BITMAPFILEHEADER *fileHeader, const BITMAPINFOHEADER *infoHeader, uint8_t *pixelData) {
    FILE *fp = fopen(filename, "wb");
    if(!fp) return 0;
    fwrite(fileHeader, sizeof(BITMAPFILEHEADER), 1, fp);
    fwrite(infoHeader, sizeof(BITMAPINFOHEADER), 1, fp);
    int width = infoHeader->biWidth;
    int height = infoHeader->biHeight;
    int rowSize = ((width * 3 + 3) / 4) * 4;
    for (int i = height - 1; i >= 0; i--) {
        fwrite(pixelData + i * width * 3, 3, width, fp);
        int padding = rowSize - width * 3;
        for (int j = 0; j < padding; j++) {
            fputc(0, fp);
        }
    }
    fclose(fp);
    return 1;
}

// Bicubic 보간을 이용한 4배 스케일링 (입력 해상도는 파일에서 자동 인식)
static void bicubic_resize(uint8_t *inPixels, int inWidth, int inHeight,
                           uint8_t *outPixels, int outWidth, int outHeight)
{
    double scale_x = (double) inWidth / outWidth;
    double scale_y = (double) inHeight / outHeight;
    for (int y = 0; y < outHeight; y++) {
        // 출력 캔버스의 y 좌표를 반전하여 계산 (원본 BMP의 바텀업 저장 방식 보정)
        double src_y = ((outHeight - y - 1) + 0.5) * scale_y - 0.5;
        int y_int = (int) floor(src_y);
        double y_frac = src_y - y_int;
        double w_y[4];
        for (int m = -1; m <= 2; m++) {
            w_y[m+1] = bicubic_filter(m - y_frac);
        }
        for (int x = 0; x < outWidth; x++) {
            double src_x = (x + 0.5) * scale_x - 0.5;
            int x_int = (int) floor(src_x);
            double x_frac = src_x - x_int;
            double w_x[4];
            for (int n = -1; n <= 2; n++) {
                w_x[n+1] = bicubic_filter(n - x_frac);
            }
            double sum[3] = {0, 0, 0};
            double total_weight = 0;
            for (int m = -1; m <= 2; m++) {
                int src_y_index = clamp(y_int + m, 0, inHeight - 1);
                for (int n = -1; n <= 2; n++) {
                    int src_x_index = clamp(x_int + n, 0, inWidth - 1);
                    double weight = w_y[m+1] * w_x[n+1];
                    total_weight += weight;
                    uint8_t *pixel = inPixels + (src_y_index * inWidth + src_x_index) * 3;
                    sum[0] += pixel[0] * weight;
                    sum[1] += pixel[1] * weight;
                    sum[2] += pixel[2] * weight;
                }
            }
            uint8_t *outPixel = outPixels + (y * outWidth + x) * 3;
            outPixel[0] = (uint8_t) clamp((int) round(sum[0] / total_weight), 0, 255);
            outPixel[1] = (uint8_t) clamp((int) round(sum[1] / total_weight), 0, 255);
            outPixel[2] = (uint8_t) clamp((int) round(sum[2] / total_weight), 0, 255);
        }
    }
}

#endif  // BICUBIC_H
