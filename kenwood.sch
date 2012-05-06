EESchema Schematic File Version 2  date Sunday, May 06, 2012 01:54:03 pm
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
LIBS:kenwood-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 4
Title ""
Date "6 may 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR?
U 1 1 4F9BFF4C
P 2450 6550
F 0 "#PWR?" H 2450 6625 40  0001 C CNN
F 1 "GND" H 2450 6575 40  0001 C CNN
	1    2450 6550
	1    0    0    -1  
$EndComp
Text Label 1850 5850 2    60   ~ 0
XTAL1
Text Label 2450 5850 0    60   ~ 0
XTAL2
Text Label 6150 4150 0    60   ~ 0
XTAL2
Text Label 6150 4050 0    60   ~ 0
XTAL1
Text Label 2150 2650 2    60   ~ 0
RESET
Wire Wire Line
	2150 2650 950  2650
Wire Wire Line
	3750 2750 7800 2750
Wire Wire Line
	8250 1900 8050 1900
Wire Wire Line
	8250 5900 7150 5900
Wire Wire Line
	2150 2450 2150 2300
Wire Wire Line
	2150 2300 2150 2050
Connection ~ 2150 2450
Wire Wire Line
	7800 2750 7800 4900
Connection ~ 7350 4800
Wire Wire Line
	7350 6250 8250 6250
Wire Wire Line
	7350 6250 7350 4800
Wire Wire Line
	7350 4800 7350 4100
Connection ~ 7250 4700
Wire Wire Line
	7250 6150 8250 6150
Wire Wire Line
	7250 6150 7250 4700
Wire Wire Line
	7250 4700 7250 4000
Wire Wire Line
	2450 6150 2450 5850
Connection ~ 2450 5850
Connection ~ 1850 5850
Connection ~ 4150 3450
Wire Wire Line
	4150 3550 4250 3550
Wire Wire Line
	4150 3300 4150 3450
Wire Wire Line
	4150 3450 4150 3500
Wire Wire Line
	4150 3500 4150 3550
Connection ~ 4150 5650
Wire Wire Line
	4150 6000 4150 5750
Wire Wire Line
	4150 5750 4150 5650
Wire Wire Line
	4150 5650 4150 5550
Wire Wire Line
	4150 5550 4250 5550
Wire Wire Line
	4150 5750 4250 5750
Wire Wire Line
	7250 4000 8250 4000
Wire Wire Line
	6150 4700 7250 4700
Wire Wire Line
	6150 4500 8250 4500
Wire Wire Line
	8250 4300 6150 4300
Wire Wire Line
	6150 3550 8250 3550
Wire Wire Line
	10150 4750 10100 4750
Wire Wire Line
	10100 4750 9800 4750
Wire Wire Line
	6150 5050 10150 5050
Wire Wire Line
	10100 4750 10100 4850
Wire Wire Line
	10100 4850 10150 4850
Wire Wire Line
	2650 5050 2650 5200
Wire Wire Line
	950  2850 950  2650
Wire Wire Line
	950  2650 950  2500
Wire Wire Line
	950  2000 950  1750
Wire Wire Line
	950  4000 950  3850
Wire Wire Line
	2650 4850 2650 4700
Wire Wire Line
	9800 4750 9800 4900
Wire Wire Line
	10150 4950 10000 4950
Wire Wire Line
	10000 4950 10000 4600
Wire Wire Line
	4250 4050 3600 4050
Wire Wire Line
	6150 3450 8050 3450
Wire Wire Line
	8050 3450 8250 3450
Wire Wire Line
	6150 5150 10150 5150
Connection ~ 10100 4750
Wire Wire Line
	6150 3650 8250 3650
Wire Wire Line
	8250 4400 6150 4400
Wire Wire Line
	8250 4600 6150 4600
Wire Wire Line
	6150 4800 7350 4800
Wire Wire Line
	7350 4100 8250 4100
Wire Wire Line
	7800 4900 6150 4900
Wire Wire Line
	4250 5650 4150 5650
Connection ~ 4150 5750
Wire Wire Line
	4150 3450 4250 3450
Wire Wire Line
	4150 3500 4150 3750
Wire Wire Line
	4150 3750 4250 3750
Connection ~ 4150 3500
Wire Wire Line
	1850 6150 1850 5850
Connection ~ 2150 2300
Wire Wire Line
	6150 5550 7150 5550
Wire Wire Line
	7150 5550 7150 5900
