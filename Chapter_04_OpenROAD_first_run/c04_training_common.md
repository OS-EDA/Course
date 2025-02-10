---
title: "Chapter 04 Training"
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

# Chapter 04 - OpenROAD first run - TRAINING - Common

## gcd example

Start the OpenROAD flow scripts for the gcd example.
ORFS shall create a GDS in this run.

### Makefile

##### Task: Enable the gcd design in the Makefile

* Navigate to the ```/flow``` folder
* Edit the Makefile:
    * Uncomment the line with DESIGN_CONFIG from ihp-sg13g2 for the gcd example:

        ```
        DESIGN_CONFIG=./designs/ihp-sg13g2/gcd/config.mk
        ```

    * Re-comment the previous uncommented line with DESIGN_CONFIG.        
    * The line with the default design does not need to be commented. This only applies when no previous line with DESIGN_CONFIG is set.
 
### Run

##### Task: Run ORFS with the design

* Run ```make``` from inside the ```/flow``` folder.

### Success

* The choosen design should finish after a while with a table (time/memory) like this:
```
Log                            Elapsed seconds Peak Memory/MB
1_1_yosys                                    0             24
1_1_yosys_canonicalize                       0             17
1_1_yosys_hier_report                        0             12
2_1_floorplan                                0            110
2_2_floorplan_io                             0            106
2_3_floorplan_tdms                           0             98
2_4_floorplan_macro                          0            106
2_5_floorplan_tapcell                        0            105
2_6_floorplan_pdn                            0            108
3_1_place_gp_skip_io                         0            108
3_2_place_iop                                0            107
3_3_place_gp                                 0            320
3_4_place_resized                            0            289
3_5_place_dp                                 0            112
4_1_cts                                      1            379
5_1_grt                                      0            340
5_2_route                                   93            899
5_3_fillcell                                 0            111
6_1_fill                                     0            113
6_1_merge                                    1            368
6_report                                     1            292
Total                                       96            899
```

CONGRATS! Your first(?) design got build to a GDS!

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

## ibex: RISC-V

### Task: Create a GDS of the ibex design

- Do the same as with the gcd example, but now for the ibex example.
- Do the steps from above:
    * Makefile: Enable ibex design
    * Run ORFS with ```make```
    * Examine the shell output
    * See the GDS with ```make gui_final```
    * Save an image of the GDS.

**Be aware:** This ORFS run will take more then 30 minutes to finish!


