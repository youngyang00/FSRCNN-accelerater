#ifndef PREPROCESS_H
#define PREPROCESS_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

// BMP header structures (Code 1)
#pragma pack(push, 1)
typedef struct {
    uint16_t bfType;
    uint32_t bfSize;
    uint16_t bfReserved1;
    uint16_t bfReserved2;
    uint32_t bfOffBits; 
} BMPHeader;

typedef struct {
    uint32_t biSize;
    int32_t  biWidth;
    int32_t  biHeight;
    uint16_t biPlanes;
    uint16_t biBitCount;
    uint32_t biCompression;
    uint32_t biSizeImage;
    int32_t  biXPelsPerMeter;
    int32_t  biYPelsPerMeter;
    uint32_t biClrUsed;
    uint32_t biClrImportant;
} DIBHeader;
#pragma pack(pop)

// Save BMP header data to a binary file
// 헤더 정보를 바이너리 형식으로 저장하여, 이후 BMP 파일 복원에 사용할 수 있습니다.
int saveBMPHeaderBinary(const char *filename, const BMPHeader *bmpHeader, const DIBHeader *dibHeader) {
    FILE *fp = fopen(filename, "wb");
    if (!fp) {
        fprintf(stderr, "바이너리 출력 파일 열기 실패: %s\n", filename);
        return -1;
    }
    fwrite(bmpHeader, sizeof(BMPHeader), 1, fp);
    fwrite(dibHeader, sizeof(DIBHeader), 1, fp);
    fclose(fp);
    return 0;
}

// Save pixel data to a TXT file (디스플레이 순서로 저장)
int savePixelDataToTxt(const char *filename, const uint8_t *pixelData, int row_padded, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패: %s\n", filename);
        return -1;
    }
    // 행을 역순으로 순회하여 top row부터 출력
    for (int i = height - 1; i >= 0; i--) {
        for (int j = 0; j < width; j++) {
            int idx = i * row_padded + j * 3;
            // BMP는 픽셀 데이터가 B, G, R 순서로 저장되므로, 출력 시 R, G, B 순서로 변경합니다.
            fprintf(fp, "(%3u, %3u, %3u) ", pixelData[idx + 2], pixelData[idx + 1], pixelData[idx]);
        }
        fprintf(fp, "\n");
    }
    fclose(fp);
    return 0;
}


// Load BMP file (Code 1)
// header 정보를 출력 매개변수로 전달합니다.
uint8_t* loadBMP(const char *filename, int *width, int *height, BMPHeader *bmpHeaderOut, DIBHeader *dibHeaderOut) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) {
        fprintf(stderr, "파일 열기 실패: %s\n", filename);
        return NULL;
    }

    BMPHeader bmpHeader;
    DIBHeader dibHeader;

    fread(&bmpHeader, sizeof(BMPHeader), 1, fp);
    fread(&dibHeader, sizeof(DIBHeader), 1, fp);

    if (bmpHeader.bfType != 0x4D42) {
        fprintf(stderr, "유효한 BMP 파일이 아닙니다.\n");
        fclose(fp);
        return NULL;
    }
    
    if (bmpHeaderOut) *bmpHeaderOut = bmpHeader;
    if (dibHeaderOut) *dibHeaderOut = dibHeader;

    *width = dibHeader.biWidth;
    *height = (dibHeader.biHeight > 0) ? dibHeader.biHeight : -dibHeader.biHeight;

    fseek(fp, bmpHeader.bfOffBits, SEEK_SET);
    int row_padded = ((*width * 3 + 3) / 4) * 4;
    int dataSize = row_padded * (*height);
    uint8_t *data = (uint8_t*)malloc(dataSize);
    if (!data) {
        fprintf(stderr, "메모리 할당 실패\n");
        fclose(fp);
        return NULL;
    }
    fread(data, 1, dataSize, fp);
    fclose(fp);
    return data;
}

