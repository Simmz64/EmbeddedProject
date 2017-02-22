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
LIBS:meisei-m4-24h
LIBS:mc34063a
LIBS:ControlCircuit-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Meisei-m4-24h K?
U 1 1 58ADF9BD
P 2550 1650
F 0 "K?" H 2550 2050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2550 1300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2550 1650 60  0001 C CNN
F 3 "" H 2550 1650 60  0001 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58ADF9C4
P 3450 1100
F 0 "Q?" H 3650 1150 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3650 1050 50  0000 L CNN
F 2 "" H 3650 1200 50  0000 C CNN
F 3 "" H 3450 1100 50  0000 C CNN
	1    3450 1100
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58ADF9CB
P 3800 1100
F 0 "R?" V 3880 1100 50  0000 C CNN
F 1 "10kR" V 3800 1100 50  0000 C CNN
F 2 "" V 3730 1100 50  0000 C CNN
F 3 "" H 3800 1100 50  0000 C CNN
	1    3800 1100
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58ADF9D2
P 3350 800
F 0 "#PWR?" H 3350 650 50  0001 C CNN
F 1 "+24V" H 3350 940 50  0000 C CNN
F 2 "" H 3350 800 50  0000 C CNN
F 3 "" H 3350 800 50  0000 C CNN
	1    3350 800 
	1    0    0    -1  
$EndComp
NoConn ~ 3200 1600
NoConn ~ 3200 1700
NoConn ~ 3200 1800
Text GLabel 1450 1800 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58ADF9DC
P 1450 1600
F 0 "#PWR?" H 1450 1350 50  0001 C CNN
F 1 "GNDREF" H 1450 1450 50  0000 C CNN
F 2 "" H 1450 1600 50  0000 C CNN
F 3 "" H 1450 1600 50  0000 C CNN
	1    1450 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1450 3350 1450
Wire Wire Line
	3350 1450 3350 1300
Wire Wire Line
	3350 800  3350 900 
Wire Wire Line
	1700 1450 1900 1450
Wire Wire Line
	1700 1700 1900 1700
Wire Wire Line
	1700 1450 1700 1700
Connection ~ 1700 1600
Wire Wire Line
	1450 1600 1900 1600
Wire Wire Line
	1450 1800 1900 1800
$Comp
L Meisei-m4-24h K?
U 1 1 58ADFAC6
P 2550 2950
F 0 "K?" H 2550 3350 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2550 2600 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2550 2950 60  0001 C CNN
F 3 "" H 2550 2950 60  0001 C CNN
	1    2550 2950
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58ADFACD
P 3450 2400
F 0 "Q?" H 3650 2450 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3650 2350 50  0000 L CNN
F 2 "" H 3650 2500 50  0000 C CNN
F 3 "" H 3450 2400 50  0000 C CNN
	1    3450 2400
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58ADFAD4
P 3800 2400
F 0 "R?" V 3880 2400 50  0000 C CNN
F 1 "10kR" V 3800 2400 50  0000 C CNN
F 2 "" V 3730 2400 50  0000 C CNN
F 3 "" H 3800 2400 50  0000 C CNN
	1    3800 2400
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58ADFADB
P 3350 2100
F 0 "#PWR?" H 3350 1950 50  0001 C CNN
F 1 "+24V" H 3350 2240 50  0000 C CNN
F 2 "" H 3350 2100 50  0000 C CNN
F 3 "" H 3350 2100 50  0000 C CNN
	1    3350 2100
	1    0    0    -1  
$EndComp
NoConn ~ 3200 2900
NoConn ~ 3200 3000
NoConn ~ 3200 3100
Text GLabel 1450 3100 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58ADFAE5
P 1450 2900
F 0 "#PWR?" H 1450 2650 50  0001 C CNN
F 1 "GNDREF" H 1450 2750 50  0000 C CNN
F 2 "" H 1450 2900 50  0000 C CNN
F 3 "" H 1450 2900 50  0000 C CNN
	1    1450 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2750 3350 2750
Wire Wire Line
	3350 2750 3350 2600
Wire Wire Line
	3350 2100 3350 2200
Wire Wire Line
	1700 2750 1900 2750
Wire Wire Line
	1700 3000 1900 3000
Wire Wire Line
	1700 2750 1700 3000
