EESchema Schematic File Version 2
LIBS:ControlCircuit-rescue
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
LIBS:tft-proto-mi0283qt-9a
LIBS:meisei-m4-24h
LIBS:mc34063a
LIBS:ControlCircuit-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L ATMEGA644-A IC501
U 1 1 58AFCD20
P 5600 3650
F 0 "IC501" H 4800 5550 50  0000 C CNN
F 1 "ATMEGA644-A" H 6250 1750 50  0000 C CNN
F 2 "Housings_QFP:LQFP-44_10x10mm_Pitch0.8mm" H 5600 3650 50  0000 C CIN
F 3 "" H 5600 3650 50  0000 C CNN
	1    5600 3650
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-10 CON501
U 1 1 58AFDD08
P 10450 1350
F 0 "CON501" H 10280 1680 50  0000 C CNN
F 1 "AVR-ISP-10" H 10110 1020 50  0000 L BNN
F 2 "Connectors:IDC_Header_Straight_10pins" V 9700 1400 50  0001 C CNN
F 3 "" H 10450 1350 50  0000 C CNN
	1    10450 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR053
U 1 1 58AFDE0F
P 4700 900
F 0 "#PWR053" H 4700 750 50  0001 C CNN
F 1 "+3.3V" H 4700 1040 50  0000 C CNN
F 2 "" H 4700 900 50  0000 C CNN
F 3 "" H 4700 900 50  0000 C CNN
	1    4700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1350 9700 1350
Text Label 9700 1350 0    60   ~ 0
RESET
Wire Wire Line
	4600 1950 4400 1950
Text Label 4400 1950 0    60   ~ 0
RESET
$Comp
L +3.3V #PWR054
U 1 1 58AFE137
P 10800 900
F 0 "#PWR054" H 10800 750 50  0001 C CNN
F 1 "+3.3V" H 10800 1040 50  0000 C CNN
F 2 "" H 10800 900 50  0000 C CNN
F 3 "" H 10800 900 50  0000 C CNN
	1    10800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1150 10800 1150
Wire Wire Line
	10800 1150 10800 900 
$Comp
L GND #PWR055
U 1 1 58AFE166
P 10800 1700
F 0 "#PWR055" H 10800 1450 50  0001 C CNN
F 1 "GND" H 10800 1550 50  0000 C CNN
F 2 "" H 10800 1700 50  0000 C CNN
F 3 "" H 10800 1700 50  0000 C CNN
	1    10800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1550 10800 1550
Wire Wire Line
	10800 1250 10800 1700
Wire Wire Line
	10500 1450 10800 1450
Connection ~ 10800 1550
Wire Wire Line
	10500 1350 10800 1350
Connection ~ 10800 1450
Wire Wire Line
	10500 1250 10800 1250
Connection ~ 10800 1350
Wire Wire Line
	6600 3350 7000 3350
Wire Wire Line
	6600 3450 7000 3450
Wire Wire Line
	6600 3550 7000 3550
Wire Wire Line
	10250 1550 9700 1550
Wire Wire Line
	10250 1450 9700 1450
Wire Wire Line
	10250 1150 9700 1150
Text Label 9700 1150 0    60   ~ 0
MOSI
Text Label 9700 1450 0    60   ~ 0
SCK
Text Label 9700 1550 0    60   ~ 0
MISO
Text Label 6750 3550 0    60   ~ 0
SCK
Text Label 6700 3450 0    60   ~ 0
MISO
Text Label 6700 3350 0    60   ~ 0
MOSI
$Comp
L Crystal Y501
U 1 1 58AFE5B1
P 4100 2550
F 0 "Y501" H 4100 2700 50  0000 C CNN
F 1 "Crystal" H 4100 2400 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 4100 2550 50  0001 C CNN
F 3 "" H 4100 2550 50  0000 C CNN
	1    4100 2550
	0    1    1    0   
$EndComp
$Comp
L C C501
U 1 1 58AFE5FE
P 3650 2350
F 0 "C501" H 3675 2450 50  0000 L CNN
F 1 "C" H 3675 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3688 2200 50  0001 C CNN
F 3 "" H 3650 2350 50  0000 C CNN
	1    3650 2350
	0    1    1    0   
