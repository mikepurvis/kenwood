EESchema Schematic File Version 2  date 8/7/2012 1:04:39 PM
LIBS:atmel
LIBS:device
LIBS:regul
LIBS:power
LIBS:MAX4582
LIBS:conn
LIBS:special
LIBS:MCP42010
LIBS:DS1882
LIBS:display
LIBS:interface
LIBS:BP5037
LIBS:MCP23017
LIBS:lumex
LIBS:PEC11L
LIBS:TSOP382
LIBS:G5LA-1
LIBS:RC4580
LIBS:DMP2066LSD
LIBS:MAX660
LIBS:kenwood-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 3 3
Title ""
Date "7 aug 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4100 1900
Wire Wire Line
	3900 1900 4400 1900
Wire Wire Line
	3400 1900 3150 1900
Wire Wire Line
	3150 1900 3150 2700
Wire Wire Line
	3150 2700 2900 2700
Connection ~ 4800 5100
Wire Wire Line
	5650 4950 5650 5100
Wire Wire Line
	5650 5100 4300 5100
Wire Wire Line
	4800 4550 4500 4550
Wire Wire Line
	4500 4550 4500 4800
Wire Wire Line
	4500 4800 4300 4800
Connection ~ 4950 3300
Wire Wire Line
	4950 3200 4950 3450
Wire Wire Line
	6650 3200 6650 3700
Wire Wire Line
	6650 3200 6450 3200
Connection ~ 6800 2900
Wire Wire Line
	6450 3000 7050 3000
Connection ~ 4950 3000
Wire Wire Line
	2900 3300 2900 2800
Wire Wire Line
	2900 3000 4950 3000
Connection ~ 2900 2900
Wire Wire Line
	6450 2900 6800 2900
Wire Wire Line
	4950 3000 4950 2900
Wire Wire Line
	6450 3300 6800 3300
Wire Wire Line
	6800 3300 6800 2650
Wire Wire Line
	4450 3000 4450 3700
Connection ~ 4450 3000
Wire Wire Line
	4450 3700 6650 3700
Wire Wire Line
	4300 4950 4800 4950
Wire Wire Line
	2800 4800 2800 4300
Wire Wire Line
	2800 4300 3550 4300
Connection ~ 5350 5100
Wire Wire Line
	5900 1900 5200 1900
Connection ~ 5450 1900
$Comp
L GND #PWR037
U 1 1 501C03E7
P 4100 2300
F 0 "#PWR037" H 4100 2300 30  0001 C CNN
F 1 "GND" H 4100 2230 30  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 501C03D0
P 4100 2100
F 0 "C12" H 4150 2200 50  0000 L CNN
F 1 "0.68u" H 4150 2000 50  0000 L CNN
F 4 "490-1541-1-ND" H 4100 2100 60  0001 C CNN "Digikey"
	1    4100 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 501C00FA
P 4800 2200
F 0 "#PWR038" H 4800 2200 30  0001 C CNN
F 1 "GND" H 4800 2130 30  0001 C CNN
	1    4800 2200
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U9
U 1 1 501C00DD
P 4800 1950
F 0 "U9" H 4950 1754 60  0000 C CNN
F 1 "LM7805" H 4800 2150 60  0000 C CNN
F 4 "497-2957-5-ND" H 4800 1950 60  0001 C CNN "Digikey"
F 5 "1" H 4800 1950 60  0001 C CNN "DNP"
	1    4800 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 501BED49
P 5350 4700
F 0 "#PWR039" H 5350 4700 30  0001 C CNN
F 1 "GND" H 5350 4630 30  0001 C CNN
	1    5350 4700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR040
U 1 1 501BED47
P 5450 2300
F 0 "#PWR040" H 5450 2300 30  0001 C CNN
F 1 "GND" H 5450 2230 30  0001 C CNN
	1    5450 2300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C10
U 1 1 501BED37
P 5450 2100
F 0 "C10" H 5500 2200 50  0000 L CNN
F 1 "150u" H 5500 2000 50  0000 L CNN
F 4 "P5138-ND" H 5450 2100 60  0001 C CNN "Digikey"
	1    5450 2100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C11
U 1 1 501BED26
P 5350 4900
F 0 "C11" H 5400 5000 50  0000 L CNN
F 1 "150u" H 5400 4800 50  0000 L CNN
F 4 "P5138-ND" H 5350 4900 60  0001 C CNN "Digikey"
	1    5350 4900
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 501BEAB5
P 3650 1900
F 0 "F1" H 3750 1950 40  0000 C CNN
F 1 "FUSE" H 3550 1850 40  0000 C CNN
F 4 "507-1482-1-ND" H 3650 1900 60  0001 C CNN "Digikey"
	1    3650 1900
	1    0    0    -1  