Connection ~ 1700 2900
Wire Wire Line
	1450 2900 1900 2900
Wire Wire Line
	1450 3100 1900 3100
$Comp
L Meisei-m4-24h K?
U 1 1 58ADFBD8
P 2550 4300
F 0 "K?" H 2550 4700 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2550 3950 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2550 4300 60  0001 C CNN
F 3 "" H 2550 4300 60  0001 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58ADFBDF
P 3450 3750
F 0 "Q?" H 3650 3800 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3650 3700 50  0000 L CNN
F 2 "" H 3650 3850 50  0000 C CNN
F 3 "" H 3450 3750 50  0000 C CNN
	1    3450 3750
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58ADFBE6
P 3800 3750
F 0 "R?" V 3880 3750 50  0000 C CNN
F 1 "10kR" V 3800 3750 50  0000 C CNN
F 2 "" V 3730 3750 50  0000 C CNN
F 3 "" H 3800 3750 50  0000 C CNN
	1    3800 3750
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58ADFBED
P 3350 3450
F 0 "#PWR?" H 3350 3300 50  0001 C CNN
F 1 "+24V" H 3350 3590 50  0000 C CNN
F 2 "" H 3350 3450 50  0000 C CNN
F 3 "" H 3350 3450 50  0000 C CNN
	1    3350 3450
	1    0    0    -1  
$EndComp
NoConn ~ 3200 4250
NoConn ~ 3200 4350
NoConn ~ 3200 4450
Text GLabel 1450 4450 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58ADFBF7
P 1450 4250
F 0 "#PWR?" H 1450 4000 50  0001 C CNN
F 1 "GNDREF" H 1450 4100 50  0000 C CNN
F 2 "" H 1450 4250 50  0000 C CNN
F 3 "" H 1450 4250 50  0000 C CNN
	1    1450 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4100 3350 4100
Wire Wire Line
	3350 4100 3350 3950
Wire Wire Line
	3350 3450 3350 3550
Wire Wire Line
	1700 4100 1900 4100
Wire Wire Line
	1700 4350 1900 4350
Wire Wire Line
	1700 4100 1700 4350
Connection ~ 1700 4250
Wire Wire Line
	1450 4250 1900 4250
Wire Wire Line
	1450 4450 1900 4450
$Comp
L Meisei-m4-24h K?
U 1 1 58ADFD05
P 2550 5650
F 0 "K?" H 2550 6050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2550 5300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2550 5650 60  0001 C CNN
F 3 "" H 2550 5650 60  0001 C CNN
	1    2550 5650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58ADFD0C
P 3450 5100
F 0 "Q?" H 3650 5150 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3650 5050 50  0000 L CNN
F 2 "" H 3650 5200 50  0000 C CNN
F 3 "" H 3450 5100 50  0000 C CNN
	1    3450 5100
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58ADFD13
P 3800 5100
F 0 "R?" V 3880 5100 50  0000 C CNN
F 1 "10kR" V 3800 5100 50  0000 C CNN
F 2 "" V 3730 5100 50  0000 C CNN
F 3 "" H 3800 5100 50  0000 C CNN
	1    3800 5100
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58ADFD1A
P 3350 4800
F 0 "#PWR?" H 3350 4650 50  0001 C CNN
F 1 "+24V" H 3350 4940 50  0000 C CNN
F 2 "" H 3350 4800 50  0000 C CNN
F 3 "" H 3350 4800 50  0000 C CNN
	1    3350 4800
	1    0    0    -1  
$EndComp
NoConn ~ 3200 5600
NoConn ~ 3200 5700
NoConn ~ 3200 5800
Text GLabel 1450 5800 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58ADFD24
P 1450 5600
F 0 "#PWR?" H 1450 5350 50  0001 C CNN
F 1 "GNDREF" H 1450 5450 50  0000 C CNN
F 2 "" H 1450 5600 50  0000 C CNN
F 3 "" H 1450 5600 50  0000 C CNN
	1    1450 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5450 3350 5450
Wire Wire Line
	3350 5450 3350 5300
Wire Wire Line
	3350 4800 3350 4900
Wire Wire Line
	1700 5450 1900 5450
Wire Wire Line
	1700 5700 1900 5700
Wire Wire Line
	1700 5450 1700 5700
Connection ~ 1700 5600
Wire Wire Line
	1450 5600 1900 5600
