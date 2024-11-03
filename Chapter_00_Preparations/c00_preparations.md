---
title: "Preparations"
subtitle: "Before the course (Optional)"
author: "Thorsten Knoll"
aspectratio: 169
theme: "CambridgeUS"
colortheme: "rose"
fonttheme: "professionalfonts"
date:
section-titles: false
toc: true
---

# Optional preparations for the course
Before the course starts, you can take some optional preparations regarding the EDA software tools that will be used during the course. Either you can install them locally on your own computer or get access to a preconfigured server from IHP. Here is a short description of the three options:

**Option 1: OpenROAD Flow Scripts (ORFS) on your computer -**
A plain installation of OpenROAD, Yosys, Klayout and some flow scripts into your system. This option puts everything directly under your control and only installs the minimum toolset neccessary for the course. It requires the permissions to install software on your computer. The guide makes use of Ubuntu Linux.

**Option 2: IIC-OSIC-TOOLS in a docker container on your computer -** This docker container is like a swiss knife for EDA tools. It can be configured in many ways and contains a lot of useful tools. All the tools for the course are in it. It requires the permissions to install software on your computer. The guide makes use of Ubuntu Linux.

**Option 3: IHP server with installed tools -** Working on the IHP server is the more convenient approach and does not require to install anything on your computer. The tools are ready to use installed on the IHP server. A permanent connnection to the server is needed (reliable internet connection). This option will work on various computers and operating systems (Linux/Win/Mac).

## Option 1: OpenROAD Flow Scripts (ORFS) on your computer 

### Prerequisites:
* Ubuntu LTS 24.04.1 (should work on other Linux too, see weblink)
* Permission to install software (sudo rights)
* Reliable internet connection
* git installed: ```sudo apt install git```

Weblink for detailed information:
https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/blob/master/docs/user/BuildLocally.md

### Installation of ORFS:
Navigate to a folder where you want the installation to reside in. The install will need some Gigabytes space.
```
cd <PATH TO YOUR INSTALL FOLDER>
```

Clone the repository to your computer:

```
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
```

Run the setup script to install the dependecies:
```
cd OpenROAD-flow-scripts
```
```
sudo ./setup.sh
```

Build all tools. This will take a while, depending on the computer:
```
./build_openroad.sh --local
```

Verify that the tools are available. You should get version informations of the tools with the following commands:
```
source ./env.sh
```
```
klayout -v
```
```
yosys --version
```
```
openroad -version
```

## Option 2: Guide to install the IIC-OSIC-TOOLS docker container on your computer
This guide is a list of shell commands with some short explanations and weblinks. This was tested on a freshly installed Ubuntu LTS 24.04.1. The order of the commands is crucial and must not be skipped. For more explanations look into the documentations and README files of the tools, the weblinks are given.

### Prerequisites:
* Ubuntu LTS 24.04.1
* Permission to install software (sudo rights)
* Reliable internet connection

### The IIC-OSIC-TOOLS docker container:
With the following steps a preconfigured docker gets installed. The docker is created and maintained by:
Institute for Integrated Circuits (IIC) at the Johannes Kepler University Linz (JKU)

and is avaiable in their Github with more detailed installation instructions:
https://github.com/iic-jku/IIC-OSIC-TOOLS

### Installation steps:
**Step 1 -** Install docker with apt:

Weblink for detailed informations: 
https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

Add Docker's official GPG key:
```
sudo apt-get update
```
```
sudo apt-get install ca-certificates curl
```
```
sudo install -m 0755 -d /etc/apt/keyrings
```
```
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
```
```
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

Add the repository to apt sources:
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
```
sudo apt-get update
```

Install the latest version of docker:
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

**Step 2 -** Manage docker as a non-root user

Weblink for detailed informations:
https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

```
sudo groupadd docker
```
```
sudo usermod -aG docker $USER
```
```
newgrp docker
```

**Step 3 -** Run the hello-world docker:

Run the hello-world example docker (without the need of sudo user):
```
docker run hello-world
```

No errors should be displayed in running the hello-world example. The output in the shell should contain this message:
```
...
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash
...
```


**Step 4 -** Clone the IIC-OSIC-TOOLS git repository to your computer:

Weblink for detailed informations about the steps 4 - 8:
https://github.com/iic-jku/IIC-OSIC-TOOLS/blob/main/README.md


Install git:
```
sudo apt install git
```

Navigate to a folder where you want the repository to be in:
```
cd <INSERT PATH TO YOUR FOLDER HERE>
```

Clone the IIC-OSIC-TOOLS:
```
git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git
```

**Step 5 -** Start the docker
```
./start_x.sh
```
A shell window pops up, in which the docker runs. 

**Step 6 -** Get the OpenROAD flow scripts
-To be written-

## Option 3: Guide to use an IHP server with installed EDA tools
### Ask at IHP for a login
### Getting started on the server

