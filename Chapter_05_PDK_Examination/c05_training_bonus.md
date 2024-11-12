---
title: "Chapter 05 Training"
author: "Course authors (Git file)"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
logo: icons/bonus.jpg
date:
section-titles: false
toc: true
---

# Chapter 5 - PDK Examination - TRAINING - Bonus

## 1. Transistor count

* Load the gds of the standard cell AND4_1.
* How many transistors are in the cell?
* How to verify this with the use of another file from the PDK?

## Next slide: Solution Spoiler!

SPOILER ALERT:

* The next slide contains the solution.
* Only proceed to the next slide if you want to see the solution right now!

## Solution: Transistor count

![AND4_1](pics_training/08_klayout.png "AND4_1")

## Solution: Transistor count in file

File: sg13g2_sdtcell.cdl

```
MN4 net17 D VSS VSS sg13_lv_nmos m=1 w=640.00n l=130.00n ng=1
MN3 net16 C net17 VSS sg13_lv_nmos m=1 w=640.00n l=130.00n ng=1
MN2 net15 B net16 VSS sg13_lv_nmos m=1 w=640.00n l=130.00n ng=1
MN1 net1 A net15 VSS sg13_lv_nmos m=1 w=640.00n l=130.00n ng=1
MN0 X net1 VSS VSS sg13_lv_nmos m=1 w=740.00n l=130.00n ng=1
MP0 net1 A VDD VDD sg13_lv_pmos m=1 w=840.00n l=130.00n ng=1
MP4 X net1 VDD VDD sg13_lv_pmos m=1 w=1.12u l=130.00n ng=1
MP3 net1 D VDD VDD sg13_lv_pmos m=1 w=840.00n l=130.00n ng=1
MP2 net1 C VDD VDD sg13_lv_pmos m=1 w=840.00n l=130.00n ng=1
MP1 net1 B VDD VDD sg13_lv_pmos m=1 w=840.00n l=130.00n ng=1
```

