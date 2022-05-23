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

## Design Files
  
### [alu.v]({{ site.baseurl }}{% link designs/alu.v %}):
A file meant to act as a module for larger-scale designs. It can perform calculations such as add, subtract, shift, and other basic logic functions.


###  [oneshot.v]({{ site.baseurl }}{% link designs/oneshot.v %}):
A debouncing design used to confirm a button is only pressed once. Adapted into Verilog from Dr. Mike Wirthlin's SystemVerilog design.

### [calc.v]({{ site.baseurl }}{% link designs/calc.v %}):
*Note: requires alu.v and oneshot.v*
A top-level alu file that can perform simple calculations.
