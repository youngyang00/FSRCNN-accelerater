onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib shrink_dsp48_macro_1_opt

do {wave.do}

view wave
view structure
view signals

do {shrink_dsp48_macro_1.udo}

run -all

quit -force
