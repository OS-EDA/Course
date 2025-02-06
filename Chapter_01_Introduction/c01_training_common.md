---
title: "Chapter 01 Training"
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

# Chapter 01 - Server, Login, Shell - TRAINING - Common

## Server and user credentials

The PC environment for the course will be provied by IHP.

- Your PC in front of you must be connected to a server
- You will then work in a Ubuntu 24 Linux system
- The desktop GUI will be Gnome

### Connect to the IHP server

Follow these steps:

1. Open ThinLinc on the host PC
2. Connect with the login data, given to you by IHP
3. Ubuntu with Gnome desktop should start in ThinLinc
4. Make it fullscreen
5. "Forget about the host system?"

##### Notice:

- Please ask if there is questions!
- We`ll try to do this for all participants first, before proceeding to the next steps of the training.

## First lookaround in Gnome

### Search, start and close programs

Create and save a textfile:

1. Search for a texteditor (gedit)
2. Open gedit
3. Write a litte (your name or anything else)
4. Save the textfile with a name and the suffix .txt
5. To a new dirctory: Documents/myfiles
6. Close the texteditor (gedit)

### Tab-switching between programs

Tab-switch between opened programs:

1. Search and open at least three different programs (office, gedit, document viewer?)
2. Tab between the programs (with ALT+TAB on the keyboard)
3. It is a circle. After three Tabs you should be at the first again.
4. Close all programs

## Load the course data

### Download and unpack

- Get the latest release download package:

[https://github.com/OS-EDA/Course/releases](https://github.com/OS-EDA/Course/releases)

- Create a directory for the course slides.
- In Linux the ~/Documents is a good place to create the directory. Maybe create the directory Documents/course
- Unpack the course into this directory.

### Look around in the course data

![Course directory structure](pics_lecture/coursed_repo_structure.png)

### Links from the slides

#####
This might be outdated for the course, please try yourself.

- An issue with the linux document viewer and snap browsers.
- Links from slides don't open in the browser.

Possible workaround:

- Right click the link and copy
- Open browser
- Paste link to URL line

### Workspace arrangement

Suggestions or Options:

- Arrange windows next to each other
- ALT+TAB between programs (tasks)
- Close unwanted windows after the completion of a chapter

## Linux shell

### Short commandlist of a linux shell

- ```ls``` (list content of directory)
- ```ls -al``` (list with more information)
- ```cd``` directoryname (change to directory)
- ```cd ..``` (change to upper directory)
- ```mkdir``` (make directory)
- ```touch``` (make file)
- ```mv``` (move)
- ```cp``` (copy)

If unsure how to use the commands, read the man-page:

```
man <command>
```

### Online shell tutorial

To learn some Linux shell, you should find a tutorial that matches good to you. 

I found this one simple and good to follow for me while learning Linux shell:

[https://community.linuxmint.com/tutorial/view/100](https://community.linuxmint.com/tutorial/view/100)

### Makefile

OpenROAD flow scripts use Makefiles. So you might want to learn some basics about Makefiles.

Again here is the tutorial that has helped me most:

[https://makefiletutorial.com/](https://makefiletutorial.com/)

### Tips and tricks

- TAB for autocompletion
- 2xTAB for all choices of autocompletion
- Open a new terminal with the mouse:
 * Right click on an empty space in the directory window
 * Choose "open in Terminal"
