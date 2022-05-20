---
layout: default
title: Current Errors I'm Facing
---

------

#### regfile.v: 
This file currently comes back unequivalent due to the array of registers in it. When having to select between 32 registers, the tools seem to do something that results in the output being different than what they input. 

### Resolution Plan: 
Create the tiniest design of regfile that I can that still receives this error. Analyze the issue at this point and then look into Yosys' source code to see where the issue lies.

------

#### riscvSimpleDatapath.v:
This file does not fully run. This is presumably due to the fact that regfile.v doesn't come back equivalent, thus, it cannot come back equivalent either.

### Resolution Plan: 
Fix regile.v first. Then look into riscvSimpleDatapath.v

------



