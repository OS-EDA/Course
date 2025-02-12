---
title: "Chapter 07 Lecture"
author: "Course authors (Git file)"
aspectratio: 169
theme: "AnnArbor"
colortheme: "crane"
fonttheme: "professionalfonts"
urlcolor: red
linkstyle: bold
logo: icons/lecture.jpg
date:
section-titles: true
toc: true
---

# Chapter 7 - OpenROAD flow scripts

## Introduction

What happend on the way to here:

- GDS-2-RTL: OpenROAD
- OpenROAD flow scripts (ORFS) overview
- ORFS flow steps and flow components
- First run of the flow scripts
- A Dive into the PDK (Klayout)
- Analysing: Heatmaps and more (ORFS GUI)

NOW:

- One day of using ORFS
- Getting a hands on with important data and features.

## ORFS Tutorial

There is a good tutorial about ORFS in the official documentation:

[https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html)

The ORFS online-tutorial was not written for the use with the IHP PDK especially, but we can adopt this easily.

###

![ORFS Online Tutorial](pics_lecture/orfs_intro.png)

## Multiple runs

### Caveats of multiple runs in ORFS

- ORFS does not handle multiple runs for a single design.
- The design run must be cleared with make clear_all, before a new runs can be started.
- !!! The previous data from the previous run will be lost. 

Side feature:

- A run can start over where you left it.

### Workaround for this

We have to:

- Manully save the previous data.
- Maybe just be renaming the directory.
- make gui_final only works on the actual design data.

## Structure of flow directories

## TCL Console and commands

## Reports

- Where to find?
- How to read?

## Logs

- Where to find?
- How to read?

## Results

- Where to find?
- How to read?

## Basic design initialization

### Design configuration (config.mk)

[https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#design-configuration](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#design-configuration)

### Clock constraints (constraints.sdc)

[https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#timing-constraints](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#timing-constraints)

### Design Verilog input

[https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#design-input-verilog](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#design-input-verilog)

## Design config variables

- Where to find?
- How to change?
- See the changes in the design data