Wire Wire Line
	1450 5800 1900 5800
$Comp
L Meisei-m4-24h K?
U 1 1 58AE0552
P 2550 7000
F 0 "K?" H 2550 7400 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2550 6650 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2550 7000 60  0001 C CNN
F 3 "" H 2550 7000 60  0001 C CNN
	1    2550 7000
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58AE0558
P 3450 6450
F 0 "Q?" H 3650 6500 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3650 6400 50  0000 L CNN
F 2 "" H 3650 6550 50  0000 C CNN
F 3 "" H 3450 6450 50  0000 C CNN
	1    3450 6450
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AE055E
P 3800 6450
F 0 "R?" V 3880 6450 50  0000 C CNN
F 1 "10kR" V 3800 6450 50  0000 C CNN
F 2 "" V 3730 6450 50  0000 C CNN
F 3 "" H 3800 6450 50  0000 C CNN
	1    3800 6450
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58AE0564
P 3350 6150
F 0 "#PWR?" H 3350 6000 50  0001 C CNN
F 1 "+24V" H 3350 6290 50  0000 C CNN
F 2 "" H 3350 6150 50  0000 C CNN
F 3 "" H 3350 6150 50  0000 C CNN
	1    3350 6150
	1    0    0    -1  
$EndComp
NoConn ~ 3200 6950
NoConn ~ 3200 7050
NoConn ~ 3200 7150
Text GLabel 1450 7150 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58AE056E
P 1450 6950
F 0 "#PWR?" H 1450 6700 50  0001 C CNN
F 1 "GNDREF" H 1450 6800 50  0000 C CNN
F 2 "" H 1450 6950 50  0000 C CNN
F 3 "" H 1450 6950 50  0000 C CNN
	1    1450 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 6800 3350 6800
Wire Wire Line
	3350 6800 3350 6650
Wire Wire Line
	3350 6150 3350 6250
Wire Wire Line
	1700 6800 1900 6800
Wire Wire Line
	1700 7050 1900 7050
Wire Wire Line
	1700 6800 1700 7050
Connection ~ 1700 6950
Wire Wire Line
	1450 6950 1900 6950
Wire Wire Line
	1450 7150 1900 7150
$Comp
L Meisei-m4-24h K?
U 1 1 58AE0AD2
P 5550 1650
F 0 "K?" H 5550 2050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5550 1300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5550 1650 60  0001 C CNN
F 3 "" H 5550 1650 60  0001 C CNN
	1    5550 1650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58AE0AD8
P 6450 1100
F 0 "Q?" H 6650 1150 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6650 1050 50  0000 L CNN
F 2 "" H 6650 1200 50  0000 C CNN
F 3 "" H 6450 1100 50  0000 C CNN
	1    6450 1100
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AE0ADE
P 6800 1100
F 0 "R?" V 6880 1100 50  0000 C CNN
F 1 "10kR" V 6800 1100 50  0000 C CNN
F 2 "" V 6730 1100 50  0000 C CNN
F 3 "" H 6800 1100 50  0000 C CNN
	1    6800 1100
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58AE0AE4
P 6350 800
F 0 "#PWR?" H 6350 650 50  0001 C CNN
F 1 "+24V" H 6350 940 50  0000 C CNN
F 2 "" H 6350 800 50  0000 C CNN
F 3 "" H 6350 800 50  0000 C CNN
	1    6350 800 
	1    0    0    -1  
$EndComp
NoConn ~ 6200 1600
NoConn ~ 6200 1700
NoConn ~ 6200 1800
Text GLabel 4450 1800 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58AE0AEE
P 4450 1600
F 0 "#PWR?" H 4450 1350 50  0001 C CNN
F 1 "GNDREF" H 4450 1450 50  0000 C CNN
F 2 "" H 4450 1600 50  0000 C CNN
F 3 "" H 4450 1600 50  0000 C CNN
	1    4450 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1450 6350 1450
Wire Wire Line
	6350 1450 6350 1300
Wire Wire Line
	6350 800  6350 900 
Wire Wire Line
	4700 1450 4900 1450
Wire Wire Line
	4700 1700 4900 1700
Wire Wire Line
	4700 1450 4700 1700
Connection ~ 4700 1600
Wire Wire Line
	4450 1600 4900 1600
