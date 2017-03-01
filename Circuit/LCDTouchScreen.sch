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
Sheet 4 5
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
L tft-proto-mi0283qt-9a LCD401
U 1 1 58AFAB48
P 5550 3500
F 0 "LCD401" H 5550 4650 60  0000 C CNN
F 1 "tft-proto-mi0283qt-9a" H 5550 2350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 5650 3150 60  0001 C CNN
F 3 "" H 5650 3150 60  0001 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
$Comp
L R R401
U 1 1 58AFAB4F
P 6300 2550
F 0 "R401" V 6380 2550 50  0000 C CNN
F 1 "100R" V 6300 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6230 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0000 C CNN
	1    6300 2550
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR044
U 1 1 58AFAB56
P 6600 2400
F 0 "#PWR044" H 6600 2250 50  0001 C CNN
F 1 "+3.3V" H 6600 2540 50  0000 C CNN
F 2 "" H 6600 2400 50  0000 C CNN
F 3 "" H 6600 2400 50  0000 C CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR045
U 1 1 58AFAB64
P 4500 4450
F 0 "#PWR045" H 4500 4300 50  0001 C CNN
F 1 "+3.3V" H 4500 4590 50  0000 C CNN
F 2 "" H 4500 4450 50  0000 C CNN
F 3 "" H 4500 4450 50  0000 C CNN
	1    4500 4450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR046
U 1 1 58AFAB6C
P 6300 4600
F 0 "#PWR046" H 6300 4350 50  0001 C CNN
F 1 "GND" H 6300 4450 50  0000 C CNN
F 2 "" H 6300 4600 50  0000 C CNN
F 3 "" H 6300 4600 50  0000 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 58AFAB72
P 6300 3350
F 0 "#PWR047" H 6300 3100 50  0001 C CNN
F 1 "GND" H 6300 3200 50  0000 C CNN
F 2 "" H 6300 3350 50  0000 C CNN
F 3 "" H 6300 3350 50  0000 C CNN
	1    6300 3350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR048
U 1 1 58AFAB78
P 4800 3350
F 0 "#PWR048" H 4800 3100 50  0001 C CNN
F 1 "GND" H 4800 3200 50  0000 C CNN
F 2 "" H 4800 3350 50  0000 C CNN
F 3 "" H 4800 3350 50  0000 C CNN
	1    4800 3350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR049
U 1 1 58AFAB7E
P 4850 2550
F 0 "#PWR049" H 4850 2300 50  0001 C CNN
F 1 "GND" H 4850 2400 50  0000 C CNN
F 2 "" H 4850 2550 50  0000 C CNN
F 3 "" H 4850 2550 50  0000 C CNN
	1    4850 2550
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR050
U 1 1 58AFAB84
P 4500 2600
F 0 "#PWR050" H 4500 2450 50  0001 C CNN
F 1 "+3.3V" H 4500 2740 50  0000 C CNN
F 2 "" H 4500 2600 50  0000 C CNN
F 3 "" H 4500 2600 50  0000 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 58AFAB8A
P 6400 4150
F 0 "#PWR051" H 6400 3900 50  0001 C CNN
F 1 "GND" H 6400 4000 50  0000 C CNN
F 2 "" H 6400 4150 50  0000 C CNN
F 3 "" H 6400 4150 50  0000 C CNN
	1    6400 4150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR052
U 1 1 58AFAB90
P 4450 4050
F 0 "#PWR052" H 4450 3800 50  0001 C CNN
F 1 "GND" H 4450 3900 50  0000 C CNN
F 2 "" H 4450 4050 50  0000 C CNN
F 3 "" H 4450 4050 50  0000 C CNN
	1    4450 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2850 6150 2850
Wire Wire Line
	6150 2950 6050 2950
Wire Wire Line
	6150 3050 6050 3050
Connection ~ 6150 2950
Wire Wire Line
	6150 3150 6050 3150
Connection ~ 6150 3050
Wire Wire Line
	6150 3250 6050 3250
