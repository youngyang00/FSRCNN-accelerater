# FSRCNN-based Super-Resolution Accelerator on FPGA
## Contributor
**신광선 (Gwangsun Shin)**  
- GitHub: https://github.com/youngyang00
- Role: **Mapping Layer RTL Design & Design Verification based on SystemVerilog**  
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
- Role: **software reference, quantization & Deconvolution Layer RTL Design**
- Repo in Detail:


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

