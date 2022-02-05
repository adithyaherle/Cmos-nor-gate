EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mosfet_p M1
U 1 1 61F506F7
P 4700 2350
F 0 "M1" H 4650 2400 50  0000 R CNN
F 1 "mosfet_p" H 4750 2500 50  0000 R CNN
F 2 "" H 4950 2450 29  0000 C CNN
F 3 "" H 4750 2350 60  0000 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
$Comp
L mosfet_p M2
U 1 1 61F508EB
P 4700 2900
F 0 "M2" H 4650 2950 50  0000 R CNN
F 1 "mosfet_p" H 4750 3050 50  0000 R CNN
F 2 "" H 4950 3000 29  0000 C CNN
F 3 "" H 4750 2900 60  0000 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
$Comp
L mosfet_n M3
U 1 1 61F50924
P 4300 3550
F 0 "M3" H 4300 3400 50  0000 R CNN
F 1 "mosfet_n" H 4400 3500 50  0000 R CNN
F 2 "" H 4600 3250 29  0000 C CNN
F 3 "" H 4400 3350 60  0000 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
$Comp
L mosfet_n M4
U 1 1 61F50977
P 5250 3600
F 0 "M4" H 5250 3450 50  0000 R CNN
F 1 "mosfet_n" H 5350 3550 50  0000 R CNN
F 2 "" H 5550 3300 29  0000 C CNN
F 3 "" H 5350 3400 60  0000 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 61F50A28
P 4950 4300
F 0 "#PWR01" H 4950 4050 50  0001 C CNN
F 1 "GND" H 4950 4150 50  0000 C CNN
F 2 "" H 4950 4300 50  0001 C CNN
F 3 "" H 4950 4300 50  0001 C CNN
	1    4950 4300
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 1 1 61F50C59
P 2900 2350
F 0 "U1" H 2950 2450 30  0000 C CNN
F 1 "PORT" H 2900 2350 30  0000 C CNN
F 2 "" H 2900 2350 60  0000 C CNN
F 3 "" H 2900 2350 60  0000 C CNN
	1    2900 2350
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 2 1 61F50CB4
P 2950 2900
F 0 "U1" H 3000 3000 30  0000 C CNN
F 1 "PORT" H 2950 2900 30  0000 C CNN
F 2 "" H 2950 2900 60  0000 C CNN
F 3 "" H 2950 2900 60  0000 C CNN
	2    2950 2900
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 61F53BB4
P 4850 1650
F 0 "U1" H 4900 1750 30  0000 C CNN
F 1 "PORT" H 4850 1650 30  0000 C CNN
F 2 "" H 4850 1650 60  0000 C CNN
F 3 "" H 4850 1650 60  0000 C CNN
	3    4850 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2550 4850 2700
Wire Wire Line
	4500 3550 4500 3400
Wire Wire Line
	4500 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3600
Wire Wire Line
	4850 3100 4850 3400
Connection ~ 4850 3400
Wire Wire Line
	4500 3950 4500 4050
Wire Wire Line
	4500 4050 5450 4050
Wire Wire Line
	5450 4050 5450 4000
Wire Wire Line
	4950 4050 4950 4300
Connection ~ 4950 4050
Wire Wire Line
	3150 2350 4550 2350
Wire Wire Line
	3200 2900 4550 2900
Wire Wire Line
	4200 3750 3450 3750
Wire Wire Line
	3450 3750 3450 2350
Connection ~ 3450 2350
Wire Wire Line
	5150 3800 4750 3800
Wire Wire Line
	4750 3800 4750 3200
Wire Wire Line
	4750 3200 4000 3200
Wire Wire Line
	4000 3200 4000 2900
Connection ~ 4000 2900
Wire Wire Line
	4600 3900 4600 4200
Wire Wire Line
	4600 4200 5850 4200
Connection ~ 4950 4200
Wire Wire Line
	5550 3950 5850 3950
Wire Wire Line
	5850 3950 5850 4200
Connection ~ 4850 3150
Wire Wire Line
	4850 1900 4850 2150
Wire Wire Line
	4950 3050 5200 3050
Wire Wire Line
	5200 3050 5200 2100
Wire Wire Line
	5200 2100 4850 2100
Connection ~ 4850 2100
Wire Wire Line
	4950 2500 5200 2500
Connection ~ 5200 2500
$Comp
L PWR_FLAG #FLG02
U 1 1 61F51080
P 4950 4200
F 0 "#FLG02" H 4950 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 4350 50  0000 C CNN
F 2 "" H 4950 4200 50  0001 C CNN
F 3 "" H 4950 4200 50  0001 C CNN
	1    4950 4200
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 4 1 61F55974
P 5950 3150
F 0 "U1" H 6000 3250 30  0000 C CNN
F 1 "PORT" H 5950 3150 30  0000 C CNN
F 2 "" H 5950 3150 60  0000 C CNN
F 3 "" H 5950 3150 60  0000 C CNN
	4    5950 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 3150 4850 3150
Text Label 5700 3150 0    39   ~ 0
vout
Text Label 4850 1900 0    39   ~ 0
vdd
Text Label 3150 2350 0    39   ~ 0
input_a
Text Label 3200 2900 0    39   ~ 0
input_b
$EndSCHEMATC
