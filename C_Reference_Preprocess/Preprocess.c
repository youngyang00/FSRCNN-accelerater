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

// Load BMP file (Code 1)
uint8_t* loadBMP(const char *filename, int *width, int *height) {
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

    *width = dibHeader.biWidth;
    *height = (dibHeader.biHeight > 0) ? dibHeader.biHeight : -dibHeader.biHeight;
    /*
    In the DIB header of a BMP file, the biHeight field represents the image height.
    The sign of this value indicates the order in which the image data is stored.

    If positive: the image data is stored in a bottom-up order (i.e., the first row in the file is the bottom row, and the last is the top).
    If negative: the image data is stored in a top-down order (i.e., the first row in the file is the top row, and the last is the bottom).
    However, what we need is the number of rows (the absolute height), so if biHeight is negative, we use its absolute value (-biHeight).
    */

    fseek(fp, bmpHeader.bfOffBits, SEEK_SET);
    /*
    This sets the file pointer to the position starting from the beginning (SEEK_SET)
    offset by bmpHeader.bfOffBits bytes.
    bmpHeader.bfOffBits indicates where the actual pixel data (excluding headers) begins.
    */

    int row_padded = ((*width * 3 + 3) / 4) * 4;
    /*
    The BMP file format requires that each row's byte count is a multiple of 4.
    For example, in a 24-bit BMP image each pixel occupies 3 bytes.
    If the image width is 5 pixels, the actual data is 5 × 3 = 15 bytes.
    Since 15 is not a multiple of 4, the row is padded to 16 bytes (the nearest multiple of 4).
    */
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
    /* Example: 24-bit BMP image (width 3 pixels, height 1 pixel)
       Pixel 0: B=10, G=20, R=30
       Pixel 1: B=40, G=50, R=60
       Pixel 2: B=70, G=80, R=90
       Padding: 0, 0, 0

       The data is stored in memory as:
       [10, 20, 30, 40, 50, 60, 70, 80, 90, 0, 0, 0]
       after allocating uint8_t *data = (uint8_t*)malloc(dataSize) and reading from the file.
    */
}

// Convert BGR to YCbCr (Code 1)
float* convertBGRtoYCbCr(const uint8_t *bgrData, int width, int height) {
    float *ycbcr = (float*)malloc(width * height * 3 * sizeof(float));
    if (!ycbcr) {
        fprintf(stderr, "메모리 할당 실패\n");
        return NULL;
    }

    int row_padded = ((width * 3 + 3) / 4) * 4;

    // Since BMP files are stored in bottom-up order, process the rows in reverse
    for (int i = 0; i < height; i++) {
        int bmp_row = height - 1 - i;
        for (int j = 0; j < width; j++) {
            int index_bgr = bmp_row * row_padded + j * 3;
            /* bmp_row * row_padded represents the byte offset where the row begins in the file.
               j * 3 is the byte offset for the j-th pixel in that row (each pixel occupies 3 bytes).
            */
            uint8_t b = bgrData[index_bgr + 0];
            uint8_t g = bgrData[index_bgr + 1];
            uint8_t r = bgrData[index_bgr + 2];

            float rf = (float)r;
            float gf = (float)g;
            float bf = (float)b;

            // YCbCr conversion formula (Code 1)
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

    // Modify to print with 6 decimal places (%.6f)
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int idx = (i * width + j) * 3;
            fprintf(fp, "%.6f %.6f %.6f\n", ycbcrData[idx], ycbcrData[idx + 1], ycbcrData[idx + 2]);
        }
    }

    fclose(fp);
    return 0;
}

// Function to save x (Y channel) data to a TXT file
int saveXToTxt(const char *filename, const float *x, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패 (x): %s\n", filename);
        return -1;
    }

    // Print with 6 decimal places (%.6f)
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
    - Returns the x data.
*/
float* preprocess(const char *inputBmp, const char *ycbcrTxt, const char *xTxt, int *width, int *height) {
    uint8_t *bgrData = loadBMP(inputBmp, width, height);
    if (!bgrData) {
        return NULL;
    }
    printf("이미지 크기: %d x %d\n", *width, *height);

    float *ycbcrData = convertBGRtoYCbCr(bgrData, *width, *height);
    free(bgrData);
    if (!ycbcrData) {
        return NULL;
    }

    // Extract only the Y channel (x) and normalize it to a range of 0 to 1
    // (The Y value is the first of the three values for each pixel in ycbcrData)
    float *x = (float*)malloc((*width) * (*height) * sizeof(float));
    if (!x) {
        fprintf(stderr, "메모리 할당 실패 (x 배열)\n");
        free(ycbcrData);
        return NULL;
    }
    for (int i = 0; i < (*width) * (*height); i++) {
        x[i] = ycbcrData[i * 3] / 255.0f;
    }

    // Save YCbCr data to a TXT file for verification
    if (saveYCbCrToTxt(ycbcrTxt, ycbcrData, *width, *height) == 0) {
        printf("YCbCr 데이터가 '%s'에 저장되었습니다.\n", ycbcrTxt);
    } else {
        fprintf(stderr, "YCbCr 데이터 저장 실패\n");
    }

    // Save x data to a TXT file
    if (saveXToTxt(xTxt, x, *width, *height) == 0) {
        printf("정규화된 Y 채널(x) 데이터가 '%s'에 저장되었습니다.\n", xTxt);
    } else {
        fprintf(stderr, "x 데이터 저장 실패\n");
    }

    // Free ycbcrData to prevent memory leaks.
    free(ycbcrData);

    return x; // The caller is responsible for freeing the returned x after use.
}

// Main function: allows specifying the input BMP file, output TXT file for YCbCr, and output TXT file for x as command line arguments
int main(int argc, char *argv[]) {
    const char *inputBmp = (argc > 1) ? argv[1] : "input.bmp";
    const char *ycbcrTxt = (argc > 2) ? argv[2] : "ycbcr_output.txt";
    const char *xTxt     = (argc > 3) ? argv[3] : "x_output.txt";

    int width, height;
    float *x = preprocess(inputBmp, ycbcrTxt, xTxt, &width, &height);
    if (!x) {
        return 1;
    }

    // Additional operations using the x data can be performed here.
    // For example, printing some values to inspect the x data.
    printf("x 채널의 일부 값:\n");
    for (int i = 0; i < 10 && i < width * height; i++) {
        printf("%.6f ", x[i]);
    }
    printf("\n");

    free(x);
    return 0;
}
