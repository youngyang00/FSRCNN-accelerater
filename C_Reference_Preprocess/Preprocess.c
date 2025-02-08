#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

// BMP 헤더 구조체 (코드1)
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

// BMP 파일 읽기 (코드1)
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

// BGR → YCbCr 변환 (코드1)
float* convertBGRtoYCbCr(const uint8_t *bgrData, int width, int height) {
    float *ycbcr = (float*)malloc(width * height * 3 * sizeof(float));
    if (!ycbcr) {
        fprintf(stderr, "메모리 할당 실패\n");
        return NULL;
    }

    int row_padded = ((width * 3 + 3) / 4) * 4;

    // BMP 파일은 bottom-up 순서이므로, 행 순서를 뒤집어 처리
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

            // YCbCr 변환 공식 (코드1)
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

// YCbCr 데이터를 TXT 파일로 저장 (코드1)
int saveYCbCrToTxt(const char *filename, const float *ycbcrData, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패: %s\n", filename);
        return -1;
    }

    // 소수점 6자리로 출력하도록 수정 (%.6f)
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int idx = (i * width + j) * 3;
            fprintf(fp, "%.6f %.6f %.6f\n", ycbcrData[idx], ycbcrData[idx + 1], ycbcrData[idx + 2]);
        }
    }

    fclose(fp);
    return 0;
}

// x (Y 채널) 데이터를 TXT 파일로 저장하는 함수
int saveXToTxt(const char *filename, const float *x, int width, int height) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        fprintf(stderr, "출력 파일 열기 실패 (x): %s\n", filename);
        return -1;
    }

    // 소수점 6자리로 출력 (%.6f)
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
    preprocess 함수 (Python의 preprocess와 유사한 기능)
    - BMP 파일을 읽어 BGR 데이터를 가져옴
    - BGR 데이터를 YCbCr로 변환
    - Y 채널만 추출하여 0~1 범위로 정규화한 배열 x를 생성
    - YCbCr 데이터와 x 데이터를 각각 TXT 파일로 저장 (검증용)
    - x 데이터를 반환함
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

    // Y 채널(x)만 추출하여 0~1 범위로 정규화 (Y 값은 ycbcrData의 매 픽셀 3개 중 첫 번째 요소)
    float *x = (float*)malloc((*width) * (*height) * sizeof(float));
    if (!x) {
        fprintf(stderr, "메모리 할당 실패 (x 배열)\n");
        free(ycbcrData);
        return NULL;
    }
    for (int i = 0; i < (*width) * (*height); i++) {
        x[i] = ycbcrData[i * 3] / 255.0f;
    }

    // YCbCr 데이터를 TXT 파일로 저장하여 검증
    if (saveYCbCrToTxt(ycbcrTxt, ycbcrData, *width, *height) == 0) {
        printf("YCbCr 데이터가 '%s'에 저장되었습니다.\n", ycbcrTxt);
    } else {
        fprintf(stderr, "YCbCr 데이터 저장 실패\n");
    }

    // x 데이터를 TXT 파일로 저장
    if (saveXToTxt(xTxt, x, *width, *height) == 0) {
        printf("정규화된 Y 채널(x) 데이터가 '%s'에 저장되었습니다.\n", xTxt);
    } else {
        fprintf(stderr, "x 데이터 저장 실패\n");
    }

    // ycbcrData는 메모리 누수를 막기 위해 해제합니다.
    free(ycbcrData);

    return x; // 호출한 쪽에서 반환받은 x를 사용 후 free() 처리 필요
}

// 메인 함수: 인자로 입력 BMP 파일, YCbCr 출력 TXT 파일, x 출력 TXT 파일 이름을 받을 수 있도록 함
int main(int argc, char *argv[]) {
    const char *inputBmp = (argc > 1) ? argv[1] : "input.bmp";
    const char *ycbcrTxt = (argc > 2) ? argv[2] : "ycbcr_output.txt";
    const char *xTxt     = (argc > 3) ? argv[3] : "x_output.txt";

    int width, height;
    float *x = preprocess(inputBmp, ycbcrTxt, xTxt, &width, &height);
    if (!x) {
        return 1;
    }

    // x 데이터를 활용하는 추가 연산을 수행할 수 있음.
    // 예를 들어, x 데이터를 확인하기 위해 몇몇 값을 출력합니다.
    printf("x 채널의 일부 값:\n");
    for (int i = 0; i < 10 && i < width * height; i++) {
        printf("%.6f ", x[i]);
    }
    printf("\n");

    free(x);
    return 0;
}
