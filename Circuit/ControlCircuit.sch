EESchema Schematic File Version 2
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
L ATMEGA328-P IC?
U 1 1 58AC5AA6
P 5600 3700
F 0 "IC?" H 4850 4950 50  0000 L BNN
F 1 "ATMEGA328-P" H 6000 2300 50  0000 L BNN
F 2 "DIL28" H 5600 3700 50  0000 C CIN
F 3 "" H 5600 3700 50  0000 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
$Comp
L tft-proto-mi0283qt-9a LCD?
U 1 1 58AC6316
P 8900 2750
F 0 "LCD?" H 8900 3900 60  0000 C CNN
F 1 "tft-proto-mi0283qt-9a" H 8900 1600 60  0000 C CNN
F 2 "" H 9000 2400 60  0001 C CNN
F 3 "" H 9000 2400 60  0001 C CNN
	1    8900 2750
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR?
U 1 1 58AC64C9
P 9650 2600
F 0 "#PWR?" H 9650 2350 50  0001 C CNN
F 1 "GNDREF" H 9650 2450 50  0000 C CNN
F 2 "" H 9650 2600 50  0000 C CNN
F 3 "" H 9650 2600 50  0000 C CNN
	1    9650 2600
	0    -1   -1   0   
$EndComp
$Comp
L GNDREF #PWR?
U 1 1 58AC64E1
P 8150 2600
F 0 "#PWR?" H 8150 2350 50  0001 C CNN
F 1 "GNDREF" H 8150 2450 50  0000 C CNN
F 2 "" H 8150 2600 50  0000 C CNN
F 3 "" H 8150 2600 50  0000 C CNN
	1    8150 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 2100 9500 2100
Wire Wire Line
	9500 2200 9400 2200
Wire Wire Line
	9500 2300 9400 2300
Connection ~ 9500 2200
Wire Wire Line
	9500 2400 9400 2400
Connection ~ 9500 2300
Wire Wire Line
	9500 2500 9400 2500
Connection ~ 9500 2400
Wire Wire Line
	9400 2600 9650 2600
Connection ~ 9500 2500
Wire Wire Line
	9500 2700 9400 2700
Connection ~ 9500 2600
Wire Wire Line
	9500 2800 9400 2800
Connection ~ 9500 2700
Wire Wire Line
	9500 2900 9400 2900
Connection ~ 9500 2800
Wire Wire Line
	9500 3000 9400 3000
Connection ~ 9500 2900
Wire Wire Line
	9500 2100 9500 3000
Wire Wire Line
	8400 2200 8300 2200
Wire Wire Line
	8300 2200 8300 3000
Wire Wire Line
	8300 2300 8400 2300
Wire Wire Line
	8300 2400 8400 2400
Connection ~ 8300 2300
Wire Wire Line
	8300 2500 8400 2500
Connection ~ 8300 2400
Wire Wire Line
	8150 2600 8400 2600
Connection ~ 8300 2500
Wire Wire Line
	8300 2700 8400 2700
Connection ~ 8300 2600
Wire Wire Line
	8300 2800 8400 2800
Connection ~ 8300 2700
Wire Wire Line
	8300 2900 8400 2900
Connection ~ 8300 2800
Wire Wire Line
	8300 3000 8400 3000
Connection ~ 8300 2900
$Comp
L R R?
U 1 1 58AC6890
P 9650 1800
F 0 "R?" V 9730 1800 50  0000 C CNN
F 1 "100R" V 9650 1800 50  0000 C CNN
F 2 "" V 9580 1800 50  0000 C CNN
F 3 "" H 9650 1800 50  0000 C CNN
	1    9650 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 1800 9500 1800
$Comp
L +3.3V #PWR?
U 1 1 58AC6915
P 9950 1650
F 0 "#PWR?" H 9950 1500 50  0001 C CNN
F 1 "+3.3V" H 9950 1790 50  0000 C CNN
F 2 "" H 9950 1650 50  0000 C CNN
F 3 "" H 9950 1650 50  0000 C CNN
	1    9950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1800 9950 1800
Wire Wire Line
	9950 1800 9950 1650
$Comp
L GNDREF #PWR?
U 1 1 58AC69A7
P 8100 1800
F 0 "#PWR?" H 8100 1550 50  0001 C CNN
F 1 "GNDREF" H 8100 1650 50  0000 C CNN
F 2 "" H 8100 1800 50  0000 C CNN
F 3 "" H 8100 1800 50  0000 C CNN
	1    8100 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1800 8400 1800
Text GLabel 7050 3950 2    60   Input ~ 0
MISO
Text GLabel 7050 3850 2    60   Input ~ 0
MOSI
Text GLabel 7050 3750 2    60   Input ~ 0
CS
Text GLabel 7050 3650 2    60   Input ~ 0
SCK
Text GLabel 7050 3550 2    60   Input ~ 0
WR
$EndSCHEMATC
