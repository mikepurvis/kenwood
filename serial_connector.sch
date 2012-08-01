EESchema Schematic File Version 2  date Wednesday, April 18, 2012 09:24:04 pm
LIBS:atmel
LIBS:device
LIBS:regul
LIBS:power
LIBS:MAX4582
LIBS:conn
LIBS:special
LIBS:MCP42010
LIBS:DS1882
LIBS:kenwood-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 2 4
Title ""
Date "19 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6050 4100 5850 4100
Wire Wire Line
	5550 3250 5550 3900
Wire Wire Line
	5550 3900 6050 3900
Wire Wire Line
	5900 3800 5900 3700
Wire Wire Line
	5900 3700 6050 3700
Wire Wire Line
	6050 4200 5600 4200
Wire Wire Line
	5600 4200 5600 4500
Wire Wire Line
	5600 4500 6050 4500
Wire Wire Line
	6050 3800 5900 3800
Wire Wire Line
	5900 3800 4950 3800
Wire Wire Line
	4950 3800 4950 3900
Connection ~ 5900 3800
Wire Wire Line
	6050 4000 5850 4000
Text HLabel 5850 4100 0    60   Input ~ 0
RX
Text HLabel 5850 4000 0    60   Output ~ 0
TX
$Comp
L +5V #PWR?
U 1 1 4F8E1903
P 5550 3250
F 0 "#PWR?" H 5550 3340 20  0001 C CNN
F 1 "+5V" H 5550 3340 30  0000 C CNN
	1    5550 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F8E18C5
P 4950 3900
F 0 "#PWR?" H 4950 3900 30  0001 C CNN
F 1 "GND" H 4950 3830 30  0001 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
Text HLabel 6050 4500 2    60   Output ~ 0
DTR
$Comp
L CONN_6 SERIAL
U 1 1 4F8E17A8
P 6400 3950
F 0 "SERIAL" V 6350 3950 60  0000 C CNN
F 1 "CONN_6" V 6450 3950 60  0000 C CNN
	1    6400 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