Connection ~ 6150 3150
Wire Wire Line
	6050 3350 6300 3350
Connection ~ 6150 3250
Wire Wire Line
	6150 3450 6050 3450
Connection ~ 6150 3350
Wire Wire Line
	6150 3550 6050 3550
Connection ~ 6150 3450
Wire Wire Line
	6150 3650 6050 3650
Connection ~ 6150 3550
Wire Wire Line
	6150 3750 6050 3750
Connection ~ 6150 3650
Wire Wire Line
	6150 2850 6150 3750
Wire Wire Line
	5050 2950 4950 2950
Wire Wire Line
	4950 2950 4950 3750
Wire Wire Line
	4950 3050 5050 3050
Wire Wire Line
	4950 3150 5050 3150
Connection ~ 4950 3050
Wire Wire Line
	4950 3250 5050 3250
Connection ~ 4950 3150
Wire Wire Line
	4800 3350 5050 3350
Connection ~ 4950 3250
Wire Wire Line
	4950 3450 5050 3450
Connection ~ 4950 3350
Wire Wire Line
	4950 3550 5050 3550
Connection ~ 4950 3450
Wire Wire Line
	4950 3650 5050 3650
Connection ~ 4950 3550
Wire Wire Line
	4950 3750 5050 3750
Connection ~ 4950 3650
Wire Wire Line
	6050 2550 6150 2550
Wire Wire Line
	6450 2550 6600 2550
Wire Wire Line
	6600 2400 6600 2750
Wire Wire Line
	6050 3850 6200 3850
Wire Wire Line
	4900 3850 5050 3850
Wire Wire Line
	4900 4050 5050 4050
Wire Wire Line
	6200 4050 6050 4050
Wire Wire Line
	6200 3950 6050 3950
Wire Wire Line
	6400 4150 6050 4150
Wire Wire Line
	6050 4450 6300 4450
Wire Wire Line
	6300 4450 6300 4600
Wire Wire Line
	4900 2850 5050 2850
Wire Wire Line
	4500 3950 4500 4150
Wire Wire Line
	4500 3950 5050 3950
Wire Wire Line
	4500 4150 5050 4150
Connection ~ 4500 4050
Wire Wire Line
	4900 4250 5050 4250
Wire Wire Line
	4900 4350 5050 4350
Wire Wire Line
	4500 4450 5050 4450
Wire Wire Line
	6200 4250 6050 4250
Wire Wire Line
	6050 4350 6200 4350
Wire Wire Line
	4950 2550 4950 2650
Wire Wire Line
	4950 2650 5050 2650
Connection ~ 4950 2550
Wire Wire Line
	6600 2650 6050 2650
Connection ~ 6600 2550
Wire Wire Line
	6600 2750 6050 2750
Connection ~ 6600 2650
Wire Wire Line
	4500 2750 5050 2750
Wire Wire Line
	4850 2550 5050 2550
Wire Wire Line
	4500 2600 4500 2750
Wire Wire Line
	4450 4050 4500 4050
Wire Notes Line
	6750 2150 4150 2150
Wire Notes Line
	4150 2150 4150 5050
Wire Notes Line
	4150 5050 6750 5050
Wire Notes Line
	6750 5050 6750 2150
Text Notes 4200 5000 0    60   ~ 0
LCD + Touch screen
Text HLabel 4900 2850 0    60   Input ~ 0
RST
Text HLabel 4900 3850 0    60   Input ~ 0
MISO
Text HLabel 4900 4050 0    60   Input ~ 0
SCK
Text HLabel 4900 4250 0    60   Input ~ 0
X+
Text HLabel 4900 4350 0    60   Input ~ 0
X-
Text HLabel 6200 3850 2    60   Input ~ 0
MOSI
Text HLabel 6200 3950 2    60   Input ~ 0
WR
Text HLabel 6200 4050 2    60   Input ~ 0
CS
Text HLabel 6200 4250 2    60   Input ~ 0
Y+
Text HLabel 6200 4350 2    60   Input ~ 0
Y-
$EndSCHEMATC
