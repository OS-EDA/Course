---
title: "Chapter 03 Training"
author: "Course authors (Git file)"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
urlcolor: red
linkstyle: bold
logo: icons/advanced.jpg
date:
section-titles: false
toc: true
---

# Chapter 3 - Verilog - TRAINING - Advanced

## LFSR - Linear Feedback Shift Register

This Trainnig makes use of the Verilog code of the Linear Feedback Shift Register (LFSR) from the lecture slides.

### LFSR as example

##### Task: Create directory and Verilog file

- Create a new directory for the LFSR example (in your Documents dir?)
- Create a new file ```lfsr.v``` inside that directory
- Copy the Verilog code from the lecture slides into the file ```lfsr.v```

### Analyse parts of the Verilog source

##### Task: Identify parts in the code

Find combinational and synchronous parts of the LFSR in

- the Verilog code 
- the Schematic drawing (from the lecture slides)

### Using yosys

##### Task: Learn to use yosys basics

Start using the tool ```yosys```. You can get a basic help list with ```yosys --help```. And for the commands it is ```yosys --help <command>```

- Learn how to synthesize a Verilog file
- Learn how to write the result to a new file
- What is the result?
- How to change the format of the result with yosys?

##### Task: Schematic and Netlist

Generate

- Schematic graphic file
- JSON Netlist

from the LFSR Verilog code

### yosys file

##### Task: Create a yosys config file .ys

- Create a new and empty lfsr.ys file inside your lfsr directory, next to the Verilog file
- Modify and use the lfsr.ys with yosys to generate the schenatic and the JSON netlist of the LFSR in one go.



