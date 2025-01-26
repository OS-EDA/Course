---
title: "Chapter 04 Training"
author: "Course authors (Git file)"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
logo: icons/advanced.jpg
date:
section-titles: false
toc: true
---

# Chapter 04 - OpenROAD first run - TRAINING - Advanced

## Build an external example



### EDA tools
* One of the options of chapter 0 (preparations) is needed.
* Navigate to the ```/flow``` folder

### Clone the design "masked AES" from the HEP Alliance

Clone the masked AES design from Github.
Use the tutorial from the HEP Alliance Repository:

https://github.com/HEP-Alliance/masked-aes-tapeout

In a nutshell (clone via https):
```
git clone https://github.com/HEP-Alliance/masked-aes-tapeout.git <ORFS-Root>/flow/designs/ihp-sg13g2/masked_aes
```

 

### Enable the design in the Makefile
* Edit the Makefile:
    * Uncomment the line with your choosen DESIGN_CONFIG from ihp-sg13g2.
    In this case the cloned masked_aes:

        ```
        DESIGN_CONFIG=./designs/ihp-sg13g2/masked_aes/config.mk
        ```
    
    * Re-comment the previous uncommented line with DESIGN_CONFIG.
    For example the gcd on SKY130 design:
    
        ```
        # DESIGN_CONFIG=./designs/asap7/gcd/config.mk
        ```
    
    * The line with the default design does not need to be commented. This only applies when no previous line with DESIGN_CONFIG is set.


### Run the flowscript
* Run ```make``` from inside the ```/flow``` folder.

### Success
* The choosen design should finish after a while and a lot of console output with a table (time/memory) like this:
```
Log                            Elapsed seconds Peak Memory/MB

```

CONGRATS! Your design got build to a GDS!