onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib BicubicDDRTest_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {BicubicDDRTest.udo}

run 1000ns

quit -force