Wire Wire Line
	4450 1800 4900 1800
$Comp
L Meisei-m4-24h K?
U 1 1 58AE0AFD
P 5550 2950
F 0 "K?" H 5550 3350 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5550 2600 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5550 2950 60  0001 C CNN
F 3 "" H 5550 2950 60  0001 C CNN
	1    5550 2950
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58AE0B03
P 6450 2400
F 0 "Q?" H 6650 2450 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6650 2350 50  0000 L CNN
F 2 "" H 6650 2500 50  0000 C CNN
F 3 "" H 6450 2400 50  0000 C CNN
	1    6450 2400
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AE0B09
P 6800 2400
F 0 "R?" V 6880 2400 50  0000 C CNN
F 1 "10kR" V 6800 2400 50  0000 C CNN
F 2 "" V 6730 2400 50  0000 C CNN
F 3 "" H 6800 2400 50  0000 C CNN
	1    6800 2400
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58AE0B0F
P 6350 2100
F 0 "#PWR?" H 6350 1950 50  0001 C CNN
F 1 "+24V" H 6350 2240 50  0000 C CNN
F 2 "" H 6350 2100 50  0000 C CNN
F 3 "" H 6350 2100 50  0000 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
NoConn ~ 6200 2900
NoConn ~ 6200 3000
NoConn ~ 6200 3100
Text GLabel 4450 3100 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58AE0B19
P 4450 2900
F 0 "#PWR?" H 4450 2650 50  0001 C CNN
F 1 "GNDREF" H 4450 2750 50  0000 C CNN
F 2 "" H 4450 2900 50  0000 C CNN
F 3 "" H 4450 2900 50  0000 C CNN
	1    4450 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2750 6350 2750
Wire Wire Line
	6350 2750 6350 2600
Wire Wire Line
	6350 2100 6350 2200
Wire Wire Line
	4700 2750 4900 2750
Wire Wire Line
	4700 3000 4900 3000
Wire Wire Line
	4700 2750 4700 3000
Connection ~ 4700 2900
Wire Wire Line
	4450 2900 4900 2900
Wire Wire Line
	4450 3100 4900 3100
$Comp
L Meisei-m4-24h K?
U 1 1 58AE0B28
P 5550 4300
F 0 "K?" H 5550 4700 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5550 3950 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5550 4300 60  0001 C CNN
F 3 "" H 5550 4300 60  0001 C CNN
	1    5550 4300
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58AE0B2E
P 6450 3750
F 0 "Q?" H 6650 3800 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6650 3700 50  0000 L CNN
F 2 "" H 6650 3850 50  0000 C CNN
F 3 "" H 6450 3750 50  0000 C CNN
	1    6450 3750
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AE0B34
P 6800 3750
F 0 "R?" V 6880 3750 50  0000 C CNN
F 1 "10kR" V 6800 3750 50  0000 C CNN
F 2 "" V 6730 3750 50  0000 C CNN
F 3 "" H 6800 3750 50  0000 C CNN
	1    6800 3750
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58AE0B3A
P 6350 3450
F 0 "#PWR?" H 6350 3300 50  0001 C CNN
F 1 "+24V" H 6350 3590 50  0000 C CNN
F 2 "" H 6350 3450 50  0000 C CNN
F 3 "" H 6350 3450 50  0000 C CNN
	1    6350 3450
	1    0    0    -1  
$EndComp
NoConn ~ 6200 4250
NoConn ~ 6200 4350
NoConn ~ 6200 4450
Text GLabel 4450 4450 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58AE0B44
P 4450 4250
F 0 "#PWR?" H 4450 4000 50  0001 C CNN
F 1 "GNDREF" H 4450 4100 50  0000 C CNN
F 2 "" H 4450 4250 50  0000 C CNN
F 3 "" H 4450 4250 50  0000 C CNN
	1    4450 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4100 6350 4100
Wire Wire Line
	6350 4100 6350 3950
Wire Wire Line
	6350 3450 6350 3550
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	4700 4350 4900 4350
Wire Wire Line
	4700 4100 4700 4350
Connection ~ 4700 4250
Wire Wire Line
	4450 4250 4900 4250
Wire Wire Line
	4450 4450 4900 4450
