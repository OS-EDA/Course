---
title: "Chapter 07 Training"
author: "Course authors (Git file)"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
urlcolor: red
linkstyle: bold
logo: icons/common.jpg
date:
section-titles: false
toc: true
---

# Chapter 7 - OpenROAD flow scripts - TRAINING - Common

## Save the ready examples 

- Some design runs were done in the previous chapters.

##### Task: Rename them

- To a backup save of all these designs by renaming their directories.
- How to rename them is described in C7-S3.
- Try to find meaningfull renames:
    - date, time
    - versioning
    - optimization param

## Multiple runs

- The lecture slides of C7-S3 explain how to do multiple runs (one after another) on the same design.

##### Task: Two runs - Same design
- Make two runs with a different DENSITY for the gdc design
- Compare the runs via their final GDS
- Save both GDS as png images

## Reports

The reports for power and area are needed for the upcoming training sessions.

##### Task: Read reports

- Look up for the TCL commands for different reports, at least power and area.
- Try the commands in the GUI TCL console with any already made design.

## LFSR: parameterized version

##### Task: LFSR width as parameter

- Rewrite the LFSR Verilog with a parameter for the register width
- Maybe parameterize the index of the feedback bits.
- Run to get a GDS of this.

## LFSR (param version) optimize

Optimize the LFSR param version in three different ways.

##### Task: Min clock period
- Fix the length (make it long!)
- Find the minimal clockperiod for your design.

##### Task: Max length
- Fix the area
- Find the maximum length for the LFSR

##### Task: Max density
- Fix the length and area
- Find the max density

## LFSR IOPads

The LFSR has only very few inputs and outputs. This might be the most simple design for starting with to create a Padring with IOPads.

##### Task: footprint.tcl
- Take the floorplan.tcl from masked_aes as an example
- Create a floorplan.tcl for the LFSR
- Run to a GDS

## gcd | LFSR | TT: Area change

For this Task, use one (or more, one after another) of these designs:

- gcd
- LFSR
- TinyTapeout
- Some other own design

##### Task: Compare two areas
- Keep the density fixed (Not too high, more relaxed)
- Change the core area and rerun
- Compare the GDS of two different versions

## gcd | LFSR | TT: Free area

For this Task, use one (or more, one after another) of these designs:

- gcd
- LFSR
- TinyTapeout
- Some other own design

##### Task: Free area, changing the density
- No contraint for an area. (Comment it out)
- Experiment with a wide range of density.
- How hogh/low can the desity be?
- Does the power estimation change much?

## gcd | LFSR | TT: Uniform distributed heatmap

For this Task, use one (or more, one after another) of these designs:

- gcd
- LFSR
- TinyTapeout
- Some other own design

##### Task: heatmap optimization
- Choose one of the heatmaps in GUI
- Make a suggestion of how to find a most uniform distributed heatmap design.
- Try to build a GDS of that.
- Compare to the "not optimized" version. Did you achive your goal?




