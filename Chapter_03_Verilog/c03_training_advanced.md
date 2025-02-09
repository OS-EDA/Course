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

## LSFR - Linear Feedback Shift Register

This Trainnig makes use of the Verilog code of the Linear Feedback Shift Register (LSFR) from the lecture slides.

### LSFR as example

##### Task: Create directory and Verilog file

- Create a new directory for the LSFR example (in your Documents dir?)
- Create a new file ```lsfr.v``` inside that directory
- Copy the Verilog code from the lecture slides into the file ```lsfr.v```

### Analyse parts of the Verilog source

##### Task: Identify parts in the code

Find combinational and synchronous parts of the LSFR in

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

from the LSFR Verilog code

### yosys file

##### Task: Create a yosys config file .ys

- Create a new and empty lsfr.ys file inside your lsfr directory, next to the Verilog file
- Modify and use the lsfr.ys with yosys to generate the schenatic and the JSON netlist of the LSFR in one go.