$EndComp
$Comp
L C C502
U 1 1 58AFE643
P 3650 2750
F 0 "C502" H 3675 2850 50  0000 L CNN
F 1 "C" H 3675 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3688 2600 50  0001 C CNN
F 3 "" H 3650 2750 50  0000 C CNN
	1    3650 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR056
U 1 1 58AFE6AE
P 3350 2350
F 0 "#PWR056" H 3350 2100 50  0001 C CNN
F 1 "GND" H 3350 2200 50  0000 C CNN
F 2 "" H 3350 2350 50  0000 C CNN
F 3 "" H 3350 2350 50  0000 C CNN
	1    3350 2350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR057
U 1 1 58AFE704
P 3350 2750
F 0 "#PWR057" H 3350 2500 50  0001 C CNN
F 1 "GND" H 3350 2600 50  0000 C CNN
F 2 "" H 3350 2750 50  0000 C CNN
F 3 "" H 3350 2750 50  0000 C CNN
	1    3350 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2350 3500 2350
Wire Wire Line
	3350 2750 3500 2750
Wire Wire Line
	3800 2350 4600 2350
Wire Wire Line
	4100 2350 4100 2400
Connection ~ 4100 2350
Wire Wire Line
	3800 2750 4600 2750
Wire Wire Line
	4100 2700 4100 2750
Connection ~ 4100 2750
Wire Notes Line
	11050 2000 11050 700 
Wire Notes Line
	11050 700  9550 700 
Wire Notes Line
	9550 700  9550 2000
Wire Notes Line
	9550 2000 11050 2000
Text Notes 9600 1950 0    60   ~ 0
Programming interface
Text HLabel 7000 3350 2    60   Input ~ 0
MOSI
Text HLabel 7000 3450 2    60   Input ~ 0
MISO
Text HLabel 7000 3550 2    60   Input ~ 0
SCK
Text HLabel 7000 2250 2    60   Input ~ 0
ADC0
Text HLabel 7000 2150 2    60   Input ~ 0
ADC1
Text HLabel 7000 2050 2    60   Input ~ 0
ADC2
Text HLabel 7000 1950 2    60   Input ~ 0
ADC3
Wire Wire Line
	6600 1950 7000 1950
Wire Wire Line
	6600 2050 7000 2050
Wire Wire Line
	6600 2150 7000 2150
Wire Wire Line
	6600 2250 7000 2250
Wire Wire Line
	6600 3250 7000 3250
Wire Wire Line
	6600 3150 7000 3150
Wire Wire Line
	6600 3050 7000 3050
Text Label 6800 3050 0    60   ~ 0
CS
Text Label 6800 2950 0    60   ~ 0
WR
Text HLabel 7000 2850 2    60   Input ~ 0
RST
Text HLabel 7000 3050 2    60   Input ~ 0
CS
Text HLabel 7000 2950 2    60   Input ~ 0
WR
Wire Wire Line
	6600 3750 7000 3750
Wire Wire Line
	6600 3850 7000 3850
Wire Wire Line
	6600 3950 7000 3950
Wire Wire Line
	6600 4050 7000 4050
Wire Wire Line
	6600 4150 7000 4150
Wire Wire Line
	6600 4250 7000 4250
Wire Wire Line
	6600 4350 7000 4350
Wire Wire Line
	6600 4450 7000 4450
Text HLabel 7000 3750 2    60   Input ~ 0
PC0
Text HLabel 7000 3850 2    60   Input ~ 0
PC1
Text HLabel 7000 3950 2    60   Input ~ 0
PC2
Text HLabel 7000 4050 2    60   Input ~ 0
PC3
Text HLabel 7000 4150 2    60   Input ~ 0
PC4
Text HLabel 7000 4250 2    60   Input ~ 0
PC5
Text HLabel 7000 4350 2    60   Input ~ 0
PC6
Text HLabel 7000 4450 2    60   Input ~ 0
PC7
Wire Wire Line
	6600 4650 7000 4650
Wire Wire Line
	6600 4750 7000 4750
Wire Wire Line
	6600 4850 7000 4850
Wire Wire Line
	6600 4950 7000 4950
Wire Wire Line
	6600 5050 7000 5050
Wire Wire Line
	6600 5150 7000 5150
Wire Wire Line
	6600 5250 7000 5250
Wire Wire Line
	6600 5350 7000 5350
