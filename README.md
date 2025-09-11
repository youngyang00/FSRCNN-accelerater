# FSRCNN-based Super-Resolution Accelerator on FPGA(ZCU-102)
## Contributor
**신광선 (Gwangsun Shin)**  
- GitHub: https://github.com/youngyang00
- Role: **Project Leader & Mapping Layer RTL Design & Design Verification based on SystemVerilog**  
- Repo in Detail: https://github.com/youngyang00/fsrcnn-mapping-layer

**조수환 (suhwanJo03)**  
- GitHub: https://github.com/suhwanJo03
- Role: **Shrinking, Expanding Layer RTL Design & TCP transport FW design**
- Repo in Detail:
  
**이준식 (jun-sik Lee)**  
- GitHub: https://github.com/dlwnstlr1010
- Role: **Feature Extraction Layer RTL Design & Model Compression**
- Repo in Detail: [https://github.com/dlwnstlr1010/FSRCNN-Accelerator/tree/main/Feature_Extraction_Layer](https://github.com/dlwnstlr1010/FSRCNN-Accelerator/tree/main/Feature_Extraction_Layer)

**이정호 (jungho0479)**  
- GitHub: https://github.com/jungho0479
- Role: **Deconvolution Layer RTL Design & software reference, quantization**
- Repo in Detail: https://github.com/suhwanJo03/FSRCNN_ZCU102_accelerator


## Project Overview
<img width="1140" height="416" alt="image" src="https://github.com/user-attachments/assets/71fc560f-0a40-40b2-80ef-632f68e87078" />

This project implements a hardware-accelerated FSRCNN (Fast Super-Resolution Convolutional Neural Network) on FPGA, designed to upscale low-resolution images from **320×180 to 1280×720 (×4)** and achieve **real-time processing at 60 frames per second**.

Instead of directly applying the original FSRCNN architecture, we performed **manual hyperparameter tuning** to optimize the model for FPGA deployment. By reducing the number of parameters while maintaining output quality, we created a **hardware-efficient version of FSRCNN**, tailored for resource-constrained environments.

The final architecture consists of **five computational layers** — `Feature Extraction`, `Shrinking`, `Mapping`, `Expanding`, and `Deconvolution` — each implemented as a separate **Verilog RTL module**. These modules are interconnected using **AXI4-Stream protocols**, and the entire system is built as a **streaming pipeline** at the top level, enabling high-throughput, low-latency processing on the FPGA.

## 🎯 Target Model

To deploy the FSRCNN model efficiently on FPGA, we designed a lightweight and quantized version through extensive optimization and manual tuning.

### ⚙️ Experimental Setup & Evaluation Metrics
- Training conditions: Identical Epochs, Learning Rate, Batch Size, and general hyperparameters across models.
- **PSNR (Peak Signal-to-Noise Ratio)**: Measures pixel-wise distortion of the reconstructed image.
- **SSIM (Structural Similarity Index)**: Evaluates visual quality based on brightness, contrast, and structure.

### 🔧 Optimization Techniques
- Quantized weights and activations (INT8)
- Fused ReLU activation, bias removal, and zero-point elimination
- Manual tuning of number of channels and layer depth to reduce computation

### 📉 Result Highlights
- Model size reduced from **55 KB → 5 KB**
- Final model maintains **comparable performance** to the original:
    - **Original FP32**: PSNR **30.13 dB**, SSIM **0.8765**
    - **Quant-only (PTQ)**: PSNR 28.25 dB, SSIM 0.7694
    - **Final Optimized**: PSNR **30.14 dB**, SSIM **0.8610**
- Achieved ~10× size reduction with negligible quality loss

> ✅ The final target model preserves image quality while significantly reducing memory and logic usage, making it well-suited for real-time FPGA deployment.

<img width="682" height="638" alt="image" src="https://github.com/user-attachments/assets/c08095d3-8d28-4b10-bb50-76b1a1a3fe9c" />

## 🔷 IP at a Glance — `AXI4-Stream FSRCNN Upscale`
> **AXI4-Stream input (Y 8-bit) → FSRCNN 4× Upscale → AXI4-Stream output (Y 8-bit)**  
> Designed to process 320×180 input and produce 1280×720 output at 60 fps on ZCU102 (300 MHz).  
> Steady-state throughput: 1 pixel per clock cycle after pipeline warm-up.

<img width="590" height="367" alt="image" src="https://github.com/user-attachments/assets/ee3fe802-d791-45c7-9985-8d35039532f1" />

### 📌 Description

This IP implements a hardware-optimized version of the FSRCNN (Fast Super-Resolution Convolutional Neural Network) architecture, structured into five RTL blocks:  
**Feature Extraction → Shrinking → Mapping → Expanding → Deconvolution**.  
All modules are connected via **AXI4-Stream** and operate under a **shared single-clock domain** (`s_axis_aclk`), supporting real-time streaming without stalls under normal conditions.

#### Key Features:
- **Fully pipelined**: One-pixel-per-cycle throughput after warm-up.
- **Quantized computation**: All arithmetic is 8-bit or lower (INT8), optimized for DSP utilization.
- **Y-only input**: This version processes luminance (Y) only; chroma (CbCr) can be handled externally.
- **Timing-aware**: `EOL` (End-of-Line) and `EOF` (End-of-Frame) signals allow for shape-aware scheduling.
- **Backpressure support**: Compliant with AXI4-Stream handshake (`tvalid`/`tready`); stalls handled gracefully.

---

### 🔌 Interface Summary
The IP uses a standard AXI4-Stream interface for pixel-level input and output, with additional control signals for frame and line boundaries.

| Signal            | Direction | Width | Description |
|------------------|-----------|--------|-------------|
| `S_AXIS_tdata`    | Input     | 32     | Input pixel stream formatted as `{8'h00, Blue[7:0], Green[7:0], Red[7:0]}`. Only the Red channel (`[7:0]`) is used as the input grayscale (Y) pixel. |
| `S_AXIS_tvalid`   | Input     | 1      | Asserted when `S_AXIS_tdata` is valid. |
| `S_AXIS_tready`   | Output    | 1      | Asserted when the IP is ready to accept input. |
| `M_AXIS_tdata`    | Output    | 8      | Output pixel (8-bit grayscale Y) after 4× upscaling. One pixel per clock in steady state. |
| `M_AXIS_tvalid`   | Output    | 1      | Asserted when `M_AXIS_tdata` is valid. |
| `M_AXIS_tready`   | Input     | 1      | Asserted when downstream module is ready to receive output. |
| `s_axis_aclk`     | Input     | 1      | Global clock for all streaming logic. |
| `s_axis_aresetn`  | Input     | 1      | Active-low reset. Asynchronous. |
| `EOL`             | Output    | 1      | End-of-Line signal. High for the last pixel in each row. |
| `EOF`             | Output    | 1      | End-of-Frame signal. High for the bottom-right (final) pixel of the frame. **This must be mapped to `M_AXIS_tlast` to properly mark frame boundaries.** |

---

> 💡 **Input Format**:  
> `S_AXIS_tdata` is expected to follow a 32-bit RGB format: `{8'h00, B, G, R}`.  
> The Red channel (`[7:0]`) is extracted and treated as the grayscale Y input to the super-resolution IP.  
> Optionally, a separate Y-conversion module may be used to convert full-color RGB/YCbCr to Y.

> ⚠️ **AXI4-Stream Compliance**:  
> The `EOF` signal must be directly connected to `M_AXIS_tlast` when integrating with AXI4-Stream-compatible downstream modules (e.g., VDMA, stream routers).  
> This ensures correct frame-level synchronization, buffer flushing, and interrupt generation.

#### Timing Notes:
- Pixel inputs must be streamed row by row (raster scan order).
- `EOL` and `EOF` are automatically generated based on internal pixel counters.
- The IP does **not** buffer entire frames — streaming latency is only pipeline depth (~100–200 cycles).

---