$Comp
L Meisei-m4-24h K?
U 1 1 58AE0B53
P 5550 5650
F 0 "K?" H 5550 6050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5550 5300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5550 5650 60  0001 C CNN
F 3 "" H 5550 5650 60  0001 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58AE0B59
P 6450 5100
F 0 "Q?" H 6650 5150 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6650 5050 50  0000 L CNN
F 2 "" H 6650 5200 50  0000 C CNN
F 3 "" H 6450 5100 50  0000 C CNN
	1    6450 5100
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AE0B5F
P 6800 5100
F 0 "R?" V 6880 5100 50  0000 C CNN
F 1 "10kR" V 6800 5100 50  0000 C CNN
F 2 "" V 6730 5100 50  0000 C CNN
F 3 "" H 6800 5100 50  0000 C CNN
	1    6800 5100
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58AE0B65
P 6350 4800
F 0 "#PWR?" H 6350 4650 50  0001 C CNN
F 1 "+24V" H 6350 4940 50  0000 C CNN
F 2 "" H 6350 4800 50  0000 C CNN
F 3 "" H 6350 4800 50  0000 C CNN
	1    6350 4800
	1    0    0    -1  
$EndComp
NoConn ~ 6200 5600
NoConn ~ 6200 5700
NoConn ~ 6200 5800
Text GLabel 4450 5800 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58AE0B6F
P 4450 5600
F 0 "#PWR?" H 4450 5350 50  0001 C CNN
F 1 "GNDREF" H 4450 5450 50  0000 C CNN
F 2 "" H 4450 5600 50  0000 C CNN
F 3 "" H 4450 5600 50  0000 C CNN
	1    4450 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5450 6350 5450
Wire Wire Line
	6350 5450 6350 5300
Wire Wire Line
	6350 4800 6350 4900
Wire Wire Line
	4700 5450 4900 5450
Wire Wire Line
	4700 5700 4900 5700
Wire Wire Line
	4700 5450 4700 5700
Connection ~ 4700 5600
Wire Wire Line
	4450 5600 4900 5600
Wire Wire Line
	4450 5800 4900 5800
$Comp
L Meisei-m4-24h K?
U 1 1 58AE0B7E
P 5550 7000
F 0 "K?" H 5550 7400 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5550 6650 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5550 7000 60  0001 C CNN
F 3 "" H 5550 7000 60  0001 C CNN
	1    5550 7000
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58AE0B84
P 6450 6450
F 0 "Q?" H 6650 6500 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6650 6400 50  0000 L CNN
F 2 "" H 6650 6550 50  0000 C CNN
F 3 "" H 6450 6450 50  0000 C CNN
	1    6450 6450
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AE0B8A
P 6800 6450
F 0 "R?" V 6880 6450 50  0000 C CNN
F 1 "10kR" V 6800 6450 50  0000 C CNN
F 2 "" V 6730 6450 50  0000 C CNN
F 3 "" H 6800 6450 50  0000 C CNN
	1    6800 6450
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR?
U 1 1 58AE0B90
P 6350 6150
F 0 "#PWR?" H 6350 6000 50  0001 C CNN
F 1 "+24V" H 6350 6290 50  0000 C CNN
F 2 "" H 6350 6150 50  0000 C CNN
F 3 "" H 6350 6150 50  0000 C CNN
	1    6350 6150
	1    0    0    -1  
$EndComp
NoConn ~ 6200 6950
NoConn ~ 6200 7050
NoConn ~ 6200 7150
Text GLabel 4450 7150 0    60   Input ~ 0
Controlport
$Comp
L GNDREF #PWR?
U 1 1 58AE0B9A
P 4450 6950
F 0 "#PWR?" H 4450 6700 50  0001 C CNN
F 1 "GNDREF" H 4450 6800 50  0000 C CNN
F 2 "" H 4450 6950 50  0000 C CNN
F 3 "" H 4450 6950 50  0000 C CNN
	1    4450 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 6800 6350 6800
Wire Wire Line
	6350 6800 6350 6650
Wire Wire Line
	6350 6150 6350 6250
Wire Wire Line
	4700 6800 4900 6800
Wire Wire Line
	4700 7050 4900 7050
Wire Wire Line
	4700 6800 4700 7050
Connection ~ 4700 6950
Wire Wire Line
	4450 6950 4900 6950
Wire Wire Line
	4450 7150 4900 7150
$EndSCHEMATC
