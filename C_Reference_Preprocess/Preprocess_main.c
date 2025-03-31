#include "Preprocess.h"
#include <stdio.h>
#include <stdlib.h>
#ifdef _WIN32
    #include <direct.h>
#else
    #include <sys/stat.h>
    #include <sys/types.h>
#endif

int main(int argc, char *argv[]) {
    // "results" 폴더가 없으면 생성 (윈도우와 유닉스 계열 모두 지원)
#ifdef _WIN32
    _mkdir("results");
#else
    mkdir("results", 0777);
#endif

    // 기본 출력 파일 경로를 "results" 폴더 하위로 지정
    const char *inputBmp   = (argc > 1) ? argv[1] : "input.bmp";
    const char *ycbcrTxt   = (argc > 2) ? argv[2] : "results/ycbcr_output.txt";
    const char *xTxt       = (argc > 3) ? argv[3] : "results/x_output.txt";
    const char *headerBin  = (argc > 4) ? argv[4] : "results/bmp_header.bin";
    const char *pixelTxt   = (argc > 5) ? argv[5] : "results/pixel_data.txt";

    int width, height;
    float *x = preprocess(inputBmp, ycbcrTxt, xTxt, headerBin, pixelTxt, &width, &height);
    if (!x) {
        return 1;
    }

    printf("x 채널의 일부 값:\n");
    for (int i = 0; i < 10 && i < width * height; i++) {
        printf("%.6f ", x[i]);
    }
    printf("\n");

    free(x);
    return 0;
}
