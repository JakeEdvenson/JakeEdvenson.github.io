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



