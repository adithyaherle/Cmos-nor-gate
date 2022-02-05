</br>

---

![R](https://user-images.githubusercontent.com/99066843/152633063-1d128b5f-e02b-445b-9285-d7b66294b429.jpg)


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
 * [Clone This Repository](#Clone-This-Repository)
 * [Pre Layout Simulations](#Pre-Layout-Simulations)
   * [Tools And PDK Used For Pre-Layout Simulations](#Tools-and-PDK-used-for-pre-layout-simulations)
     * [Installation Of Tools And PDK](#Installation-of-Tools-and-PDK)
   * [Pre-Layout Schematics And Simulations](#Pre-layout-schematics-and-simulations)
     * [Schematics](#Schematics)
     * [Simulation](#[Simulation)
   * [Executing The Pre-Layout Simulations](#Executing-the-pre-layout-simulations)
 * [Author](#Author)
 * [Acknowledgements](#Acknowledgements)
   
   

# Introduction 

This paper aims to design a 2-input CMOS NOR Gate. A NOR gate (NOT+OR) is a logic gate which produces output that is true only if all the inputs are false else it produces false output. The CMOS NOR gate circuit as shown in figure.1 consists of pull-up network (i.e. PMOS) in series and pull-down network (i.e. NMOS) in parallel. Number of NMOS and PMOS used depends on the number of inputs for e.g. If I want a 3 input NOR gate then we should use 3 PMOS and 3 NMOS transistors. This paper consists of design and simulation of 2-input CMOS NOR gate followed by simulation results (Waveforms).


The imagees shown below is a circuit diagram and a logic symbol of a CMOS NOR gate.

![image](https://user-images.githubusercontent.com/99066843/152633848-0b85bb7c-ab51-4721-87bb-5e0b6086fbcf.png)      ![image](https://user-images.githubusercontent.com/99066843/152634113-20813373-ca72-41a1-9ff2-96fba86acb30.png)


</br>

*[Back To Top](#Table-of-Contents)* ⤴️ 

</br>

# Truth-Table

The truth table of the proposed NOR Gate can be found below: </br>



<p align="center">
<img src="https://user-images.githubusercontent.com/99066843/152634230-b48e8bf2-1b5a-4af9-997d-ec4fa0b8e710.png">
</p> 



</br>

*[Back To Top](#Table-of-Contents)* ⤴️ 

</br>

 
# Open Source Tools Used

 🌟 eSim
 
   * eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built    using free/libre and open source software such as KiCad, Ngspice and GHDL. eSim is released under GPL.It can serve as an alternative to commercially available/licensed software tools like OrCAD, Xpedition and HSPICE.

        🔗 https://esim.fossee.in/home
 
 🌟 Ngspice
 
   * Ngspice is a mixed-level/mixed-signal electronic circuit simulator.
   * Ngspice is based on three open-source free-software packages: 
      * Spice3f5
      * Xspice
      * Cider1b1
   
      🔗 http://ngspice.sourceforge.net/
        
 🌟 Sky130 PDK
 
   * The SKY130 is a mature 180nm-130nm hybrid technology originally developed internally by Cypress Semiconductor before being spun out into SkyWater Technology and made accessible to general industry. SkyWater and Google’s collaboration is now making this technology accessible to everyone.
   * The SKY130 Process Node is an extremely flexible offering, including many normally optional features as standard (features like the local interconnect, SONOS functionality, MiM capacitors, and more). This provides the designer with a wide range of flexibility in design choices.
   
     🔗 https://github.com/google/skywater-pdk
   
 🌟 Magic
 
  * Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies.
  * The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity.
  * Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow.
  
    🔗 http://opencircuitdesign.com/magic/

</br>

*[Back To Top](#Table-of-Contents)* ⤴️ 
</br>

# Clone This Repository 

  * Clone this repository using git clone command 
 
 ```
 $ git clone https://github.com/Nalinkumar2002/avsdvco_1v8.git
```

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
 
  * Install the eSim tool using this website given below.
  
     🔗 https://esim.fossee.in/downloads
   
  *  You can also refer to the eSim Spoken Tutorial.
  
     🔗 https://spoken-tutorial.org/tutorial-search/?search_foss=eSim
     
📥 Ngspice :
 
  * Install Ngspice using this website given below.

    🔗 http://ngspice.sourceforge.net/download.html
   
📥 Sky130 PDK :  
 
   * Use git clone method  
   
    $ git clone https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr
   
 > Place `sky130_fd_pr` folder in current working directory to avoid errors during simulations.
 

## Pre-Layout Schematics And Simulations 

### Schematics 

Current Starved VCO is designed using eSim and the screenshot of schematic file is shown below

<p align="center">
<img src="Images/avsdvco_1v8_pre_layout.cir.png">
</p>

### Simulation

After creating the schematics, spice netlist was extracted with the help of esim and the necessary model files of *sky130 tt*  transistors were included in the netlist and transient analysis was performed.

The result of transient analysis of VCO @ `vctrl = 0.9 V` is shown below

<p align="center">
<img src="Images/avsdvco_1v8_pre_layout_output.png">
</p>


📢 Output frequency of VCO `F_out = 937 MHz`



🔶 Transient analysis is performed for different control voltages and output frequencies are tabulated for corresponding control voltage and graphs are plotted .

 <p align="center">
<img src="Images/avsdvco_1v8_pre_layout_table_1.PNG">
</p>

<p align="center">
<img src="Images/avsdvco_1v8_pre_layout_output_1.png">
</p>


🔶 Similarly, transient analysis is performed for different plots 

*  ✔️ AVSDVCO_1V8 BIAS CURRENT VS CONTROL VOLTAGE   
*  ✔️ AVSDVCO_1V8 OUTPUT FREQUENCY VS BIAS VOLTAGE 

 </br>

💠 AVSDVCO_1V8 BIAS CURRENT VS CONTROL VOLTAGE

<p align="center">
<img src="Images/avsdvco_1v8_pre_layout_table_2.PNG">
<img src="Images/avsdvco_1v8_pre_layout_output_2.png">
</p>


💠 AVSDVCO_1V8 OUTPUT FREQUENCY VS BIAS VOLTAGE

<p align="center">
<img src="Images/avsdvco_1v8_pre_layout_table_3.PNG">
<img src="Images/avsdvco_1v8_pre_layout_output_3.png">
</p>

 ## Executing The Pre-Layout Simulations
 
  * Change directory using command
 
 ``` 
  $ cd Pre_Layout_Simulations
 ```
  * Run the `avsdvco_1v8_pre_layout.cir.out` file in ngspice to perform simulations
 
 ``` 
 $ ngpice avsdvco_1v8_pre_layout.cir.out
 ```
 * Output graphs are displayed on the screen after the execution .
 * To perform various transient analysis follow the `README.txt` given in that directory or please find it below by clicking README.txt
 
 
<details>
<summary>README.txt</summary>
  
```
 ==================================== 
 IP Name :avsdvco_1V8
 PDK : Sky130 PDK by Google SkyWater
 ==================================== 
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Name of the author : NALINKUMAR S 
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 --------------------------------->
 To perform Pre-Layout Simulations 
 --------------------------------->
 	
 --> In file "avsdvco_1v8_pre_layout.cir.out" change the control voltage and transient command to get output for various control voltages.
 --> To get outputs at different control voltages change the transient command according to control voltages given below for perfect output graphs
 
 ---------------------------------------------------
  VCTRL (Control Voltage) |    Transient command
 ---------------------------------------------------
	0.4 V   	  |	tran 10ns 100us
	0.5 V		  |	tran 1ns 5us
	0.6 V		  |	tran 100ps 500ns
	0.7 V		  |	tran 10ps 50ns
	0.8 V		  |	tran 10ps 20ns
	0.9 V  		  |	tran 1ps 10ns
	1.0 V		  |	tran 1ps 5ns
	1.1 V		  |	tran 1ps 5ns
	1.2 V		  |	tran 1ps 5ns
	1.3 V		  |	tran 1ps 5ns
	1.4 V		  |	tran 1ps 5ns
	1.5 V		  |	tran 1ps 5ns
	1.6 V		  |	tran 1ps 5ns
	
 *Note: -> Before performing simulations keep the " sky130_fd_pr " folder in current working directory to avoid errors.
 	-> To get output frequency vs bias voltage plot varry VDD from 1.5 V to 2.0 V @ VCTRL = 0.9 V


 --> After performing all analysis the values are tabulated and output graphs are ploted :
	
	TABLES:
	-------
	-> AVSDVCO_1V8 OUTPUT FREQUENCY VS CONTROL VOLTAGE - avsdvco_1v8_pre_layout_table_1.png
	-> AVSDVCO_1V8 BIAS CURRENT VS CONTROL VOLTAGE - avsdvco_1v8_pre_layout_table_2.png	
	-> AVSDVCO_1V8 OUTPUT FREQUENCY VS BIAS VOLTAGE - avsdvco_1v8_pre_layout_table_3.png
	
	PLOTS:
	------
	-> AVSDVCO_1V8 OUTPUT FREQUENCY VS CONTROL VOLTAGE - avsdvco_1v8_pre_layout_output_1.png
	-> AVSDVCO_1V8 BIAS CURRENT VS CONTROL VOLTAGE - avsdvco_1v8_pre_layout_output_2.png	
	-> AVSDVCO_1V8 OUTPUT FREQUENCY VS BIAS VOLTAGE - avsdvco_1v8_pre_layout_output_3.png
	-> AVSDVCO_1V8 TRANSIENT ANALYSIS @ VCTRL = 0.9 V - avsdvco_1v8_pre_layout_output.png   
  
```
</details>
  
 </br>

*[Back To Top](#Table-of-Contents)* ⤴️ 

</br>
  


```
</details>

</br>



</br>
 
# Future Work 

  🏁 Linearity of the VCO can be increased.
 
  🏁 Tuning range of VCO can be increased further.
 
 # Author
 
  🖊️ Nalinkumar S , B.E (Electronics and Communication Engineering), Madras Institute of Technology, Anna University, Tamil Nadu 
 
 
 # Acknowledgements

 📖 Kunal Ghosh, Co-Founder of VLSI System Design (VSD) Corp. Pvt. Ltd. - kunalpghosh@gmail.com

---
