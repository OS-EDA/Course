---
title: "Chapter 04 Training"
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

# Chapter 04 - OpenROAD first run - TRAINING - Advanced

## Build an external example

### "masked AES" from the HEP Alliance

##### Task: Clone the design

- Clone the masked AES design from Github.
- Use the tutorial from the HEP Alliance Repository:

https://github.com/HEP-Alliance/masked-aes-tapeout

- In a nutshell (clone via https):
```
git clone https://github.com/HEP-Alliance/masked-aes-tapeout.git <ORFS-Root>/flow/designs/ihp-sg13g2/masked_aes
```

### Makefile

##### Task: Enable the design

- Navigate to the ```/flow``` folder
- Edit the Makefile:
    * Uncomment the line with your choosen DESIGN_CONFIG from ihp-sg13g2.
    In this case the cloned masked_aes:

        ```
        DESIGN_CONFIG=./designs/ihp-sg13g2/masked_aes/config.mk
        ```
    
    * Re-comment the previous uncommented line with DESIGN_CONFIG.
    * The line with the default design does not need to be commented. This only applies when no previous line with DESIGN_CONFIG is set.

### Run

##### Task: Run ORFS with the design

- Run ```make``` from inside the ```/flow``` folder.

### Success

- The choosen design should finish after a while and a lot of console output with a table (time/memory) like this:
```
Log                            Elapsed seconds Peak Memory/MB

```

CONGRATS! Your design got build to a GDS!

## Examine the results

### The flow steps

##### Task: Match the shell output

- Scroll the shell output from the command to the (successfull) end,
- Identify the flow steps in the shell output
- Try to match your findings to the flow steps and flow components from chapter 2
- Can you identify single open-source tools in the output of the flow? Name the ones you identified.

### The GDS

##### Task: Examine the GDS

- See the GDS with the command ```make gui_final```

##### Task: Save an image from the GDS

- In the TCL console at the bottom of the GUI:
    * ```save_image <imagename>.png```
    * Find the saved image in your directories.