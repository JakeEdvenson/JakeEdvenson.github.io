---
layout: default
title: My Designs
---

------

## Progress on my goal of creating 15 designs: 

Design # | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
Design Name | alu.v  | oneshot.v  | regfile.v  | buttoncount.v  | lightshow.v  | calc.v  | shiftreg.v  | riscvSimpleDatapath.v  |  |  |  |  |  |  | 
Works with Yosys | Yes | Yes | No | No | Yes | Yes | Yes | No |  |  |  |  |  |  | 
Equivalent w/ F4PGA | Yes | No | No | No | No | No | No | No | | | | | | | | 

------

## Design Files (working)
  
### [alu.v]({{ site.baseurl }}{% link designs/alu.v %}):
A file meant to act as a module for larger-scale designs. It can perform calculations such as add, subtract, shift, and other basic logic functions.


###  [oneshot.v]({{ site.baseurl }}{% link designs/oneshot.v %}):
A debouncing design used to confirm a button is only pressed once. Adapted into Verilog from Dr. Mike Wirthlin's SystemVerilog design.

### [calc.v]({{ site.baseurl }}{% link designs/calc.v %}):
A top-level alu file that can perform simple calculations. *Note: requires alu.v and oneshot.v*

### [lightWave.v]({{ site.baseurl }}{% link designs/lightWave.v %}):
A top-level design that causes LEDS to light up from right to left and back. *Note: requires oneshot.v*

### [shiftReg.v]({{ site.baseurl }}{% link designs/shiftReg.v %}):
A low-level design that shifts values input into it by a desired amount of bits.

### [shiftRegTop.v]({{ site.baseurl }}{% link designs/shiftRegTop.v %}):
A top-level design that operates the shiftReg file. *Note: requires oneshot.v and shiftReg.v*

### [UpDownButtonCount.v]({{ site.baseurl }}{% link designs/UpDownButtonCount.v %}):
A state machine that increments the values on the LEDs when buttons are pressed. 

-----

## Design Files (not working completely)

### [regfile.v]({{ site.baseurl }}{% link designs/regfile.v %}):
A simple design to organize data into 32 registers, write to 1, and receive data from 2. 

### [riscvSimpleDatapath.v]({{ site.baseurl }}{% link designs/riscvSimpleDatapth.v %}):
A top-level design that creates a simple risc-v datapath from alu's and registers. *Note: requires alu.v, regfile.v, and oneshot.v*