Text HLabel 7000 4650 2    60   Input ~ 0
PD0
Text HLabel 7000 4750 2    60   Input ~ 0
PD1
Text HLabel 7000 4850 2    60   Input ~ 0
PD2
Text HLabel 7000 4950 2    60   Input ~ 0
PD3
Text HLabel 7000 5050 2    60   Input ~ 0
PD4
Text HLabel 7000 5150 2    60   Input ~ 0
PD5
Text HLabel 7000 5250 2    60   Input ~ 0
PD6
Text HLabel 7000 5350 2    60   Input ~ 0
PD7
Text HLabel 7000 2350 2    60   Input ~ 0
ADC4
Text HLabel 7000 2450 2    60   Input ~ 0
ADC5
Text HLabel 7000 2550 2    60   Input ~ 0
ADC6
Text HLabel 7000 2650 2    60   Input ~ 0
ADC7
Wire Wire Line
	6600 2350 7000 2350
Wire Wire Line
	6600 2450 7000 2450
Wire Wire Line
	6600 2550 7000 2550
Wire Wire Line
	6600 2650 7000 2650
Text HLabel 7000 3150 2    60   Input ~ 0
PB3
Text HLabel 7000 3250 2    60   Input ~ 0
PB4
Wire Wire Line
	6600 2850 7000 2850
Wire Wire Line
	6600 2950 7000 2950
Text HLabel 4350 3150 0    60   Input ~ 0
AREF
Wire Wire Line
	4350 3150 4600 3150
Text Label 6750 2850 0    60   ~ 0
RST
$Comp
L L L501
U 1 1 58B7F6E5
P 5700 1350
F 0 "L501" V 5650 1350 50  0000 C CNN
F 1 "10uH" V 5775 1350 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 5700 1350 50  0001 C CNN
F 3 "" H 5700 1350 50  0000 C CNN
	1    5700 1350
	1    0    0    -1  
$EndComp
$Comp
L C C509
U 1 1 58B7F754
P 6050 1350
F 0 "C509" H 6075 1450 50  0000 L CNN
F 1 "100uF" H 6075 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6088 1200 50  0001 C CNN
F 3 "" H 6050 1350 50  0000 C CNN
	1    6050 1350
	1    0    0    -1  
$EndComp
$Comp
L C C503
U 1 1 58B7F7C6
P 4500 1150
F 0 "C503" H 4525 1250 50  0000 L CNN
F 1 "100uF" H 4400 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4538 1000 50  0001 C CNN
F 3 "" H 4500 1150 50  0000 C CNN
	1    4500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1650 5700 1500
Wire Wire Line
	5700 1550 6050 1550
Wire Wire Line
	6050 1550 6050 1500
Connection ~ 5700 1550
$Comp
L GND #PWR058
U 1 1 58B7F9C2
P 6050 1100
F 0 "#PWR058" H 6050 850 50  0001 C CNN
F 1 "GND" H 6050 950 50  0000 C CNN
F 2 "" H 6050 1100 50  0000 C CNN
F 3 "" H 6050 1100 50  0000 C CNN
	1    6050 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 1100 6050 1200
Wire Wire Line
	5700 1050 5700 1200
Wire Wire Line
	4500 1300 4500 1400
Wire Wire Line
	4500 1400 4700 1400
Wire Wire Line
	4700 900  4700 1600
$Comp
L GND #PWR059
U 1 1 58B818FA
P 4500 900
F 0 "#PWR059" H 4500 650 50  0001 C CNN
F 1 "GND" H 4500 750 50  0000 C CNN
F 2 "" H 4500 900 50  0000 C CNN
F 3 "" H 4500 900 50  0000 C CNN
	1    4500 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 900  4500 1000
$Comp
L +3.3V #PWR060
U 1 1 58B819B1
P 5100 900
F 0 "#PWR060" H 5100 750 50  0001 C CNN
F 1 "+3.3V" H 5100 1040 50  0000 C CNN
F 2 "" H 5100 900 50  0000 C CNN
F 3 "" H 5100 900 50  0000 C CNN
	1    5100 900 
	1    0    0    -1  
$EndComp
$Comp
L C C504
U 1 1 58B819B7
P 4900 1150
F 0 "C504" H 4925 1250 50  0000 L CNN
F 1 "100uF" H 4800 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4938 1000 50  0001 C CNN
F 3 "" H 4900 1150 50  0000 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1300 4900 1400
Wire Wire Line
	4900 1400 5100 1400
Wire Wire Line
	5100 900  5100 1500
