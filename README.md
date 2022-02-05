</br>

---

<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152633063-1d128b5f-e02b-445b-9285-d7b66294b429.jpg">
</p> 


---


</br>

![Size](https://img.shields.io/github/repo-size/adithyaherle/Cmos-nor-gate?color=red)
![Last Commit](https://img.shields.io/github/last-commit/adithyaherle/Cmos-nor-gate?color=green)



</br>

# CMOS NOR GATE

This repository presents the design of a CMOS NOR Gate.


![Screenshot (56)](https://user-images.githubusercontent.com/99066843/152633794-804909d7-d5be-4d44-85e7-9a551283c473.png)



# Table of Contents 

 * [Introduction](#Introduction)
 * [Truth-Table](#Truth-Table)
 * [Open Source Tools Used](#Open-Source-Tools-Used)
 * [Pre Layout Simulations](#Pre-Layout-Simulations)
   * [Tools And PDK Used For Pre-Layout Simulations](#Tools-and-PDK-used-for-pre-layout-simulations)
     * [Installation Of Tools And PDK](#Installation-of-Tools-and-PDK)
   * [Pre-Layout Schematics And Simulations](#Pre-layout-schematics-and-simulations)
     * [Schematics](#Schematics)
     * [Simulation](#Simulation)
   * [Executing The Pre-Layout Simulations](#Executing-the-pre-layout-simulations)
 * [Author](#Author)
 * [Acknowledgements](#Acknowledgements)
   
   

# Introduction 

This repository aims to design a 2-input CMOS NOR Gate. A NOR gate (NOT+OR) is a logic gate which produces output that is true only if all the inputs are false else it produces false output. The CMOS NOR gate circuit as shown in figure.1 consists of pull-up network (i.e. PMOS) in series and pull-down network (i.e. NMOS) in parallel. Number of NMOS and PMOS used depends on the number of inputs for e.g. If I want a 3 input NOR gate then we should use 3 PMOS and 3 NMOS transistors. This repo consists of design and simulation of 2-input CMOS NOR gate followed by simulation results (Waveforms).


The images shown below represents the circuit diagram and a logic symbol of a CMOS NOR gate.

<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152633848-0b85bb7c-ab51-4721-87bb-5e0b6086fbcf.png">
</p> 
<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152634113-20813373-ca72-41a1-9ff2-96fba86acb30.png">
</p> 

</br>

*[Back To Top](#Table-of-Contents)* ⤴️ 

</br>

# Truth-Table

The truth table of the proposed CMOS NOR Gate can be found below: </br>



<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152634230-b48e8bf2-1b5a-4af9-997d-ec4fa0b8e710.png">
</p> 



</br>

*[Back To Top](#Table-of-Contents)* ⤴️ 

</br>

 
# Open Source Tools Used

 🌟 eSim
 * eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as KiCad, Ngspice and GHDL. eSim is released under GPL.It can serve as an alternative to commercially available/licensed software tools like OrCAD, Xpedition and HSPICE.
  
 
 🌟 Ngspice
 * Ngspice is a mixed-level/mixed-signal electronic circuit simulator.
 
   
 🌟 Sky130 PDK
 
   * The SKY130 is a mature 180nm-130nm hybrid technology originally developed internally by Cypress Semiconductor before being spun out into SkyWater Technology and made       accessible to general industry. SkyWater and Google’s collaboration is now making this technology accessible to everyone.
   * The SKY130 Process Node is an extremely flexible offering, including many normally optional features as standard (features like the local interconnect, SONOS functionality, MiM capacitors, and more). This provides the designer with a wide range of flexibility in design choices.
   
       

</br>

*[Back To Top](#Table-of-Contents)* ⤴️ 
</br>

# Pre Layout Simulations

## Tools And PDK Used For Pre-Layout Simulations
  * eSim
  * Ngspice
  * Skywater130 PDK
  
### Installation Of Tools And PDK

📥 eSim:
 
 * Download the latest eSim release for Windows OS from the below link provided.
 * Locate the installer file in the folder where your downloaded files are kept.
 * Double click on the file.
 * If a pop-up window appears asking "Do you want to allow the following program from an unknown publisher to make changes to this computer?", click YES.
 * Then in the ”License Agreement” window, select the I Agree option.
 * Click Next when the program asks for you to ”Choose Install Location”. We have taken care to auto-select the destination folder path.
 * In the next window that appears, select Install.
 * A progress bar will appear; once it reaches 100%, ”Installation Complete” message will be shown at the top of the eSim setup window. Click on Close. eSim shortcut icon will be on your Desktop.

        🔗 https://esim.fossee.in/home
     
📥 Ngspice :
 
   * The eSim installer also installs Ngspice, so one can access ngspice by running the ngspice.exe file present in the eSim installation folder.
   
📥 Sky130 PDK :  
 
   * Download ZIP file from the below repository link shown below.
   * After downloading the ZIP file, extract the contents, and go to libraries. Copy the sky130_fd_pr folder and paste it in the pre_layout folder.
   
     🔗 https://github.com/google/skywater-pdk

## Pre-Layout Schematics And Simulations 

### Schematics 

Design of a CMOS NOR Gate is done using eSim tool and the snapshot of its schematic is shown below 

<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152644535-87a188fa-a2c8-43cb-b989-360e22c72ea2.png">
</p>
The circuit schematic demonstrates the CMOS 2-input NOR gate as shown in the figure above. The two-input NOR gate uses two PMOS transistors in series between VDD and gate-output, and the complementary circuit of a parallel connection of two NMOS transistors between GND and gate-output as shown in figure.1. Here, first transistor’s source terminal is connected to Vdd (high) and lower transistor’s (NMOS) drain terminal is connected to Vss (GND). Second PMOS transistor’s drain terminal is shorted with both NMOS transistor’s source terminal and is given to the output which acts as an output terminal. It behaves complementary to the OR logic. If either input A or B or all are ‘high’ (1) then at least one of the lower transistors (NMOS) will be saturated, hence producing output ‘low’ (0). Only in the event of both inputs both inputs being ‘low’ (0) will both lower transistors (NMOS) be in cutoff mode and both upper transistors (PMOS) be saturated, thus producing output ‘high’ (1). This behavior defines a NOR Logic function.

### Simulation

After creating the schematics, spice netlist was extracted with the help of esim and the eSim  mosfet models in the netlist file was replaced with sky130nm mosfet models and transient analysis was performed using ngspice.

The result of transient analysis is shown below

<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152644831-04cbb7f1-c734-46ba-b08f-fd38d1686ab0.png">
</p>



 ## Executing The Pre-Layout Simulations
 
  * First make sure the spice netlist which was extracted and modified is in the same directory as sky130_fd_pr folder.
  * Add an extension .out to the netlist file at the end.
  * Now run the "CMOS_NOR_GATE.cir.out" file in ngspice to perform the simulation.
  * Output graphs are displayed on the screen after the execution.
   
 </br>

*[Back To Top](#Table-of-Contents)* ⤴️ 

</br>
 
 # Author
 
  🖊️ Adithya Herle P S , B.Tech (Electronics and Communication Engineering), Reva University, Karntaka 
 
 
 # Acknowledgements

 📖 Kunal Ghosh, Co-Founder of VLSI System Design (VSD) Corp. Pvt. Ltd. - kunalpghosh@gmail.com

---