$EndComp
Text Notes 5650 3950 0    60   ~ 0
Second FET in this package is just being used as a diode.
NoConn ~ 2800 5100
NoConn ~ 2800 4950
$Comp
L +5V #PWR041
U 1 1 5019EAE9
P 3550 4300
F 0 "#PWR041" H 3550 4390 20  0001 C CNN
F 1 "+5V" H 3550 4390 30  0000 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5019EADB
P 3550 5600
F 0 "#PWR042" H 3550 5600 30  0001 C CNN
F 1 "GND" H 3550 5530 30  0001 C CNN
	1    3550 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5019EAD5
P 4800 5500
F 0 "#PWR043" H 4800 5500 30  0001 C CNN
F 1 "GND" H 4800 5430 30  0001 C CNN
	1    4800 5500
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR044
U 1 1 5019EACF
P 5650 4950
F 0 "#PWR044" H 5650 5090 20  0001 C CNN
F 1 "-5V" H 5650 5060 30  0000 C CNN
	1    5650 4950
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5019EAB5
P 4800 5300
F 0 "C2" H 4850 5400 50  0000 L CNN
F 1 "15u" H 4850 5200 50  0000 L CNN
F 4 "445-8027-1-ND" H 4800 5300 60  0001 C CNN "Digikey"
	1    4800 5300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5019EAA1
P 4800 4750
F 0 "C1" H 4850 4850 50  0000 L CNN
F 1 "15u" H 4850 4650 50  0000 L CNN
F 4 "445-8027-1-ND" H 4800 4750 60  0001 C CNN "Digikey"
	1    4800 4750
	1    0    0    -1  
$EndComp
$Comp
L MAX660 U1
U 1 1 5019E9C9
P 3550 4950
F 0 "U1" H 3550 4850 50  0000 C CNN
F 1 "MAX660" H 3550 5050 50  0000 C CNN
F 2 "MODULE" H 3550 4950 50  0001 C CNN
F 3 "DOCUMENTATION" H 3550 4950 50  0001 C CNN
F 4 "MAX660M-ND" H 3550 4950 60  0001 C CNN "Digikey"
	1    3550 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 50195E98
P 4950 3450
F 0 "#PWR045" H 4950 3450 30  0001 C CNN
F 1 "GND" H 4950 3380 30  0001 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR046
U 1 1 50189DC4
P 6800 2650
F 0 "#PWR046" H 6800 2740 20  0001 C CNN
F 1 "+5V" H 6800 2740 30  0000 C CNN
	1    6800 2650
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR047
U 1 1 50189DBE
P 5900 1900
F 0 "#PWR047" H 5900 1990 20  0001 C CNN
F 1 "+5V" H 5900 1990 30  0000 C CNN
	1    5900 1900
	0    1    1    0   
$EndComp
$Comp
L DMP2066LSD U3
U 1 1 50189D6F
P 5700 3100
F 0 "U3" H 5300 3500 50  0000 C CNN
F 1 "DMP2066LSD" H 5900 2700 50  0000 C CNN
F 2 "MODULE" H 5400 2700 50  0001 C CNN
F 3 "DOCUMENTATION" H 5700 2800 50  0001 C CNN
F 4 "DMP2066LSDDICT-ND" H 5700 3100 60  0001 C CNN "Digikey"
	1    5700 3100
	-1   0    0    -1  
$EndComp
Text Label 3050 3000 0    60   ~ 0
AMP_RELAY_COIL
$Comp
L GND #PWR048
U 1 1 50078FA5
P 2900 3300
F 0 "#PWR048" H 2900 3300 30  0001 C CNN
F 1 "GND" H 2900 3230 30  0001 C CNN
	1    2900 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P0
U 1 1 50076640
P 2550 2850
F 0 "P0" V 2500 2850 50  0000 C CNN
F 1 "CONN_4" V 2600 2850 50  0000 C CNN
F 4 "WM4926-ND" H 2550 2850 60  0001 C CNN "Digikey"
	1    2550 2850
	-1   0    0    1   
$EndComp
Text HLabel 7050 3000 2    60   Input ~ 0
AMP_ENABLE
$EndSCHEMATC