$Comp
L GND #PWR061
U 1 1 58B819C0
P 4900 900
F 0 "#PWR061" H 4900 650 50  0001 C CNN
F 1 "GND" H 4900 750 50  0000 C CNN
F 2 "" H 4900 900 50  0000 C CNN
F 3 "" H 4900 900 50  0000 C CNN
	1    4900 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 900  4900 1000
$Comp
L +3.3V #PWR062
U 1 1 58B819E4
P 5500 900
F 0 "#PWR062" H 5500 750 50  0001 C CNN
F 1 "+3.3V" H 5500 1040 50  0000 C CNN
F 2 "" H 5500 900 50  0000 C CNN
F 3 "" H 5500 900 50  0000 C CNN
	1    5500 900 
	1    0    0    -1  
$EndComp
$Comp
L C C506
U 1 1 58B819EA
P 5300 1150
F 0 "C506" H 5325 1250 50  0000 L CNN
F 1 "100uF" H 5200 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5338 1000 50  0001 C CNN
F 3 "" H 5300 1150 50  0000 C CNN
	1    5300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1300 5300 1400
Wire Wire Line
	5300 1400 5500 1400
Wire Wire Line
	5500 900  5500 1650
$Comp
L GND #PWR063
U 1 1 58B819F3
P 5300 900
F 0 "#PWR063" H 5300 650 50  0001 C CNN
F 1 "GND" H 5300 750 50  0000 C CNN
F 2 "" H 5300 900 50  0000 C CNN
F 3 "" H 5300 900 50  0000 C CNN
	1    5300 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 900  5300 1000
$Comp
L +3.3V #PWR064
U 1 1 58B81A16
P 5700 1050
F 0 "#PWR064" H 5700 900 50  0001 C CNN
F 1 "+3.3V" H 5700 1190 50  0000 C CNN
F 2 "" H 5700 1050 50  0000 C CNN
F 3 "" H 5700 1050 50  0000 C CNN
	1    5700 1050
	1    0    0    -1  
$EndComp
Connection ~ 5500 1400
Wire Wire Line
	5400 1650 5400 1500
Wire Wire Line
	5400 1500 5100 1500
Connection ~ 5100 1400
Wire Wire Line
	5300 1650 5300 1600
Wire Wire Line
	5300 1600 4700 1600
Connection ~ 4700 1400
$Comp
L GND #PWR065
U 1 1 58B90CAA
P 5350 5850
F 0 "#PWR065" H 5350 5600 50  0001 C CNN
F 1 "GND" H 5350 5700 50  0000 C CNN
F 2 "" H 5350 5850 50  0000 C CNN
F 3 "" H 5350 5850 50  0000 C CNN
	1    5350 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR066
U 1 1 58B90D02
P 5550 5850
F 0 "#PWR066" H 5550 5600 50  0001 C CNN
F 1 "GND" H 5550 5700 50  0000 C CNN
F 2 "" H 5550 5850 50  0000 C CNN
F 3 "" H 5550 5850 50  0000 C CNN
	1    5550 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR067
U 1 1 58B90D2B
P 5750 5850
F 0 "#PWR067" H 5750 5600 50  0001 C CNN
F 1 "GND" H 5750 5700 50  0000 C CNN
F 2 "" H 5750 5850 50  0000 C CNN
F 3 "" H 5750 5850 50  0000 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR068
U 1 1 58B90D54
P 5150 5850
F 0 "#PWR068" H 5150 5600 50  0001 C CNN
F 1 "GND" H 5150 5700 50  0000 C CNN
F 2 "" H 5150 5850 50  0000 C CNN
F 3 "" H 5150 5850 50  0000 C CNN
	1    5150 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5650 5300 5700
Wire Wire Line
	5300 5700 5150 5700
Wire Wire Line
	5150 5700 5150 5850
Wire Wire Line
	5400 5650 5400 5750
Wire Wire Line
	5400 5750 5350 5750
Wire Wire Line
	5350 5750 5350 5850
Wire Wire Line
	5500 5650 5500 5750
Wire Wire Line
	5500 5750 5550 5750
Wire Wire Line
	5550 5750 5550 5850
Wire Wire Line
	5600 5650 5600 5700
Wire Wire Line
	5600 5700 5750 5700
Wire Wire Line
	5750 5700 5750 5850
$EndSCHEMATC
