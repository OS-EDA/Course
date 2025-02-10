---
title: "Chapter 01 Training"
author: "Course authors (Git file)"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
urlcolor: red
linkstyle: bold
logo: icons/bonus.jpg
date:
section-titles: false
toc: true
---

# Chapter 01 - Server, Login, Shell - TRAINING - Bonus

## Two ideas

- For this Bonus training there are two ideas of what can be done.
- These tasks can be re-visited verytime during the course when there is free time. They might take longer then the course week itself.
- Taking these bonus ideas back to home as a starting point for your own EDA designs is intended.

## Do the siliwiz lessons

- Doing the siliwiz lessons helps a lot to learn more about semiconductors in general.
- In the course chapter about the open-source PDK the knowledge from Siliwiz will definitely be helpful for deeper understanding.
- If you want to go into analog circuit design, this might be a good start too.

##### Task: Start doing the SiliWiz lessons

- Here you go (Link to lesson is upper right corner):

- [https://app.siliwiz.com/](https://app.siliwiz.com/)

- Come back to the lessons whenever there is free time in the course.

## Look for a tinytapeout design

- In this course we have pre-configured and tested examples for the chip designs,
- But you could try to build an own designs. The course trainer might not be able to guide you fully. You're mostly on your own.

### What to expect

This idea is for:

- If you feel like you want to do an own design, but don't want to write a Verilog project from the start.
- Look into all the Tinytapeout shuttle runs. The designs are open-source.
- Open-source: You are allowed to review, modify, use the designs.
- SSo you can use them for creating your own exmaple for this course.

### Where and how to start

##### Task: Find a design from TinyTapeout

- [https://tinytapeout.com/runs/](https://tinytapeout.com/runs/)
- Browse the designs from the TinyTapeout shuttle runs.
- Look a design that looks fitting for you
- Only take designs with good documentation!!!
- Find the Github repository of the design.
- Review the documentation and the Verilog code.


### Next steps (roughly)

After chapter 3 + 4 (Verilog and First run):

- Take a pre-configured example design (gcd) as template
- Copy the template as a new design (see ORFS tutorial)
- Add the Verilog from the TT design

After chapter 5 + 6 +7 (PDK and OpenROAD GUI):

- Try to modify the rest of the new design:
    * config files
    * constraints
    * Makefile
- Give it a try: run the design
