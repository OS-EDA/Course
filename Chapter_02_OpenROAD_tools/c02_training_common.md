---
title: "Chapter 02 Training"
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

# Chapter 02 - Terminology - TRAINING - Common

## Searching

### Browse the resources

##### Task: Review the flow terminology

- Try to formulate the meaning and purpose of all the following search results in your own words.
- Search for each of the flow steps
    * Synthesis
    * Floorplan
    * Placement
    * Clock Tree Synthesis
    * Routing
    * Finishing
- Search for as much flow components as possible (see the components names in the diagram in the lecture slides)
- If no result is found, try a search engine (or chatGPT).

Matt Venns list:

[https://www.zerotoasiccourse.com/terminology/](https://www.zerotoasiccourse.com/terminology/)


### Getting the words in place

In the beginning it can be hard to learn all the new words and give them meaningful connections immediately.

Let's try to create a timeline (or taskline) for "How to make microchips?" in a joint effort.

##### Task: Create a diageram "How to make a microchip?" 

- Everyone can give a keyword of the topic "How to make a microchip?"
- We try to figure out the meaning and the position in a timeline / taskline?
- Flipchart, Whiteboard, Texteditor?


### List the open-source tools in OpenROAD

OpenROAD uses a lot of open-source tools, that were available even before OpenROAD.

##### Task: Create a list of tools

- Use this link list as the knowledge base:
    * [https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#running-the-automated-rtl-to-gds-flow](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#running-the-automated-rtl-to-gds-flow)
- Find the names of the open-source tools that are used in ORFS.
- Create a list with the columns:
    * Name of the open-source tool
    * Flow step and flow component in ORFS were the tool is used.
    * Description of the function of the tool
    * Bonus: What was modified or contributed to this tool by the OpenROAD team?

### Example row

##### Example row in the list:
    
* Yosys
* Synthesis
* Verilog and contstraints to netlists
* Most of the initial development was coded by Claire Wolf (not by ORFS)