Wire Wire Line
	8050 1900 8050 3450
Connection ~ 8050 3450
Wire Wire Line
	4250 2350 4250 2450
Connection ~ 950  2650
Text Label 1850 5050 2    60   ~ 0
RESET
$Sheet
S 8250 1150 1200 1000
U 4F920A8B
F0 "Power Supply" 60
F1 "power_supply.sch" 60
F2 "AMP_ENABLE" I L 8250 1900 60 
$EndSheet
NoConn ~ 4250 4900
NoConn ~ 4250 4800
$Comp
L C C4
U 1 1 4F91F5F1
P 2150 3000
F 0 "C4" H 2200 3100 50  0000 L CNN
F 1 "4.7u" H 2200 2900 50  0000 L CNN
	1    2150 3000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 4F91F5DC
P 2150 3200
F 0 "#PWR01" H 2150 3275 40  0001 C CNN
F 1 "GND" H 2150 3225 40  0001 C CNN
	1    2150 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4F91F34E
P 4250 2450
F 0 "#PWR02" H 4250 2525 40  0001 C CNN
F 1 "GND" H 4250 2475 40  0001 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4F91F024
P 4000 2350
F 0 "R2" V 4080 2350 50  0000 C CNN
F 1 "10K" V 4000 2350 50  0000 C CNN
	1    4000 2350
	0    -1   -1   0   
$EndComp
$Comp
L TL7705 U1
U 1 1 4F90D968
P 2950 2550
F 0 "U1" H 3200 3000 70  0000 C CNN
F 1 "TL7705" H 3250 2102 70  0000 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 4F91EF76
P 2150 2050
F 0 "#PWR03" H 2150 2200 40  0001 C CNN
F 1 "+5V" H 2150 2170 40  0000 C CNN
	1    2150 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4F90D798
P 2950 3100
F 0 "#PWR04" H 2950 3175 40  0001 C CNN
F 1 "GND" H 2950 3125 40  0001 C CNN
	1    2950 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 4F90D792
P 2950 2000
F 0 "#PWR05" H 2950 2150 40  0001 C CNN
F 1 "+5V" H 2950 2120 40  0000 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA168A-A IC1
U 1 1 4F8F6DBF
P 5150 4550
F 0 "IC1" H 4450 5800 50  0000 L BNN
F 1 "ATMEGA168A-A" H 5350 3150 50  0000 L BNN
F 2 "TQFP32" H 4600 3200 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
$Sheet
S 8250 3250 1200 1500
U 4F8E1AA2
F0 "Audio Pipeline" 60
F1 "audio_pipeline.sch" 60
F2 "MUX_ENABLE" I L 8250 3450 60 
F3 "MUX_B" I L 8250 3650 60 
F4 "MUX_A" I L 8250 3550 60 
F5 "SCL" I L 8250 4100 60 
F6 "SDA" B L 8250 4000 60 
F7 "AUDIO0_MONITOR" O L 8250 4300 60 
F8 "AUDIO1_MONITOR" O L 8250 4400 60 
F9 "AUDIO2_MONITOR" O L 8250 4500 60 
F10 "AUDIO3_MONITOR" O L 8250 4600 60 
$EndSheet
$Sheet
S 8250 5650 1200 750 
U 4F8E1591
F0 "Display" 60
F1 "display.sch" 60
F2 "SDA" B L 8250 6150 60 
F3 "SCL" I L 8250 6250 60 
F4 "BRIGHT" I L 8250 5900 60 
$EndSheet
Text Label 6150 5350 0    60   ~ 0
CFG_BUTTON
$Comp
L +5V #PWR06
U 1 1 4F8E143A
P 3600 3550
F 0 "#PWR06" H 3600 3700 40  0001 C CNN
F 1 "+5V" H 3600 3670 40  0000 C CNN
	1    3600 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4F8E1434
P 3600 4550
F 0 "#PWR07" H 3600 4625 40  0001 C CNN
F 1 "GND" H 3600 4575 40  0001 C CNN
	1    3600 4550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4F8E13B2
P 3600 4300
F 0 "R4" V 3680 4300 50  0000 C CNN
F 1 "1K" V 3600 4300 50  0000 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4F8E1395
P 3600 3800
F 0 "R3" V 3680 3800 50  0000 C CNN
F 1 "9K" V 3600 3800 50  0000 C CNN
	1    3600 3800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4F897C0E
