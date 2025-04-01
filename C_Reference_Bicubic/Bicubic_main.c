#include "Bicubic.h"

int main(int argc, char **argv) {
    const char *inputFilename = "input.bmp";
    const char *outputFilename = "output.bmp";
    
    BITMAPFILEHEADER fileHeader;
    BITMAPINFOHEADER infoHeader;
    uint8_t *inPixels = NULL;
    
    // BMP 파일에서 해상도를 자동 인식합니다.
    if (!read_bmp(inputFilename, &fileHeader, &infoHeader, &inPixels)) {
        fprintf(stderr, "BMP 파일 읽기 실패\n");
        return 1;
    }
    
    // input.bmp의 해상도는 infoHeader에서 자동 인식됨
    int inWidth = infoHeader.biWidth;
    int inHeight = infoHeader.biHeight;
    int outWidth = inWidth * 4;
    int outHeight = inHeight * 4;
    
    // 디버깅: 입력 헤더와 픽셀 데이터 덤프
    dump_header("input_header.txt", &fileHeader, &infoHeader);
    dump_pixels("input_pixel.txt", inPixels, inWidth, inHeight);
    
    // 출력 이미지 버퍼 할당 (24비트)
    uint8_t *outPixels = (uint8_t*) malloc(outWidth * outHeight * 3);
    if (!outPixels) {
        fprintf(stderr, "메모리 할당 에러\n");
        free(inPixels);
        return 1;
    }
    
    // Bicubic 4배 스케일링 수행
    bicubic_resize(inPixels, inWidth, inHeight, outPixels, outWidth, outHeight);
    
    // 출력 BMP 헤더 재구성
    BITMAPFILEHEADER outFileHeader = fileHeader;
    BITMAPINFOHEADER outInfoHeader = infoHeader;
    outInfoHeader.biWidth = outWidth;
    outInfoHeader.biHeight = outHeight;
    int outRowSize = ((outWidth * 3 + 3) / 4) * 4;
    outInfoHeader.biSizeImage = outRowSize * outHeight;
    outFileHeader.bfOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER);
    outFileHeader.bfSize = outFileHeader.bfOffBits + outInfoHeader.biSizeImage;
    
    // 디버깅: 출력 헤더와 픽셀 덤프
    dump_header("output_header.txt", &outFileHeader, &outInfoHeader);
    dump_pixels("output_pixel.txt", outPixels, outWidth, outHeight);
    
    // 출력 BMP 파일 저장
    if (!write_bmp(outputFilename, &outFileHeader, &outInfoHeader, outPixels)) {
        fprintf(stderr, "BMP 파일 쓰기 실패\n");
        free(inPixels);
        free(outPixels);
        return 1;
    }
    
    free(inPixels);
    free(outPixels);
    printf("Bicubic 4x 스케일링 완료. 출력 파일: %s\n", outputFilename);
    return 0;
}
