/***********************************************************************
 *  FSRCNN INT8  (layer-wise, debug-friendly)
 *  build:  gcc fsrcnn_layers.c -O3 -std=c99 -lm -o fsrcnn_layers
 **********************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

/* ─────────── 사용자 설정 ─────────── */
#define SCALE   4
#define IN_H    180
#define IN_W    320
#define OUT_H   (IN_H * SCALE)
#define OUT_W   (IN_W * SCALE)

static const char *WEIGHT_DIR = "C:/Users/jungh/IDSL/Capstone/FSRCNN-pytorch/weights";
static const char *INPUT_BMP  = "C:/Users/jungh/IDSL/Capstone/FSRCNN-pytorch/dog_lr_x4.bmp";
static const char *OUTPUT_BMP = "C:/Users/jungh/IDSL/Capstone/FSRCNN-pytorch/dog_INF_C_int8.bmp";

/* ─────────── 디버그 토글 (켜려면 1) ─────────── */
#define DEBUG_LAYER1 0   /* first_part_0      */
#define DEBUG_LAYER2 0   /* mid_part_0        */
#define DEBUG_LAYER3 0   /* mid_part_3        */
#define DEBUG_LAYER4 0   /* mid_part_6        */
#define DEBUG_LAYER5 0   /* mid_part_9        */
#define DEBUG_LAYER6 0   /* mid_part_12       */
#define DEBUG_LAYER7 0   /* mid_part_15       */
#define DEBUG_LAYERF 0   /* final deconv      */


/* ─────────── 고정소수점 상수, scale 값 처리하는 방법 ─────────── */
static const int  S            = 16;        // 20-bit(4.16)
static const int  M_INITIAL    = 59564;     // 1/(255*0.00840558)·2^20
static const int  M_LAYERS[7]  = {171, 604, 172, 77, 55, 109, 659};
static const int  M_FINAL      = 693;

/* ─────────── BMP I/O 구조체 ─────────── */
#pragma pack(push, 1)
typedef struct { uint16_t bfType; uint32_t bfSize; uint16_t bfRes1, bfRes2; uint32_t bfOffBits; } MY_BMPFILEHDR;
typedef struct { uint32_t biSize; int32_t  biWidth, biHeight; uint16_t biPlanes, biBitCount; uint32_t biComp, biImgSize; int32_t biXPels, biYPels; uint32_t biClrUsed, biClrImportant; } MY_BMPINFOHDR;
#pragma pack(pop)

/* ─────────── 함수 프로토타입 ─────────── */
static int8_t*  load_txt_int8      (const char *fname, int sz);
static uint8_t* bmp_load_y         (const char *path,int h,int w);
static void     bmp_save_gray      (const char *path,const uint8_t *y,int h,int w);
static inline uint8_t requant_int32(int32_t acc,int M);
static void conv_layer_int8_to_int8(const uint8_t *in_q,int in_c,int h,int w,
                                    const int8_t *wt,int out_c,int k,int pad,
                                    int M_scale,uint8_t *out_q);
static void deconv_layer_int8_to_u8(const uint8_t *in_q,int in_c,int h,int w,
                                    const int8_t *wt_q,uint8_t *out_u8);

/* ─────────── 레이어 래퍼 ─────────── */
static void layer1_first      (const uint8_t *in,uint8_t *out,int h,int w);
static void layer2_reduce     (const uint8_t *in,uint8_t *out,int h,int w);
static void layer3_mapping_0  (const uint8_t *in,uint8_t *out,int h,int w);
static void layer4_mapping_1  (const uint8_t *in,uint8_t *out,int h,int w);
static void layer5_mapping_2  (const uint8_t *in,uint8_t *out,int h,int w);
static void layer6_mapping_3  (const uint8_t *in,uint8_t *out,int h,int w);
static void layer7_expand     (const uint8_t *in,uint8_t *out,int h,int w);
static void layerF_deconv     (const uint8_t *in,uint8_t *out);

