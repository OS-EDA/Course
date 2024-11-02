---
title: "Chapter 05 Training"
subtitle: "Process Design Kit (PDK) Examination"
author: "Thorsten Knoll"
aspectratio: 169
<<<<<<< HEAD
logo: icons/training.jpg
=======
theme: "CambridgeUS"
>>>>>>> ffeec45c92317ccb21067c7c1988128604c86df9
date:
section-titles: false
toc: true
---

## 1. Open Klayout

* Execute ```klayout``` in console shell.
* Klayout starts in viewer mode.
* Edit mode can be started with ```klayout -e``` but is not needed for this training.

### 1. Open Klayout

![Start Klayout](pics_training/01_klayout.png "Start Klayout") { heigth=70% }

## 2. Load example GDS

* Search for the final GDS from your example run and load it into Klayoutv

### 2. Load example GDS

![Load GDS](pics_training/02_klayout.png "Load GDS")

## 3. Use a LYP file

* Recall: What are layer properties and the .lyp file?
* Search the sg13g2 lyp-file from the PDK and enable it in Klayout.
* Make it the default lyp in Klayout.
* Look for changes in the layer list and the GDS.
* What has changed?

### 3. Use a LYP file

![Use LYP file](pics_training/03_klayout.png "Use LYP file")

## 4. Navigate Layers and GDS

* In the layer list:
    * Enable "Hide empty layers".
    * Enable "Visibility follows selection".
    * De-/Select multiple layers and see the changes.
* Zoom out to see the complete GDS and de-/select layers.
* Zoom into details and de-/select layers.
* Move the GDS file while zoomed in.
* Try to find interesting views.
* Discuss with neighbours what might be of interest.

### 4. Navigate Layers and GDS

![GDS zoomed out](pics_training/04_klayout_01.png "GDS zoomed out")

### 4. Navigate Layers and GDS

![GDS zoomed in](pics_training/04_klayout_02.png "GDS zoomed in")

## 5. Load cell library GDS

* Now open another GDS: the standard cell library from the sg13g2 PDK.
* The standard cell library is a single GDS file. Search and load the library file.

### 5. Load cell library GDS

![Cell library](pics_training/05_klayout.png "Cell library")

## 6. Pick a cell

* All the cell names are displayed in a window to the left. One cell is selected (displayed in bold). The GDS of this cell is viewed. Try to bring another cell "to the top" to see that cells GDS.
* Repeat the layer navigation like in the eaxmple GDS.

### 6. Pick a cell

![Single cell](pics_training/06_klayout.png "Single cell")

## 7. Bonus: Matchmaking a cell

* Here is a 3D rendering of a standard cell (Insert name? Or find name?)
* ToDo: Insert cell picture
* Can you identify the layers and their order from the cell?

### 7. Bonus: Matchmaking a cell

ToDo.

## 8. Bonus (Advanced): Transistor count

* Load the gds of the standard cell AND4_1.
* How many transistors are in the cell?
* How to verify this with the use of another file from the PDK?

### 8. Bonus (Advanced): Transistor count

![AND4_1](pics_training/08_klayout.png "AND4_1")

### 8. Bonus (Advanced): Transistor count

File: sg13g2_sdtcell.cdl

```
************************************************************************
* Library Name: sg13g2_stdcell
* Cell Name:    sg13g2_and4_1
* View Name:    schematic
************************************************************************

.SUBCKT sg13g2_and4_1 A B C D VDD VSS X
*.PININFO A:I B:I C:I D:I X:O VDD:B VSS:B
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
.ENDS
```

