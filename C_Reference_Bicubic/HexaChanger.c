#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <math.h>

int main(void) {
    FILE *fin = fopen("bicubic_2d_weights_reduced.txt", "r");
    if (!fin) {
        perror("입력 파일 열기 실패");
        return EXIT_FAILURE;
    }

    FILE *fout = fopen("bicubic_weights_hex.txt", "w");
    if (!fout) {
        perror("출력 파일 열기 실패");
        fclose(fin);
        return EXIT_FAILURE;
    }

    char line[256];
    // 헤더 라인 스킵
    fgets(line, sizeof(line), fin);

    // 출력 파일에 C 타입 및 배열 선언 쓰기
    fprintf(fout,
        "typedef struct {\n"
        "    uint8_t ix;\n"
        "    uint8_t iy;\n"
        "    uint16_t w[4][4];\n"
        "} bicubic_t;\n\n"
        "static const bicubic_t bicubic_weights[] = {\n"
    );

    while (fgets(line, sizeof(line), fin)) {
        int ix, iy;
        double w[4][4];
        int n = sscanf(line,
            "%d %d "
            "%lf %lf %lf %lf "
            "%lf %lf %lf %lf "
            "%lf %lf %lf %lf "
            "%lf %lf %lf %lf",
            &ix, &iy,
            &w[0][0], &w[0][1], &w[0][2], &w[0][3],
            &w[1][0], &w[1][1], &w[1][2], &w[1][3],
            &w[2][0], &w[2][1], &w[2][2], &w[2][3],
            &w[3][0], &w[3][1], &w[3][2], &w[3][3]
        );
        if (n != 18) continue;

        uint8_t nix = ix / 4;
        uint8_t niy = iy / 4;

        fprintf(fout, "    { %u, %u, {", nix, niy);
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                int32_t fix = (int32_t)lround(w[i][j] * (1 << 15));
                if (fix > INT16_MAX) fix = INT16_MAX;
                if (fix < INT16_MIN) fix = INT16_MIN;
                uint16_t ufix = (uint16_t)fix;
                fprintf(fout, " 0x%04X", ufix);
                if (!(i == 3 && j == 3)) fprintf(fout, ",");
            }
        }
        fprintf(fout, " } },\n");
    }

    fprintf(fout, "};\n");

    fclose(fin);
    fclose(fout);
    printf("변환 완료: bicubic_weights_hex.txt에 저장되었습니다.\n");
    return EXIT_SUCCESS;
}
