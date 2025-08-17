// common/pixelTypes.h
`ifndef PIXELTYPES_H
`define PIXELTYPES_H

  // NPIX: 한 픽셀당 바이트 수 (기본 12 → 96비트)
  parameter int IN_NPIX = 4;
  parameter int OUT_NPIX = 3;

  // 8×NPIX 비트 벡터 타입
  typedef logic [8*IN_NPIX-1:0] in_pixel_t;
  typedef logic [8*OUT_NPIX-1:0] out_pixel_t;

`endif // PIXELTYPES_H
