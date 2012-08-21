EESchema Schematic File Version 2  date 8/20/2012 10:58:08 AM
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:valves
LIBS:G5LA-1
LIBS:RAC02
LIBS:T77
LIBS:kenwood_psu-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "20 aug 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6750 3650
Wire Wire Line
	2950 4450 4650 4450
Wire Wire Line
	5300 3650 4750 3650
Wire Wire Line
	4750 3650 4750 4350
Connection ~ 4950 4350
Wire Wire Line
	6750 4350 6750 4100
Wire Wire Line
	6600 4750 6750 4750
Wire Wire Line
	5100 4950 4650 4950
Wire Wire Line
	4650 4950 4650 3100
Wire Wire Line
	4650 3100 4400 3100
Connection ~ 4750 4350
Connection ~ 4650 4450
Wire Wire Line
	4950 4850 4950 4950
Connection ~ 4950 4950
Connection ~ 6750 4350
Wire Wire Line
	6750 4750 6750 5000
Wire Wire Line
	5300 3250 4750 3250
Wire Wire Line
	4750 3250 4750 3000
Wire Wire Line
	4750 3000 4400 3000
Wire Wire Line
	3750 4350 5100 4350
Wire Wire Line
	3250 4350 2950 4350
Wire Wire Line
	7500 4350 6600 4350
Wire Wire Line
	7500 4050 7050 4050
Wire Wire Line
	7050 4050 7050 3650
Wire Wire Line
	7050 3650 6350 3650
Wire Wire Line
	7350 3250 6350 3250
Connection ~ 6750 3250
$Comp
L GND #PWR01
U 1 1 50324F8E
P 7350 3250
F 0 "#PWR01" H 7350 3250 30  0001 C CNN
F 1 "GND" H 7350 3180 30  0001 C CNN
	1    7350 3250
	0    -1   -1   0   
$EndComp
NoConn ~ 4000 5750
Text Label 4400 3000 0    60   ~ 0
AC_H_OUT
Text Label 3750 4350 0    60   ~ 0
AC_H_FUSED
Text Label 2950 4450 0    60   ~ 0
AC_N
Text Label 2950 4350 0    60   ~ 0
AC_H
$Comp
L T77 K1
U 1 1 5031371C
P 5850 3450
F 0 "K1" H 5900 3500 60  0000 C CNN
F 1 "T77" H 5900 3400 60  0000 C CNN
	1    5850 3450
	-1   0    0    1   
$EndComp
$Comp
L CP1 C1
U 1 1 502460B5
P 6750 4550
F 0 "C1" H 6800 4650 50  0000 L CNN
F 1 "330u" H 6800 4450 50  0000 L CNN
F 4 "P5113-ND" H 6750 4550 60  0001 C CNN "Digikey"
	1    6750 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 50246087
P 7500 4250
F 0 "#PWR02" H 7500 4250 30  0001 C CNN
F 1 "GND" H 7500 4180 30  0001 C CNN
	1    7500 4250
	0    1    1    0   
$EndComp
$Comp
L VR VR1
U 1 1 50245F5E
P 4950 4600
F 0 "VR1" V 5030 4600 50  0000 C CNN
F 1 "VR" V 4950 4600 50  0000 C CNN
F 4 "495-4375-ND" H 4950 4600 60  0001 C CNN "Digikey"
	1    4950 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P9
U 1 1 5023D0A5
P 4150 5750
F 0 "P9" H 4230 5750 40  0000 L CNN
F 1 "CONN_1" H 4150 5805 30  0001 C CNN
	1    4150 5750
	1    0    0    -1  
$EndComp
Text Notes 4100 5450 0    60   ~ 0
Mounting holes
$Comp
L CONN_1 P8
U 1 1 5023D095
P 4150 5550
F 0 "P8" H 4230 5550 40  0000 L CNN
F 1 "CONN_1" H 4150 5605 30  0001 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 50229DB1
P 6750 4100
F 0 "#PWR03" H 6750 4190 20  0001 C CNN
F 1 "+5V" H 6750 4190 30  0000 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L RAC02 U1
U 1 1 50226242
P 5850 4400
F 0 "U1" H 5850 4300 50  0000 C CNN
F 1 "RAC02" H 5850 4500 50  0000 C CNN
F 2 "MODULE" H 5850 4400 50  0001 C CNN
F 3 "DOCUMENTATION" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 50203484
P 3500 4350
F 0 "F1" H 3600 4400 40  0000 C CNN
F 1 "1A" H 3400 4300 40  0000 C CNN
F 4 "486-1172-ND,486-1172-ND,F3625-ND" H 3500 4350 60  0001 C CNN "Digikey"
	1    3500 4350
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 50203450
P 6750 3450
F 0 "D1" H 6750 3550 40  0000 C CNN
F 1 "DIODE" H 6750 3350 40  0000 C CNN
F 4 "568-4860-6-ND" H 6750 3450 60  0001 C CNN "Digikey"
	1    6750 3450
	0    1    1    0   
$EndComp
$Comp
L CONN_1 P5
U 1 1 50203313
P 4250 3100
F 0 "P5" H 4330 3100 40  0000 L CNN
F 1 "CONN_1" H 4250 3155 30  0001 C CNN
	1    4250 3100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 502032A0
P 7500 4150
F 0 "#PWR04" H 7500 4150 30  0001 C CNN
F 1 "GND" H 7500 4080 30  0001 C CNN
	1    7500 4150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 50203278
P 6750 5000
F 0 "#PWR05" H 6750 5000 30  0001 C CNN
F 1 "GND" H 6750 4930 30  0001 C CNN
	1    6750 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 50203273
P 4000 5550
F 0 "#PWR06" H 4000 5550 30  0001 C CNN
F 1 "GND" H 4000 5480 30  0001 C CNN
	1    4000 5550
	0    1    1    0   
$EndComp
Text Notes 7800 3650 0    60   ~ 0
Power output to logic, with relay return.
$Comp
L CONN_4 P7
U 1 1 50203167
P 7850 4200
F 0 "P7" V 7800 4200 50  0000 C CNN
F 1 "CONN_4" V 7900 4200 50  0000 C CNN
F 4 "WM4926-ND" H 7850 4200 60  0001 C CNN "Digikey"
	1    7850 4200
	1    0    0    -1  
$EndComp
Text Notes 4400 4100 2    60   ~ 0
Mains power in.
Text Notes 4400 2850 2    60   ~ 0
Power output to amp.
$Comp
L CONN_1 P4
U 1 1 50203107
P 4250 3000
F 0 "P4" H 4330 3000 40  0000 L CNN
F 1 "CONN_1" H 4250 3055 30  0001 C CNN
	1    4250 3000
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P2
U 1 1 50203098
P 2800 4450
F 0 "P2" H 2880 4450 40  0000 L CNN
F 1 "CONN_1" H 2800 4505 30  0001 C CNN
	1    2800 4450
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P1
U 1 1 50203044
P 2800 4350
F 0 "P1" H 2880 4350 40  0000 L CNN
F 1 "CONN_1" H 2800 4405 30  0001 C CNN
	1    2800 4350
	-1   0    0    1   
$EndComp
$EndSCHEMATC