P 9950 5250
F 0 "C3" H 10000 5350 50  0000 L CNN
F 1 "0.1u" H 10000 5150 50  0000 L CNN
	1    9950 5250
	0    1    1    0   
$EndComp
Text Label 9750 5250 2    60   ~ 0
RESET
$Comp
L +5V #PWR08
U 1 1 4F897B54
P 10000 4600
F 0 "#PWR08" H 10000 4690 20  0001 C CNN
F 1 "+5V" H 10000 4690 30  0000 C CNN
	1    10000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 4F897B45
P 9800 4900
F 0 "#PWR09" H 9800 4900 30  0001 C CNN
F 1 "GND" H 9800 4830 30  0001 C CNN
	1    9800 4900
	1    0    0    -1  
$EndComp
Text Label 6150 3950 0    60   ~ 0
SCK
Text Label 6150 3850 0    60   ~ 0
MISO
Text Label 6150 3750 0    60   ~ 0
MOSI
Text Label 1850 4950 2    60   ~ 0
SCK
Text Label 1850 4850 2    60   ~ 0
MISO
Text Label 2650 4950 0    60   ~ 0
MOSI
$Comp
L CONN_6 SERIAL1
U 1 1 4F896F9C
P 10500 5000
F 0 "SERIAL1" V 10450 5000 60  0000 C CNN
F 1 "CONN_6" V 10550 5000 60  0000 C CNN
	1    10500 5000
	1    0    0    -1  
$EndComp
Text Label 6150 5250 0    60   ~ 0
IR_IN
Text Label 6150 5750 0    60   ~ 0
VOL_ENC_B
Text Label 6150 5650 0    60   ~ 0
VOL_ENC_A
Text Label 6150 3450 0    60   ~ 0
AMP_ENABLE
$Comp
L CONN_3X2 ICSP1
U 1 1 4F88E4B9
P 2250 5000
F 0 "ICSP1" H 2250 5250 50  0000 C CNN
F 1 "CONN_3X2" V 2250 5050 40  0000 C CNN
	1    2250 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4F86BB5A
P 1850 6550
F 0 "#PWR010" H 1850 6625 40  0001 C CNN
F 1 "GND" H 1850 6575 40  0001 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4F86BAC4
P 2450 6350
F 0 "C1" H 2500 6450 50  0000 L CNN
F 1 "22P" H 2500 6250 50  0000 L CNN
	1    2450 6350
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 4F86BAB8
P 1850 6350
F 0 "C2" H 1900 6450 50  0000 L CNN
F 1 "22P" H 1900 6250 50  0000 L CNN
	1    1850 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 4F865359
P 950 4000
F 0 "#PWR011" H 950 4075 40  0001 C CNN
F 1 "GND" H 950 4025 40  0001 C CNN
	1    950  4000
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 4F8652D3
P 950 3350
F 0 "SW1" H 950 3450 70  0000 C CNN
F 1 "SPST" H 950 3250 70  0000 C CNN
	1    950  3350
	0    -1   -1   0   
$EndComp
$Comp
L CRYSTAL Q1
U 1 1 4F8650FF
P 2150 5850
F 0 "Q1" H 2150 6000 60  0000 C CNN
F 1 "CRYSTAL" H 2150 5700 60  0000 C CNN
	1    2150 5850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4F86511C
P 950 2250
F 0 "R1" V 1030 2250 50  0000 C CNN
F 1 "10K" V 950 2250 50  0000 C CNN
	1    950  2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 4F8645FC
P 950 1750
F 0 "#PWR012" H 950 1900 40  0001 C CNN
F 1 "+5V" H 950 1870 40  0000 C CNN
	1    950  1750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 4F84C247
P 4150 3300
F 0 "#PWR013" H 4150 3450 40  0001 C CNN
F 1 "+5V" H 4150 3420 40  0000 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 4F8254DC
P 2650 4700
F 0 "#PWR014" H 2650 4850 40  0001 C CNN
F 1 "+5V" H 2650 4820 40  0000 C CNN
	1    2650 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4F8254C1
P 2650 5200
F 0 "#PWR015" H 2650 5275 40  0001 C CNN
F 1 "GND" H 2650 5225 40  0001 C CNN
	1    2650 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4F8253B0
P 4150 6000
F 0 "#PWR016" H 4150 6075 40  0001 C CNN
F 1 "GND" H 4150 6025 40  0001 C CNN
	1    4150 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC