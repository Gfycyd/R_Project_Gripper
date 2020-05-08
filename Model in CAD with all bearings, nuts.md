# **Model in CAD with all bearings, nuts**
### Goal: make stress/static/dynamic load analysis in CAD system.


Link to HachMd( in case of some additions, better to check by link, instead of file ): https://hackmd.io/zEhHR0I-Qy6GYKGrhp36HA?both

## Table of Contents
[TOC]

## All Material Related to The Gripper Analysis, please check it for the last, propapbly it can influence on changings on the grades, we can have a call, so I will explain all that: 

- CAD (checked, but now I finished that, so please take a look, probably it can change my grade, because I change something) [Some Schemes] (https://github.com/Gfycyd/R_Project_Gripper/tree/master/Support%20Materials/Schemes%20for%20CAD%20modeling), [All CAD Files] (https://github.com/Gfycyd/R_Project_Gripper/CAD) also there you can find pdf with all exaplanations, assemle video and motion study.
- CAE (not checked) [Gripper CAE Analysis](https://hackmd.io/@XsEHFmN0Q0uZsxD67xkvgw/BkP7ssYDU)
- Kinematics(checked, but changed with respect to changes in mechanism) [MatLab Implementation](https://github.com/Gfycyd/R_Project_Gripper/blob/master/KinematicsGripper.m), [Kinematics Report](https://github.com/Gfycyd/R_Project_Gripper/blob/master/Support%20Materials/Kinematics.pdf)
- Dynamics(not checked yet) [Dynamics Report](https://github.com/Gfycyd/R_Project_Gripper/blob/master/Support%20Materials/Dynamics.pdf)


## Link to hole project (also you can see it in CAD links)

[Link to GitHUB](https://github.com/Gfycyd/R_Project_Gripper)

## Some assuptions and comments (More assumptions in CAD pdf)

1) Firstly, I planned my gripper in such a way: 

![](https://i.imgur.com/feOrDaM.png)

But, in that design there is some problems:
    - This design involved metal parts, as we can see from the fact that the parts are thin
    - The main torque element, it is not at the university, so it was replaced by ![](https://i.imgur.com/8vzT5D2.png)
  
2) Again about glue and bolt connections:
    - To make cool glue connections, I will ask Yurij, so he can help with heating that glue connections and so it can not create weak spots
    - 

3) 3D printing of my Gripper will be prepared in neerby weekends(In process of assembling)
![](https://i.imgur.com/pwWXFTj.png)

+ Found thе for connections of mechanism on kazan express: 
    - Гайка нержав. шестигранная DIN 934 A2.
    - Болт М 8 нержав. шестигр/гол. полная резьба DIN 933 A2.
    - Болт М 8 нержав. шестигр/гол. полная резьба DIN 933 A2.
    Yes, I thought about 2 kinds of connection, like I choose in CAD file on github or ![](https://i.imgur.com/8oRrNxB.png) , but stopped on 1st king, because I found it easier to create and implement for me.
    Of course, I put some space(max 0.1mm) for eaiser putting осей to my mechanism.
    
