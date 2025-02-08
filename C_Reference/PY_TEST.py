import sys
import numpy as np
from PIL import Image

def convert_rgb_to_ycbcr(img, dim_order='hwc'):
    """
    입력:
      img: H x W x 3 numpy 배열 (dtype=float32), 채널 순서: R, G, B.
      dim_order: 'hwc'로 가정.
    출력:
      ycbcr: H x W x 3 numpy 배열 (dtype=float32), 채널 순서: Y, Cb, Cr.
    변환 공식:
      Y  = 16.0  + (64.738  * R + 129.057 * G + 25.064  * B) / 256.0
      Cb = 128.0 + (-37.945 * R - 74.494  * G + 112.439 * B) / 256.0
      Cr = 128.0 + (112.439 * R - 94.154  * G - 18.285  * B) / 256.0
    """
    if dim_order == 'hwc':
        y  = 16.0  + (64.738  * img[..., 0] + 129.057 * img[..., 1] + 25.064  * img[..., 2]) / 256.0
        cb = 128.0 + (-37.945 * img[..., 0] - 74.494  * img[..., 1] + 112.439 * img[..., 2]) / 256.0
        cr = 128.0 + (112.439 * img[..., 0] - 94.154  * img[..., 1] - 18.285  * img[..., 2]) / 256.0
    else:
        y  = 16.0  + (64.738  * img[0] + 129.057 * img[1] + 25.064  * img[2]) / 256.0
        cb = 128.0 + (-37.945 * img[0] - 74.494  * img[1] + 112.439 * img[2]) / 256.0
        cr = 128.0 + (112.439 * img[0] - 94.154  * img[1] - 18.285  * img[2]) / 256.0

    # At this point, we have three separate 2D arrays (each of shape (H, W)):
    #   y  : the luminance (brightness) channel.
    #   cb : the blue-difference chroma channel.
    #   cr : the red-difference chroma channel.
    #
    # Example:
    #   Let H = 2, W = 3 and assume:
    #     y  = [[1, 2, 3],
    #           [4, 5, 6]]
    #     cb = [[7, 8, 9],
    #           [10,11,12]]
    #     cr = [[13,14,15],
    #           [16,17,18]]
    #
    # When we combine them using np.array([y, cb, cr]), the resulting array has shape (3, H, W):
    #   combined = [
    #       [[ 1,  2,  3],     <- Channel 0 (Y)
    #        [ 4,  5,  6]],
    #
    #       [[ 7,  8,  9],     <- Channel 1 (Cb)
    #        [10, 11, 12]],
    #
    #       [[13, 14, 15],     <- Channel 2 (Cr)
    #        [16, 17, 18]]
    #   ]
    
    # However, standard image formats expect the shape (H, W, 3), where:
    #   - Axis 0 is the image height,
    #   - Axis 1 is the image width,
    #   - Axis 2 contains the 3 color channels (Y, Cb, Cr).
    #
    # To rearrange the axes from (3, H, W) to (H, W, 3), we use the transpose method:
    #   .transpose([1, 2, 0]) reorders the axes such that:
    #     - New axis 0 comes from the original axis 1 (height H).
    #     - New axis 1 comes from the original axis 2 (width W).
    #     - New axis 2 comes from the original axis 0 (channels: Y, Cb, Cr).
    #
    # Continuing the example:
    #   After transpose, the array becomes:
    #       [
    #         [[1,  7, 13],   <- Pixel at (0,0): [Y, Cb, Cr]
    #          [2,  8, 14],   <- Pixel at (0,1)
    #          [3,  9, 15]],  <- Pixel at (0,2)
    #
    #         [[4, 10, 16],   <- Pixel at (1,0)
    #          [5, 11, 17],   <- Pixel at (1,1)
    #          [6, 12, 18]]   <- Pixel at (1,2)
    #       ]
    #   Now, the shape is (2, 3, 3): (height, width, channels).

    # 최종적으로 [y, cb, cr] 배열을 HWC 순서로 재배열
    ycbcr = np.array([y, cb, cr]).transpose([1, 2, 0])
    return ycbcr.astype(np.float32)

def main():
    if len(sys.argv) < 3:
        print("사용법: python {} input.bmp output.txt".format(sys.argv[0]))
        sys.exit(1)
    
    input_bmp = sys.argv[1]
    output_txt = sys.argv[2]
    
    # BMP 파일 읽기 및 RGB 모드로 변환
    img = Image.open(input_bmp).convert("RGB")
    # Pillow는 BMP 파일의 내부 bottom-up 순서를 자동으로 처리하여 top-down 배열을 반환합니다.
    img_np = np.array(img).astype(np.float32)
    
    # RGB -> YCbCr 변환 (HWC 순서)
    ycbcr = convert_rgb_to_ycbcr(img_np, dim_order='hwc')
    
    # ycbcr 배열은 (height, width, 3) 모양이므로, 이를 (height*width, 3)으로 재구성하여 각 픽셀의 값을 한 줄에 저장
    flat_ycbcr = ycbcr.reshape(-1, 3)
    
    # 각 행에 대해 "Y Cb Cr" 형식의 텍스트 파일로 저장 (소수점 6자리까지 출력)
    np.savetxt(output_txt, flat_ycbcr, fmt="%.6f", delimiter=" ")
    print("YCbCr 데이터가 '{}'에 txt 형식으로 저장되었습니다.".format(output_txt))

if __name__ == "__main__":
    main()
