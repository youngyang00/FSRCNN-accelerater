/*
 * reorder_to_matrix.c
 *
 * Usage:
 *   gcc reorder_to_matrix.c -o reorder_to_matrix
 *   ./reorder_to_matrix output_pixels.txt
 *
 * Reads lines "x y R G B" (hex or decimal) from the input text (skips '#' lines),
 * organizes into 2D arrays per channel, and writes three files:
 *   R_matrix.txt, G_matrix.txt, B_matrix.txt
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

typedef struct {
    int x, y;
    uint8_t r, g, b;
} Pixel;

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s output_pixels.txt\n", argv[0]);
        return EXIT_FAILURE;
    }

    // 1) まず入力を2パスで読み、幅와 높이를 구한다.
    const char *infile = argv[1];
    FILE *fin = fopen(infile, "r");
    if (!fin) { perror(infile); return EXIT_FAILURE; }

    int max_x = 0, max_y = 0;
    char line[256];
    while (fgets(line, sizeof(line), fin)) {
        if (line[0]=='#' || line[0]=='\n') continue;
        int x, y; unsigned int rr, gg, bb;
        if (sscanf(line, "%d %d %x %x %x", &x, &y, &rr, &gg, &bb)==5 ||
            sscanf(line, "%d %d %u %u %u", &x, &y, &rr, &gg, &bb)==5) {
            if (x > max_x) max_x = x;
            if (y > max_y) max_y = y;
        }
    }
    rewind(fin);

    int width  = max_x + 1;
    int height = max_y + 1;

    // 2) 2D 배열 할당
    uint8_t **R = malloc(height * sizeof(uint8_t*));
    uint8_t **G = malloc(height * sizeof(uint8_t*));
    uint8_t **B = malloc(height * sizeof(uint8_t*));
    for (int y = 0; y < height; y++) {
        R[y] = malloc(width);
        G[y] = malloc(width);
        B[y] = malloc(width);
    }

    // 3) 두번째 패스: 배열에 값 채우기
    while (fgets(line, sizeof(line), fin)) {
        if (line[0]=='#' || line[0]=='\n') continue;
        int x, y; unsigned int rr, gg, bb;
        int matched = sscanf(line, "%d %d %x %x %x", &x, &y, &rr, &gg, &bb);
        if (matched != 5) {
            matched = sscanf(line, "%d %d %u %u %u", &x, &y, &rr, &gg, &bb);
            if (matched != 5) continue;
        }
        R[y][x] = (uint8_t)rr;
        G[y][x] = (uint8_t)gg;
        B[y][x] = (uint8_t)bb;
    }
    fclose(fin);

    // 4) 파일별로 행렬 출력
    FILE *fR = fopen("R_matrix.txt", "w");
    FILE *fG = fopen("G_matrix.txt", "w");
    FILE *fB = fopen("B_matrix.txt", "w");
    if (!fR||!fG||!fB) { perror("file open"); return EXIT_FAILURE; }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            fprintf(fR, "%02X", R[y][x]);
            fprintf(fG, "%02X", G[y][x]);
            fprintf(fB, "%02X", B[y][x]);
            if (x < width-1) {
                fprintf(fR, " "); fprintf(fG, " "); fprintf(fB, " ");
            }
        }
        fprintf(fR, "\n"); fprintf(fG, "\n"); fprintf(fB, "\n");
    }

    fclose(fR); fclose(fG); fclose(fB);

    // 5) 해제
    for (int y = 0; y < height; y++) {
        free(R[y]); free(G[y]); free(B[y]);
    }
    free(R); free(G); free(B);

    printf("Wrote %dx%d matrices to R_matrix.txt, G_matrix.txt, B_matrix.txt\n",
           width, height);
    return EXIT_SUCCESS;
}
