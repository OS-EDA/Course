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

# Chapter 7 - OpenROAD flow scripts - TRAINING 1 - Common

## Platform configurations

Make use of the ORFS tutorial, platform configuration:

[https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#platform-configuration](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html#platform-configuration)


### Compare two platforms

- Open the config.mk files for two platforms in parallel, so you can compare them.
- Platforms: ihp-sg13g2 and sky130hd

Questions:

- How are they similar and different?

### Structure of the config.mk

- Open the config.mk of the platform ihp-sg13g2
- Name the sections of the config.mk

Questions:

- Where have you seen the titles (comments) of the sections before?

### Variables

- Open the config.mk of the platform ihp-sg13g2
- Identify the following variables and find out their meanings / purpose.
- Variables:
  * DONT_USE_CELLS
  * IO_PLACER_H
  * CORE_MARGIN and CORE_UTILIZATION
  * KLAYOUT_TECH_FILE
  * KLAYOUT_DRC_FILE

Questions:

- Where is the information about the variables?
- The meanings and purpose of the variables.
- Is CORE_UTILIZATION in the config.mk? Why?
- Any other variables you looked up out of interest?