// Convert BGR to YCbCr (Code 1)
float* convertBGRtoYCbCr(const uint8_t *bgrData, int width, int height) {
    float *ycbcr = (float*)malloc(width * height * 3 * sizeof(float));
    if (!ycbcr) {
        fprintf(stderr, "메모리 할당 실패\n");
        return NULL;
    }

    int row_padded = ((width * 3 + 3) / 4) * 4;
    // BMP 파일은 bottom-up 방식이므로 역순으로 처리합니다.
    for (int i = 0; i < height; i++) {
        int bmp_row = height - 1 - i;
        for (int j = 0; j < width; j++) {
            int index_bgr = bmp_row * row_padded + j * 3;
            uint8_t b = bgrData[index_bgr + 0];
            uint8_t g = bgrData[index_bgr + 1];
            uint8_t r = bgrData[index_bgr + 2];

            float rf = (float)r;
            float gf = (float)g;
            float bf = (float)b;

            float Y  = 16.0f  + (64.738f  * rf + 129.057f * gf + 25.064f  * bf) / 256.0f;
            float Cb = 128.0f + (-37.945f * rf - 74.494f  * gf + 112.439f * bf) / 256.0f;
            float Cr = 128.0f + (112.439f * rf - 94.154f  * gf - 18.285f  * bf) / 256.0f;

            int idx = (i * width + j) * 3;
            ycbcr[idx + 0] = Y;
            ycbcr[idx + 1] = Cb;
            ycbcr[idx + 2] = Cr;
        }
    }
    return ycbcr;
}

// Save YCbCr data to a TXT file (Code 1)
int saveYCbCrToTxt(const char *filename, const float *ycbcrData, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패: %s\n", filename);
        return -1;
    }
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int idx = (i * width + j) * 3;
            fprintf(fp, "%.6f %.6f %.6f\n", ycbcrData[idx], ycbcrData[idx + 1], ycbcrData[idx + 2]);
        }
    }
    fclose(fp);
    return 0;
}

// Save x (Y channel) data to a TXT file
int saveXToTxt(const char *filename, const float *x, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패 (x): %s\n", filename);
        return -1;
    }
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int idx = i * width + j;
            fprintf(fp, "%.6f\n", x[idx]);
        }
    }
    fclose(fp);
    return 0;
}

/*
    The preprocess function (similar to the Python preprocess)
    - Reads the BMP file to obtain BGR data.
    - Converts the BGR data to YCbCr.
    - Extracts only the Y channel and normalizes it to a range of 0 to 1, creating the array x.
    - Saves both the YCbCr data and x data into separate TXT files (for verification).
    - Additionally, saves the BMP header (in binary form) and pixel data to files as intermediate outputs.
    - Returns the x data.
*/
float* preprocess(const char *inputBmp, const char *ycbcrTxt, const char *xTxt, const char *headerBin, const char *pixelDataTxt, int *width, int *height) {
    BMPHeader bmpHeader;
    DIBHeader dibHeader;
    uint8_t *bgrData = loadBMP(inputBmp, width, height, &bmpHeader, &dibHeader);
    if (!bgrData) {
        return NULL;
    }
    printf("이미지 크기: %d x %d\n", *width, *height);

    if (saveBMPHeaderBinary(headerBin, &bmpHeader, &dibHeader) == 0) {
        printf("BMP header 바이너리 데이터가 '%s'에 저장되었습니다.\n", headerBin);
    } else {
        fprintf(stderr, "BMP header 바이너리 데이터 저장 실패\n");
    }

    int row_padded = ((*width * 3 + 3) / 4) * 4;
    if (savePixelDataToTxt(pixelDataTxt, bgrData, row_padded, *width, *height) == 0) {
        printf("Pixel 데이터가 '%s'에 저장되었습니다.\n", pixelDataTxt);
    } else {
        fprintf(stderr, "Pixel 데이터 저장 실패\n");
    }

    float *ycbcrData = convertBGRtoYCbCr(bgrData, *width, *height);
    free(bgrData);
    if (!ycbcrData) {
        return NULL;
    }

    float *x = (float*)malloc((*width) * (*height) * sizeof(float));
    if (!x) {
        fprintf(stderr, "메모리 할당 실패 (x 배열)\n");
        free(ycbcrData);
        return NULL;
    }
    for (int i = 0; i < (*width) * (*height); i++) {
        x[i] = ycbcrData[i * 3] / 255.0f;
    }

    if (saveYCbCrToTxt(ycbcrTxt, ycbcrData, *width, *height) == 0) {
        printf("YCbCr 데이터가 '%s'에 저장되었습니다.\n", ycbcrTxt);
    } else {
        fprintf(stderr, "YCbCr 데이터 저장 실패\n");
    }

    if (saveXToTxt(xTxt, x, *width, *height) == 0) {
        printf("정규화된 Y 채널(x) 데이터가 '%s'에 저장되었습니다.\n", xTxt);
    } else {
        fprintf(stderr, "x 데이터 저장 실패\n");
    }

    free(ycbcrData);
    return x;
}

#endif // PREPROCESS_H
