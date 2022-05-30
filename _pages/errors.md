---
layout: default
title: Current Errors I'm Facing
---

------

#### regfile.v: 
This file currently comes back unequivalent due to the array of registers in it. When having to select between 32 registers, the tools seem to do something that results in the output being different than what they input. 

### [Debug File]({{ site.baseurl }}{% link bugFiles/regfile.v %}):
The smallest design of regfile that still has Yosys compiliation issues. 

### Resolution Plan: 
Create the tiniest design of regfile that I can that still receives this error. Analyze the issue at this point and then look into Yosys' source code to see where the issue lies.

### Discoveries Found:
After performing some TCL tests and analysis, I believe I've found a potential answer. The reversed-netlist version of regfile.v uses a component called a BUFGCTRL. The golden version of this file only uses a BUFG. The BUFGCTRL component involves the clock signal and is generally meant for debugging. From TCL testing, I found that the output signal, readData, is getting the correct values but is getting it at differing rates. There are 7 different signals that mirror the output and each one changes from 0 to 1 at a different time than another one. Perhaps this is being caused by the BUFGCTRL component and could be fixed by having yosys default to using BUFGs instead. 

------

#### riscvSimpleDatapath.v:
This file does not fully run. This is presumably due to the fact that regfile.v doesn't come back equivalent, thus, it cannot come back equivalent either.

### Resolution Plan: 
Fix regile.v first. Then look into riscvSimpleDatapath.v

------

#### buttoncount.v
This file has an error with btnu_d going to inc. For some reason, if btnu goes straight to inc, it works correctly.

### [Debug File]({{ site.baseurl }}{% link bugFiles/buttoncount.v %}):
The smallest (so far) I've been able to narrow down this design. 

### Resolution Plan:
Keep reducing the code until I can find something that causes this issue.