/* ──────────────────────────  main  ────────────────────────── */
int main(void)
{
    /* [0] BMP → Y → 양자화 ------------------------------------------ */
    uint8_t *yin  = bmp_load_y(INPUT_BMP, IN_H, IN_W);
    /* y값 출력 min-max 확인용, min21, max235로 출력나옴, y값 정상화화   
    uint8_t min_y = 255, max_y = 0; 
    for (int i = 0; i < IN_H * IN_W; i++) {
        if (yin[i] < min_y) min_y = yin[i];
        if (yin[i] > max_y) max_y = yin[i];
    }
    printf("입력 Y min = %d, max = %d\n", min_y, max_y); 
    */
    uint8_t *buf1 = malloc(16*IN_H*IN_W);
    uint8_t *buf2 = malloc(16*IN_H*IN_W);
    uint8_t *cur  = buf1, *nxt = buf2;

    for (int i=0;i<IN_H*IN_W;++i){
        int32_t v = ((int32_t)yin[i] * M_INITIAL + (1<<(S-1))) >> S;
        if (v>255) v=255;
        cur[i]=(uint8_t)v;
    }
    free(yin);

    /* [1] first_part_0  (1→16ch,5×5) -------------------------------- */
    layer1_first(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER1
    puts("[L1] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    uint8_t *tmp=cur; cur=nxt; nxt=tmp;

    /* [2] mid_part_0 (16→12,1×1) ----------------------------------- */
    layer2_reduce(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER2
    puts("[L2] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    tmp=cur;cur=nxt;nxt=tmp;

    /* [3] mid_part_3 (mapping-0) ------------------------------------ */
    layer3_mapping_0(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER3
    puts("[L3] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    tmp=cur;cur=nxt;nxt=tmp;

    /* [4] mid_part_6 (mapping-1) ------------------------------------ */
    layer4_mapping_1(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER4
    puts("[L4] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    tmp=cur;cur=nxt;nxt=tmp;

    /* [5] mid_part_9 (mapping-2) ------------------------------------ */
    layer5_mapping_2(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER5
    puts("[L5] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    tmp=cur;cur=nxt;nxt=tmp;

    /* [6] mid_part_12 (mapping-3) ----------------------------------- */
    layer6_mapping_3(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER6
    puts("[L6] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    tmp=cur;cur=nxt;nxt=tmp;

    /* [7] mid_part_15 (expand 12→16) -------------------------------- */
    layer7_expand(cur,nxt,IN_H,IN_W);
#if DEBUG_LAYER7
    puts("[L7] 첫 10개:");  for(int i=0;i<10;i++) printf("%3d ",nxt[i]);  puts("");
#endif
    cur=nxt;                                           /* layer7 출력 */

    /* [F] deconv ---------------------------------------------------- */
    uint8_t *out_img = malloc(OUT_H*OUT_W);
    layerF_deconv(cur,out_img);
#if DEBUG_LAYERF
    puts("[F] Y 첫 10px:");  for(int i=0;i<10;i++) printf("%3d ",out_img[i]); puts("");
#endif

    bmp_save_gray(OUTPUT_BMP,out_img,OUT_H,OUT_W);
    puts("Done.");
    free(buf1); free(buf2); free(out_img);
    return 0;
}

/* ──────────────────────────  공통 유틸  ────────────────────────── */
static int8_t* load_txt_int8(const char *name,int sz)
{
    char path[256]; sprintf(path,"%s/%s.txt",WEIGHT_DIR,name);
    FILE *fp=fopen(path,"r");
    if(!fp){printf("ERR open %s\n",path);exit(1);}
    int8_t *buf=malloc(sz);
    for(int i=0;i<sz;i++){int v; fscanf(fp,"%d",&v); buf[i]=(int8_t)v;}
    fclose(fp); return buf;
}

/* BT.601 Y ← BGR (정수-only) */
static uint8_t* bmp_load_y(const char *path, int h, int w)
{
    /* BMP 헤더 읽기 ------------------------------------------------------- */
    FILE *fp = fopen(path, "rb");
    if (!fp) { printf("BMP open fail: %s\n", path); exit(1); }

    MY_BMPFILEHDR fh;  MY_BMPINFOHDR ih;
    fread(&fh, sizeof(fh), 1, fp);
    fread(&ih, sizeof(ih), 1, fp);

    const int stride = ((ih.biWidth * 3 + 3) / 4) * 4;        // row align(4)
    uint8_t *bgr = malloc(stride * ih.biHeight);
    fseek(fp, fh.bfOffBits, SEEK_SET);
    fread(bgr, 1, stride * ih.biHeight, fp);
    fclose(fp);

    /* BGR → Y 변환 (BT.601, 16-235 범위) ---------------------------------- */
    uint8_t *y = malloc(h * w);
    if (!y) { puts("malloc fail"); exit(1); }

    for (int i = 0; i < h; i++) {
        for (int j = 0; j < w; j++) {
            /* BMP 는 하단부터 저장되어 있으므로 idx 계산에 (h-1-i) 사용 */
            const int idx = (h - 1 - i) * stride + j * 3;
            const uint32_t B = bgr[idx + 0];
            const uint32_t G = bgr[idx + 1];
            const uint32_t R = bgr[idx + 2];

            /* Y = 16 + (  66*R + 129*G +  25*B + 128 ) >> 8  (정수형) */
            uint32_t y_val = 16u + ((  66u * R + 129u * G + 25u * B + 128u) >> 8);

            /* 포화(saturate) ― 이론상 16-235 이지만 안전하게 0-255 클램프 */
            if (y_val > 255u) y_val = 255u;
            y[i * w + j] = (uint8_t)y_val;
        }
    }

    free(bgr);
    return y;
}
static void bmp_save_gray(const char *path,const uint8_t *y,int h,int w)
{
    int stride=((w*3+3)/4)*4, data_sz=stride*h;
    MY_BMPFILEHDR fh={0x4D42,54+data_sz,0,0,54};
    MY_BMPINFOHDR ih={40,w,h,1,24,0,data_sz,0,0,0,0};
    FILE *fp=fopen(path,"wb"); if(!fp){printf("save err %s\n",path);exit(1);}
    fwrite(&fh,sizeof(fh),1,fp); fwrite(&ih,sizeof(ih),1,fp);
    uint8_t *row=calloc(stride,1);
    for(int i=0;i<h;i++){
        for(int j=0;j<w;j++) row[j*3]=row[j*3+1]=row[j*3+2]=y[(h-1-i)*w+j];
        fwrite(row,1,stride,fp);
    }
    free(row); fclose(fp);
}

static inline uint8_t requant_int32(int32_t acc,int M) //M scale값으로 fusing하는 작업 (quant/dequant)
{
    int32_t v=(int32_t)acc*M; //+ (1LL<<(S-1)); // 반올림 하는 과정은 덧셈이라 생략
    int32_t r=(int32_t)(v>>S);                  // M곱하고 S(16)만큼 shift해서 fusing
    if(r<0) r=0; if(r>255) r=255; //clamping 
    return (uint8_t)r;
}

/* ─────────── Conv (INT8→INT8) ─────────── */
static void conv_layer_int8_to_int8(
    const uint8_t *in_q,int in_c,int h,int w,
    const int8_t *wt,int out_c,int k,int pad,
    int M_scale,uint8_t *out_q)
{
    const int size=h*w;
    for(int oc=0;oc<out_c;oc++){
        for(int y=0;y<h;y++){
            for(int x=0;x<w;x++){
                int32_t acc=0;
                for(int ic=0;ic<in_c;ic++){
                    for(int ky=0;ky<k;ky++){
                        int iy=y+ky-pad; if(iy<0||iy>=h) continue;
                        for(int kx=0;kx<k;kx++){
                            int ix=x+kx-pad; if(ix<0||ix>=w) continue;
                            uint8_t in_val=in_q[ic*size + iy*w + ix];
                            int8_t  wt_val=wt[oc*in_c*k*k + ic*k*k + ky*k + kx];
                            acc += (int32_t)in_val * (int32_t)wt_val;
                        }
                    }
                }
                out_q[oc*size + y*w + x]=requant_int32(acc,M_scale); //마지막에 MSCALE로 fusing 
            }
        }
    }
}

///////////////////////////////////////////////////////////
/// 디버그용 설정 (함수 외부에서 자유롭게 수정 가능)
///////////////////////////////////////////////////////////
static int DEBUG_INPUT_CH  = 0;     // 관찰할 입력 채널
static int DEBUG_OUTPUT_CH = 0;     // 관찰할 출력 채널
static int DEBUG_Y_POS     = 1;     // 관찰할 y 좌표
static int DEBUG_X_POS     = 1;     // 관찰할 x 좌표
static int DEBUG_ENABLE    = 0;     // 디버그 on/off 플래그

///////////////////////////////////////////////////////////
/// 연산 과정 디버그용 conv 함수 (전역 디버그 설정 사용)
///////////////////////////////////////////////////////////
static void conv_layer_int8_to_int8_DEBUG(
    const uint8_t *in_q, int in_c, int h, int w,
    const int8_t *wt, int out_c, int k, int pad,
    int M_scale, uint8_t *out_q)
{
    const int size = h * w;

    for (int oc = 0; oc < out_c; oc++) {
        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                int32_t acc = 0;

                for (int ic = 0; ic < in_c; ic++) {
                    for (int ky = 0; ky < k; ky++) {
                        int iy = y + ky - pad;
                        if (iy < 0 || iy >= h) continue;
                        for (int kx = 0; kx < k; kx++) {
                            int ix = x + kx - pad;
                            if (ix < 0 || ix >= w) continue;

                            uint8_t in_val = in_q[ic * size + iy * w + ix];
                            int8_t  wt_val = wt[oc * in_c * k * k + ic * k * k + ky * k + kx];
                            acc += (int32_t)in_val * (int32_t)wt_val;

                            if (DEBUG_ENABLE &&
                                oc == DEBUG_OUTPUT_CH && ic == DEBUG_INPUT_CH &&
                                y == DEBUG_Y_POS && x == DEBUG_X_POS) {
                                printf(" [Debug] oc=%d ic=%d (y=%d,x=%d) ky=%d kx=%d | in=%d, wt=%d, partial=%d\n",
                                    oc, ic, y, x, ky, kx, in_val, wt_val, in_val * wt_val);
                            }
                        }
                    }
                }

                uint8_t q = requant_int32(acc, M_scale); //// ㅡㅡ
                out_q[oc * size + y * w + x] = q;

                if (DEBUG_ENABLE &&
                    oc == DEBUG_OUTPUT_CH && y == DEBUG_Y_POS && x == DEBUG_X_POS) {
                    printf(" [Debug] → acc=%d, requant=%d\n", acc, q);
                }
            }
        }
    }
}
// 디버그 출력 참고 
/*
 ────────────────────────────────────────────────
 Debug 출력 항목 설명:
 oc   : Output Channel index (출력 채널 번호)
 ic   : Input Channel index  (입력 채널 번호)
 y,x  : 출력 feature map 위치 (좌표)
 ky,kx: 커널 내 좌표 (Kernel Y,X)
 in   : 입력 feature map 값 (0~255)
 wt   : 커널 weight 값 (-128~127)
 partial : in × wt (부분 곱 결과, int32)

 → 모든 partial 합(acc)을 requant 후 최종 출력값 계산
 ────────────────────────────────────────────────
*/
///////////////////////////////////////////////
////////////////////////////////////////////////


/* ─────────── Deconv (INT8→UINT8) ─────────── */
static void deconv_layer_int8_to_u8(
    const uint8_t *in_q,int in_c,int h,int w,
    const int8_t *wt_q,uint8_t *out_u8)
{
    const int k=9, stride=4, pad=4;
    const int out_sz=OUT_H*OUT_W;
    int32_t *acc_buf=calloc(out_sz,sizeof(int32_t));

    for(int ic=0;ic<in_c;ic++){
        for(int iy=0;iy<h;iy++){
            for(int ix=0;ix<w;ix++){
                uint8_t in_val=in_q[ic*h*w + iy*w + ix];
                if(!in_val) continue;
                for(int ky=0;ky<k;ky++){
                    for(int kx=0;kx<k;kx++){
                        int oy=iy*stride + ky - pad;
                        int ox=ix*stride + kx - pad;
                        if(oy<0||oy>=OUT_H||ox<0||ox>=OUT_W) continue;
                        int8_t wt_val=wt_q[ic*k*k + ky*k + kx];
                        acc_buf[oy*OUT_W + ox] += (int32_t)in_val * (int32_t)wt_val;
                    }
                }
            }
        }
    }
    for(int i=0;i<out_sz;i++){
        int64_t v=(int64_t)acc_buf[i]*M_FINAL + (1LL<<(S-1));
        int32_t r=(int32_t)(v>>S);
        if(r<0) r=0; if(r>255) r=255;
        out_u8[i]=(uint8_t)r;
    }
    free(acc_buf);
}

/* ─────────── 레이어 구현 ─────────── */
#define MAKE_LAYER_FUNC(name, wstr, OC, IC, K, PAD, MIDX)              \
static void name(const uint8_t *in,uint8_t *out,int h,int w)            \
{                                                                       \
    int8_t *wt=load_txt_int8(wstr, (OC)*(IC)*(K)*(K));                  \
    conv_layer_int8_to_int8(in,IC,h,w,wt,OC,K,PAD,M_LAYERS[MIDX],out);  \
    free(wt);                                                           \
}

// 디버그용 함수 //
#define MAKE_LAYER_FUNC_DEBUG(name, wstr, OC, IC, K, PAD, MIDX)              \
static void name(const uint8_t *in,uint8_t *out,int h,int w)            \
{                                                                       \
    int8_t *wt=load_txt_int8(wstr, (OC)*(IC)*(K)*(K));                  \
    conv_layer_int8_to_int8_DEBUG(in,IC,h,w,wt,OC,K,PAD,M_LAYERS[MIDX],out);  \
    free(wt);                                                           \
}

//예시
MAKE_LAYER_FUNC_DEBUG(layer1_first,     "first_part_0_weight", 16,  1, 5,2, 0) //debug 예시
//MAKE_LAYER_FUNC(layer1_first,     "first_part_0_weight", 16,  1, 5,2, 0)
MAKE_LAYER_FUNC(layer2_reduce,    "mid_part_0_weight",   12, 16, 1,0, 1)
MAKE_LAYER_FUNC(layer3_mapping_0, "mid_part_3_weight",   12, 12, 3,1, 2)
MAKE_LAYER_FUNC(layer4_mapping_1, "mid_part_6_weight",   12, 12, 3,1, 3)
MAKE_LAYER_FUNC(layer5_mapping_2, "mid_part_9_weight",   12, 12, 3,1, 4)
MAKE_LAYER_FUNC(layer6_mapping_3, "mid_part_12_weight",  12, 12, 3,1, 5)
MAKE_LAYER_FUNC(layer7_expand,    "mid_part_15_weight",  16, 12, 1,0, 6)

static void layerF_deconv(const uint8_t *in,uint8_t *out)
{
    int8_t *wt=load_txt_int8("last_part_weight", 16*9*9);
    deconv_layer_int8_to_u8(in,16,IN_H,IN_W,wt,out);
    free(wt);
}
