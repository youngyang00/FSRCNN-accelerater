#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// BMP 헤더 구조체
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

// BMP 파일 읽기
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
    BMP 파일의 DIB 헤더에서 biHeight 필드는 이미지의 높이를 나타내는데, 이 값이 양수인지 음수인지에 따라 이미지 데이터의 저장 순서가 달라집니다.

    양수인 경우: 이미지 데이터가 bottom-up 방식으로 저장됩니다. 즉, 파일의 처음에는 이미지의 맨 아래 행이 저장되고, 마지막에 맨 위 행이 저장됩니다.
    음수인 경우: 이미지 데이터가 top-down 방식으로 저장됩니다. 즉, 파일의 처음에 이미지의 맨 위 행이 저장되고, 마지막에 맨 아래 행이 저장됩니다.
    하지만, 실제로 우리가 필요한 것은 이미지의 **높이(행의 수)**이지, 데이터가 저장된 순서가 아닙니다.
    따라서, biHeight가 음수일 경우에도 그 절댓값(즉, -biHeight)을 사용하여 정확한 행의 수를 구합니다.
    */

    fseek(fp, bmpHeader.bfOffBits, SEEK_SET);/*
    는 파일 포인터를 파일의 시작(SEEK_SET)에서부터 
    bmpHeader.bfOffBits 바이트만큼 이동한 위치로 설정하는 것을 의미합니다.
    bmpHeader.bfOffBIts: 헤더를 제외한 실제 pixel데이터가 시작되는 지점.
    */

    int row_padded = ((*width * 3 + 3) / 4) * 4;
    /*
    BMP 파일 포맷은 각 행(row)의 바이트 수가 4바이트 배수가 되어야 한다는 규칙이 있습니다. 
    이 규칙은 다음과 같은 이유에서 padding(패딩)을 추가하게 만듭니다

    예를 들어, 24비트 BMP 이미지에서 한 픽셀은 3바이트를 차지합니다. 
    만약 이미지의 너비가 5픽셀이라면 한 행의 실제 데이터는 5 × 3 = 15바이트가 됩니다. 
    하지만 15는 4바이트의 배수가 아니므로, 파일에서는 이 행의 크기를 16바이트(가장 가까운 4바이트 배수)로 맞추기 위해 
    1바이트의 패딩을 추가합니다.

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
    /*예시: 12비트 BMP 이미지 (너비 3픽셀, 높이 1픽셀)
    픽셀 0: B=10, G=20, R=30
    픽셀 1: B=40, G=50, R=60
    픽셀 2: B=70, G=80, R=90
    padding: 0, 0, 0

    [10, 20, 30, 40, 50, 60, 70, 80, 90, 0, 0, 0] 의 형태 이므로
    uint8_t *data = (uint8_t*)malloc(dataSize) 에 data로 저장 후 return

    */
}

// BGR → YCbCr 변환
float* convertBGRtoYCbCr(const uint8_t *bgrData, int width, int height) {
    float *ycbcr = (float*)malloc(width * height * 3 * sizeof(float));
    if (!ycbcr) {
        fprintf(stderr, "메모리 할당 실패\n");
        return NULL;
    }

    int row_padded = ((width * 3 + 3) / 4) * 4;

    for (int i = 0; i < height; i++) {
        int bmp_row = height - 1 - i;
        for (int j = 0; j < width; j++) {
            int index_bgr = bmp_row * row_padded + j * 3;
            /*bmp_row * row_padded는 
            해당 행이 파일 내에서 시작하는 바이트 오프셋을 의미합니다.
            j * 3은 해당 행에서 j번째 픽셀의 시작 바이트 오프셋(픽셀당 3바이트)이 됩니다.*/
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

// YCbCr 데이터를 TXT 파일로 저장
int saveYCbCrToTxt(const char *filename, const float *ycbcrData, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패: %s\n", filename);
        return -1;
    }

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int idx = (i * width + j) * 3;
            fprintf(fp, "%.3f %.3f %.3f\n", ycbcrData[idx], ycbcrData[idx + 1], ycbcrData[idx + 2]);
        }
    }

    fclose(fp);
    return 0;
}

// VS Code에서 실행할 수 있도록 기본값 설정
int main(int argc, char *argv[]) {
    const char *inputBmp = (argc > 1) ? argv[1] : "input.bmp";
    const char *outputTxt = (argc > 2) ? argv[2] : "output.txt";

    int width, height;
    uint8_t *bgrData = loadBMP(inputBmp, &width, &height);
    if (!bgrData) return 1;

    printf("이미지 크기: %d x %d\n", width, height);

    float *ycbcrData = convertBGRtoYCbCr(bgrData, width, height);
    free(bgrData);
    if (!ycbcrData) return 1;

    if (saveYCbCrToTxt(outputTxt, ycbcrData, width, height) == 0) {
        printf("YCbCr 데이터가 '%s'에 저장되었습니다.\n", outputTxt);
    } else {
        fprintf(stderr, "YCbCr 데이터 저장 실패\n");
    }

    free(ycbcrData);
    return 0;
}
