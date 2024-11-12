---
title: "Chapter 04 Training"
author: "Course authors (Git file)"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
logo: icons/training.jpg
date:
section-titles: false
toc: true
---

# Chapter 04 - OpenROAD first run - TRAINING

## Start the first run

### EDA tools
* One of the options of chapter 0 (preparations) is needed.
* Navigate to the ```/flow``` folder

### Enable the design in the Makefile
* Edit the Makefile:
    * Uncomment the line with your choosen DESIGN_CONFIG from ihp-sg13g2.
    For example the gcd design:
        ```
        DESIGN_CONFIG=./designs/ihp-sg13g2/gcd/config.mk
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