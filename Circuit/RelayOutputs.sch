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
Sheet 2 5
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
L Meisei-m4-24h K204
U 1 1 58ADF9BD
P 2850 5900
F 0 "K204" H 2850 6300 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2850 5550 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2850 5900 60  0001 C CNN
F 3 "" H 2850 5900 60  0001 C CNN
	1    2850 5900
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q204
U 1 1 58ADF9C4
P 1800 5600
F 0 "Q204" V 1750 5300 50  0000 L CNN
F 1 "Q_NPN_BCE" V 1650 5050 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 2000 5700 50  0001 C CNN
F 3 "" H 1800 5600 50  0000 C CNN
	1    1800 5600
	0    1    1    0   
$EndComp
$Comp
L R R204
U 1 1 58ADF9CB
P 1800 5150
F 0 "R204" V 1880 5150 50  0000 C CNN
F 1 "10kR" V 1800 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1730 5150 50  0001 C CNN
F 3 "" H 1800 5150 50  0000 C CNN
	1    1800 5150
	1    0    0    1   
$EndComp
$Comp
L +24V #PWR011
U 1 1 58ADF9D2
P 3750 5400
F 0 "#PWR011" H 3750 5250 50  0001 C CNN
F 1 "+24V" H 3750 5550 50  0000 C CNN
F 2 "" H 3750 5400 50  0000 C CNN
F 3 "" H 3750 5400 50  0000 C CNN
	1    3750 5400
	-1   0    0    -1  
$EndComp
NoConn ~ 3500 5850
NoConn ~ 3500 5950
NoConn ~ 3500 6050
Wire Wire Line
	3500 5700 3750 5700
Wire Wire Line
	2000 5700 2200 5700
Text Notes 950  6400 0    60   ~ 0
Relay Outputs
$Comp
L D D208
U 1 1 58AE6BBC
P 2850 5300
F 0 "D208" H 2850 5400 50  0000 C CNN
F 1 "D" H 2850 5200 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 2850 5300 50  0001 C CNN
F 3 "" H 2850 5300 50  0000 C CNN
	1    2850 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 5700 1600 5700
Wire Wire Line
	2150 5050 2150 5700
Wire Wire Line
	2150 5300 2700 5300
Connection ~ 2150 5700
Wire Wire Line
	3000 5300 3550 5300
Wire Wire Line
	3550 5050 3550 5700
Connection ~ 3550 5700
Wire Wire Line
	3750 5700 3750 5400
$Comp
L Meisei-m4-24h K205
U 1 1 58AE8967
P 5800 1650
F 0 "K205" H 5800 2050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5800 1300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5800 1650 60  0001 C CNN
F 3 "" H 5800 1650 60  0001 C CNN
	1    5800 1650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q205
U 1 1 58AE896D
P 4750 1350
F 0 "Q205" V 4700 1050 50  0000 L CNN
F 1 "Q_NPN_BCE" V 4600 800 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 4950 1450 50  0001 C CNN
F 3 "" H 4750 1350 50  0000 C CNN
	1    4750 1350
	0    1    1    0   
$EndComp
$Comp
L R R210
U 1 1 58AE8973
P 4750 900
F 0 "R210" V 4830 900 50  0000 C CNN
F 1 "10kR" V 4750 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 900 50  0001 C CNN
F 3 "" H 4750 900 50  0000 C CNN
	1    4750 900 
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR012
U 1 1 58AE8979
P 6700 1150
F 0 "#PWR012" H 6700 1000 50  0001 C CNN
F 1 "+24V" H 6700 1300 50  0000 C CNN
F 2 "" H 6700 1150 50  0000 C CNN
F 3 "" H 6700 1150 50  0000 C CNN
	1    6700 1150
	-1   0    0    -1  
$EndComp
NoConn ~ 6450 1600
NoConn ~ 6450 1700
NoConn ~ 6450 1800
Wire Wire Line
	6450 1450 6700 1450
Wire Wire Line
	4950 1450 5150 1450
$Comp
L D D214
U 1 1 58AE898F
P 5800 1050
F 0 "D214" H 5800 1150 50  0000 C CNN
F 1 "D" H 5800 950 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 5800 1050 50  0001 C CNN
F 3 "" H 5800 1050 50  0000 C CNN
	1    5800 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 1450 4550 1450
Wire Wire Line
	5100 800  5100 1450
Wire Wire Line
	5100 1050 5650 1050
Connection ~ 5100 1450
Wire Wire Line
	5950 1050 6500 1050
Wire Wire Line
	6500 800  6500 1450
Connection ~ 6500 1450
Wire Wire Line
	6700 1450 6700 1150
$Comp
L Meisei-m4-24h K206
U 1 1 58AE8A3F
P 5800 3050
F 0 "K206" H 5800 3450 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5800 2700 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5800 3050 60  0001 C CNN
F 3 "" H 5800 3050 60  0001 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q206
U 1 1 58AE8A45
P 4750 2750
F 0 "Q206" V 4700 2450 50  0000 L CNN
F 1 "Q_NPN_BCE" V 4600 2200 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 4950 2850 50  0001 C CNN
F 3 "" H 4750 2750 50  0000 C CNN
	1    4750 2750
	0    1    1    0   
$EndComp
$Comp
L R R211
U 1 1 58AE8A4B
P 4750 2300
F 0 "R211" V 4830 2300 50  0000 C CNN
F 1 "10kR" V 4750 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 2300 50  0001 C CNN
F 3 "" H 4750 2300 50  0000 C CNN
	1    4750 2300
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR013
U 1 1 58AE8A51
P 6700 2550
F 0 "#PWR013" H 6700 2400 50  0001 C CNN
F 1 "+24V" H 6700 2700 50  0000 C CNN
F 2 "" H 6700 2550 50  0000 C CNN
F 3 "" H 6700 2550 50  0000 C CNN
	1    6700 2550
	-1   0    0    -1  
$EndComp
NoConn ~ 6450 3000
NoConn ~ 6450 3100
NoConn ~ 6450 3200
Wire Wire Line
	6450 2850 6700 2850
Wire Wire Line
	4950 2850 5150 2850
$Comp
L D D215
U 1 1 58AE8A67
P 5800 2450
F 0 "D215" H 5800 2550 50  0000 C CNN
F 1 "D" H 5800 2350 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 5800 2450 50  0001 C CNN
F 3 "" H 5800 2450 50  0000 C CNN
	1    5800 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 2850 4550 2850
Wire Wire Line
	5100 2200 5100 2850
Wire Wire Line
	5100 2450 5650 2450
Connection ~ 5100 2850
Wire Wire Line
	5950 2450 6500 2450
Wire Wire Line
	6500 2200 6500 2850
Connection ~ 6500 2850
Wire Wire Line
	6700 2850 6700 2550
$Comp
L Meisei-m4-24h K201
U 1 1 58AE8E17
P 2850 1650
F 0 "K201" H 2850 2050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2850 1300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2850 1650 60  0001 C CNN
F 3 "" H 2850 1650 60  0001 C CNN
	1    2850 1650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q201
U 1 1 58AE8E1D
P 1800 1350
F 0 "Q201" V 1750 1050 50  0000 L CNN
F 1 "Q_NPN_BCE" V 1650 800 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 2000 1450 50  0001 C CNN
F 3 "" H 1800 1350 50  0000 C CNN
	1    1800 1350
	0    1    1    0   
$EndComp
$Comp
L R R201
U 1 1 58AE8E23
P 1800 900
F 0 "R201" V 1880 900 50  0000 C CNN
F 1 "10kR" V 1800 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1730 900 50  0001 C CNN
F 3 "" H 1800 900 50  0000 C CNN
	1    1800 900 
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR014
U 1 1 58AE8E29
P 3750 1150
F 0 "#PWR014" H 3750 1000 50  0001 C CNN
F 1 "+24V" H 3750 1300 50  0000 C CNN
F 2 "" H 3750 1150 50  0000 C CNN
F 3 "" H 3750 1150 50  0000 C CNN
	1    3750 1150
	-1   0    0    -1  
$EndComp
NoConn ~ 3500 1600
NoConn ~ 3500 1700
NoConn ~ 3500 1800
Wire Wire Line
	3500 1450 3750 1450
Wire Wire Line
	2000 1450 2200 1450
$Comp
L D D205
U 1 1 58AE8E43
P 2850 1050
F 0 "D205" H 2850 1150 50  0000 C CNN
F 1 "D" H 2850 950 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 2850 1050 50  0001 C CNN
F 3 "" H 2850 1050 50  0000 C CNN
	1    2850 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 1450 1600 1450
Wire Wire Line
	2150 800  2150 1450
Wire Wire Line
	2150 1050 2700 1050
Connection ~ 2150 1450
Wire Wire Line
	3000 1050 3550 1050
Wire Wire Line
	3550 800  3550 1450
Connection ~ 3550 1450
Wire Wire Line
	3750 1450 3750 1150
$Comp
L Meisei-m4-24h K202
U 1 1 58AE8E57
P 2850 3050
F 0 "K202" H 2850 3450 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2850 2700 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2850 3050 60  0001 C CNN
F 3 "" H 2850 3050 60  0001 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q202
U 1 1 58AE8E5D
P 1800 2750
F 0 "Q202" V 1750 2450 50  0000 L CNN
F 1 "Q_NPN_BCE" V 1650 2200 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 2000 2850 50  0001 C CNN
F 3 "" H 1800 2750 50  0000 C CNN
	1    1800 2750
	0    1    1    0   
$EndComp
$Comp
L R R202
U 1 1 58AE8E63
P 1800 2300
F 0 "R202" V 1880 2300 50  0000 C CNN
F 1 "10kR" V 1800 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1730 2300 50  0001 C CNN
F 3 "" H 1800 2300 50  0000 C CNN
	1    1800 2300
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR015
U 1 1 58AE8E69
P 3750 2550
F 0 "#PWR015" H 3750 2400 50  0001 C CNN
F 1 "+24V" H 3750 2700 50  0000 C CNN
F 2 "" H 3750 2550 50  0000 C CNN
F 3 "" H 3750 2550 50  0000 C CNN
	1    3750 2550
	-1   0    0    -1  
$EndComp
NoConn ~ 3500 3000
NoConn ~ 3500 3100
NoConn ~ 3500 3200
Wire Wire Line
	3500 2850 3750 2850
Wire Wire Line
	2000 2850 2200 2850
$Comp
L D D206
U 1 1 58AE8E83
P 2850 2450
F 0 "D206" H 2850 2550 50  0000 C CNN
F 1 "D" H 2850 2350 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 2850 2450 50  0001 C CNN
F 3 "" H 2850 2450 50  0000 C CNN
	1    2850 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2850 1600 2850
Wire Wire Line
	2150 2200 2150 2850
Wire Wire Line
	2150 2450 2700 2450
Connection ~ 2150 2850
Wire Wire Line
	3000 2450 3550 2450
Wire Wire Line
	3550 2200 3550 2850
Connection ~ 3550 2850
Wire Wire Line
	3750 2850 3750 2550
$Comp
L Meisei-m4-24h K203
U 1 1 58AE8E97
P 2850 4450
F 0 "K203" H 2850 4850 60  0000 C CNN
F 1 "Meisei-m4-24h" H 2850 4100 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 2850 4450 60  0001 C CNN
F 3 "" H 2850 4450 60  0001 C CNN
	1    2850 4450
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q203
U 1 1 58AE8E9D
P 1800 4150
F 0 "Q203" V 1750 3850 50  0000 L CNN
F 1 "Q_NPN_BCE" V 1650 3600 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 2000 4250 50  0001 C CNN
F 3 "" H 1800 4150 50  0000 C CNN
	1    1800 4150
	0    1    1    0   
$EndComp
$Comp
L R R203
U 1 1 58AE8EA3
P 1800 3700
F 0 "R203" V 1880 3700 50  0000 C CNN
F 1 "10kR" V 1800 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1730 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0000 C CNN
	1    1800 3700
	1    0    0    1   
$EndComp
$Comp
L +24V #PWR016
U 1 1 58AE8EA9
P 3750 3950
F 0 "#PWR016" H 3750 3800 50  0001 C CNN
F 1 "+24V" H 3750 4100 50  0000 C CNN
F 2 "" H 3750 3950 50  0000 C CNN
F 3 "" H 3750 3950 50  0000 C CNN
	1    3750 3950
	-1   0    0    -1  
$EndComp
NoConn ~ 3500 4400
NoConn ~ 3500 4500
NoConn ~ 3500 4600
Wire Wire Line
	3500 4250 3750 4250
Wire Wire Line
	2000 4250 2200 4250
$Comp
L D D207
U 1 1 58AE8EC3
P 2850 3850
F 0 "D207" H 2850 3950 50  0000 C CNN
F 1 "D" H 2850 3750 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0000 C CNN
	1    2850 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4250 1600 4250
Wire Wire Line
	2150 3600 2150 4250
Wire Wire Line
	2150 3850 2700 3850
Connection ~ 2150 4250
Wire Wire Line
	3000 3850 3550 3850
Wire Wire Line
	3550 3600 3550 4250
Connection ~ 3550 4250
Wire Wire Line
	3750 4250 3750 3950
Text HLabel 2050 3100 0    60   Input ~ 0
OR2sel1
Text HLabel 2050 3200 0    60   Input ~ 0
OR2sel2
Text HLabel 2050 3000 0    60   Input ~ 0
OR2com
Wire Wire Line
	2050 3000 2200 3000
Wire Wire Line
	2050 3100 2200 3100
Wire Wire Line
	2050 3200 2200 3200
Text HLabel 1900 2050 2    60   Input ~ 0
O2
Wire Wire Line
	1900 2050 1800 2050
Text HLabel 1900 650  2    60   Input ~ 0
O1
Text HLabel 1900 3450 2    60   Input ~ 0
O3
Text HLabel 4850 650  2    60   Input ~ 0
O5
Text HLabel 1900 4900 2    60   Input ~ 0
O4
Text HLabel 4850 2050 2    60   Input ~ 0
O6
Wire Wire Line
	1900 3450 1800 3450
Wire Wire Line
	1900 650  1800 650 
Wire Wire Line
	1900 4900 1800 4900
Wire Wire Line
	4850 650  4750 650 
Wire Wire Line
	4850 2050 4750 2050
Text HLabel 2050 1700 0    60   Input ~ 0
OR1sel1
Text HLabel 2050 1800 0    60   Input ~ 0
OR1sel2
Text HLabel 2050 1600 0    60   Input ~ 0
OR1com
Text HLabel 2050 4500 0    60   Input ~ 0
OR3sel1
Text HLabel 2050 4600 0    60   Input ~ 0
OR3sel2
Text HLabel 2050 4400 0    60   Input ~ 0
OR3com
Text HLabel 2050 5950 0    60   Input ~ 0
OR4sel1
Text HLabel 2050 6050 0    60   Input ~ 0
OR4sel2
Text HLabel 2050 5850 0    60   Input ~ 0
OR4com
Text HLabel 5000 1700 0    60   Input ~ 0
OR5sel1
Text HLabel 5000 1800 0    60   Input ~ 0
OR5sel2
Text HLabel 5000 1600 0    60   Input ~ 0
OR5com
Text HLabel 5000 3100 0    60   Input ~ 0
OR6sel1
Text HLabel 5000 3200 0    60   Input ~ 0
OR6sel2
Text HLabel 5000 3000 0    60   Input ~ 0
OR6com
Wire Wire Line
	5000 3000 5150 3000
Wire Wire Line
	5000 3100 5150 3100
Wire Wire Line
	5000 3200 5150 3200
Wire Wire Line
	5000 1600 5150 1600
Wire Wire Line
	5000 1700 5150 1700
Wire Wire Line
	5000 1800 5150 1800
Wire Wire Line
	2050 5850 2200 5850
Wire Wire Line
	2050 5950 2200 5950
Wire Wire Line
	2050 6050 2200 6050
Wire Wire Line
	2050 1600 2200 1600
Wire Wire Line
	2050 1700 2200 1700
Wire Wire Line
	2050 1800 2200 1800
Wire Wire Line
	2050 4400 2200 4400
Wire Wire Line
	2050 4500 2200 4500
Wire Wire Line
	2050 4600 2200 4600
$Comp
L Meisei-m4-24h K207
U 1 1 58B0DA07
P 5800 4450
F 0 "K207" H 5800 4850 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5800 4100 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5800 4450 60  0001 C CNN
F 3 "" H 5800 4450 60  0001 C CNN
	1    5800 4450
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q207
U 1 1 58B0DA0D
P 4750 4150
F 0 "Q207" V 4700 3850 50  0000 L CNN
F 1 "Q_NPN_BCE" V 4600 3600 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 4950 4250 50  0001 C CNN
F 3 "" H 4750 4150 50  0000 C CNN
	1    4750 4150
	0    1    1    0   
$EndComp
$Comp
L R R212
U 1 1 58B0DA13
P 4750 3700
F 0 "R212" V 4830 3700 50  0000 C CNN
F 1 "10kR" V 4750 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 3700 50  0001 C CNN
F 3 "" H 4750 3700 50  0000 C CNN
	1    4750 3700
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR017
U 1 1 58B0DA19
P 6700 3950
F 0 "#PWR017" H 6700 3800 50  0001 C CNN
F 1 "+24V" H 6700 4100 50  0000 C CNN
F 2 "" H 6700 3950 50  0000 C CNN
F 3 "" H 6700 3950 50  0000 C CNN
	1    6700 3950
	-1   0    0    -1  
$EndComp
NoConn ~ 6450 4400
NoConn ~ 6450 4500
NoConn ~ 6450 4600
Wire Wire Line
	6450 4250 6700 4250
Wire Wire Line
	4950 4250 5150 4250
$Comp
L D D216
U 1 1 58B0DA2A
P 5800 3850
F 0 "D216" H 5800 3950 50  0000 C CNN
F 1 "D" H 5800 3750 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 5800 3850 50  0001 C CNN
F 3 "" H 5800 3850 50  0000 C CNN
	1    5800 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 4250 4550 4250
Wire Wire Line
	5100 3600 5100 4250
Wire Wire Line
	5100 3850 5650 3850
Connection ~ 5100 4250
Wire Wire Line
	5950 3850 6500 3850
Wire Wire Line
	6500 3600 6500 4250
Connection ~ 6500 4250
Wire Wire Line
	6700 4250 6700 3950
$Comp
L Meisei-m4-24h K208
U 1 1 58B0DA3A
P 5750 5850
F 0 "K208" H 5750 6250 60  0000 C CNN
F 1 "Meisei-m4-24h" H 5750 5500 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 5750 5850 60  0001 C CNN
F 3 "" H 5750 5850 60  0001 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q208
U 1 1 58B0DA40
P 4700 5550
F 0 "Q208" V 4650 5250 50  0000 L CNN
F 1 "Q_NPN_BCE" V 4550 5000 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 4900 5650 50  0001 C CNN
F 3 "" H 4700 5550 50  0000 C CNN
	1    4700 5550
	0    1    1    0   
$EndComp
$Comp
L R R209
U 1 1 58B0DA46
P 4700 5100
F 0 "R209" V 4780 5100 50  0000 C CNN
F 1 "10kR" V 4700 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4630 5100 50  0001 C CNN
F 3 "" H 4700 5100 50  0000 C CNN
	1    4700 5100
	-1   0    0    -1  
$EndComp
$Comp
L +24V #PWR018
U 1 1 58B0DA4C
P 6650 5350
F 0 "#PWR018" H 6650 5200 50  0001 C CNN
F 1 "+24V" H 6650 5500 50  0000 C CNN
F 2 "" H 6650 5350 50  0000 C CNN
F 3 "" H 6650 5350 50  0000 C CNN
	1    6650 5350
	-1   0    0    -1  
$EndComp
NoConn ~ 6400 5800
NoConn ~ 6400 5900
NoConn ~ 6400 6000
Wire Wire Line
	6400 5650 6650 5650
Wire Wire Line
	4900 5650 5100 5650
$Comp
L D D213
U 1 1 58B0DA5D
P 5750 5250
F 0 "D213" H 5750 5350 50  0000 C CNN
F 1 "D" H 5750 5150 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 5750 5250 50  0001 C CNN
F 3 "" H 5750 5250 50  0000 C CNN
	1    5750 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 5650 4500 5650
Wire Wire Line
	5050 5000 5050 5650
Wire Wire Line
	5050 5250 5600 5250
Connection ~ 5050 5650
Wire Wire Line
	5900 5250 6450 5250
Wire Wire Line
	6450 5000 6450 5650
Connection ~ 6450 5650
Wire Wire Line
	6650 5650 6650 5350
Text HLabel 4850 3450 2    60   Input ~ 0
O7
Text HLabel 4800 4850 2    60   Input ~ 0
O8
Wire Wire Line
	4800 4850 4700 4850
Text HLabel 5000 4500 0    60   Input ~ 0
OR7sel1
Text HLabel 5000 4600 0    60   Input ~ 0
OR7sel2
Text HLabel 5000 4400 0    60   Input ~ 0
OR7com
Text HLabel 4950 5900 0    60   Input ~ 0
OR8sel1
Text HLabel 4950 6000 0    60   Input ~ 0
OR8sel2
Text HLabel 4950 5800 0    60   Input ~ 0
OR8com
Wire Wire Line
	4950 5800 5100 5800
Wire Wire Line
	4950 5900 5100 5900
Wire Wire Line
	4950 6000 5100 6000
Wire Wire Line
	5000 4400 5150 4400
Wire Wire Line
	5000 4500 5150 4500
Wire Wire Line
	5000 4600 5150 4600
$Comp
L LED D209
U 1 1 58B75E5F
P 5600 5000
F 0 "D209" H 5600 5100 50  0000 C CNN
F 1 "LED" H 5600 4900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5600 5000 50  0001 C CNN
F 3 "" H 5600 5000 50  0000 C CNN
	1    5600 5000
	1    0    0    -1  
$EndComp
$Comp
L R R213
U 1 1 58B75EDE
P 5950 5000
F 0 "R213" V 6030 5000 50  0000 C CNN
F 1 "10kR" V 5950 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5880 5000 50  0001 C CNN
F 3 "" H 5950 5000 50  0000 C CNN
	1    5950 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 5000 6450 5000
Connection ~ 6450 5250
Wire Wire Line
	5750 5000 5800 5000
Wire Wire Line
	5050 5000 5450 5000
Connection ~ 5050 5250
Wire Wire Line
	4700 4850 4700 4950
Wire Wire Line
	4700 5250 4700 5350
$Comp
L LED D212
U 1 1 58B77770
P 5650 3600
F 0 "D212" H 5650 3700 50  0000 C CNN
F 1 "LED" H 5650 3500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5650 3600 50  0001 C CNN
F 3 "" H 5650 3600 50  0000 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L R R216
U 1 1 58B77776
P 6000 3600
F 0 "R216" V 6080 3600 50  0000 C CNN
F 1 "10kR" V 6000 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5930 3600 50  0001 C CNN
F 3 "" H 6000 3600 50  0000 C CNN
	1    6000 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3600 6500 3600
Wire Wire Line
	5800 3600 5850 3600
Wire Wire Line
	5100 3600 5500 3600
Wire Wire Line
	4750 3550 4750 3450
Wire Wire Line
	4750 3450 4850 3450
Wire Wire Line
	4750 3850 4750 3950
Wire Wire Line
	4750 2050 4750 2150
Wire Wire Line
	4750 2450 4750 2550
Wire Wire Line
	4750 650  4750 750 
Wire Wire Line
	4750 1050 4750 1150
Wire Wire Line
	1800 650  1800 750 
Wire Wire Line
	1800 1050 1800 1150
Wire Wire Line
	1800 2050 1800 2150
Wire Wire Line
	1800 2450 1800 2550
Wire Wire Line
	1800 3450 1800 3550
Wire Wire Line
	1800 3850 1800 3950
Wire Wire Line
	1800 4900 1800 5000
Wire Wire Line
	1800 5300 1800 5400
$Comp
L LED D204
U 1 1 58B79DE6
P 2700 5050
F 0 "D204" H 2700 5150 50  0000 C CNN
F 1 "LED" H 2700 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0000 C CNN
	1    2700 5050
	1    0    0    -1  
$EndComp
$Comp
L R R208
U 1 1 58B79DEC
P 3050 5050
F 0 "R208" V 3130 5050 50  0000 C CNN
F 1 "10kR" V 3050 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 5050 50  0001 C CNN
F 3 "" H 3050 5050 50  0000 C CNN
	1    3050 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5050 3550 5050
Wire Wire Line
	2850 5050 2900 5050
Wire Wire Line
	2150 5050 2550 5050
$Comp
L LED D203
U 1 1 58B79F0F
P 2700 3600
F 0 "D203" H 2700 3700 50  0000 C CNN
F 1 "LED" H 2700 3500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2700 3600 50  0001 C CNN
F 3 "" H 2700 3600 50  0000 C CNN
	1    2700 3600
	1    0    0    -1  
$EndComp
$Comp
L R R207
U 1 1 58B79F15
P 3050 3600
F 0 "R207" V 3130 3600 50  0000 C CNN
F 1 "10kR" V 3050 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 3600 50  0001 C CNN
F 3 "" H 3050 3600 50  0000 C CNN
	1    3050 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 3600 3550 3600
Wire Wire Line
	2850 3600 2900 3600
Wire Wire Line
	2150 3600 2550 3600
$Comp
L LED D211
U 1 1 58B7A016
P 5650 2200
F 0 "D211" H 5650 2300 50  0000 C CNN
F 1 "LED" H 5650 2100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5650 2200 50  0001 C CNN
F 3 "" H 5650 2200 50  0000 C CNN
	1    5650 2200
	1    0    0    -1  
$EndComp
$Comp
L R R215
U 1 1 58B7A01C
P 6000 2200
F 0 "R215" V 6080 2200 50  0000 C CNN
F 1 "10kR" V 6000 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5930 2200 50  0001 C CNN
F 3 "" H 6000 2200 50  0000 C CNN
	1    6000 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2200 6500 2200
Wire Wire Line
	5800 2200 5850 2200
Wire Wire Line
	5100 2200 5500 2200
$Comp
L LED D210
U 1 1 58B7A165
P 5650 800
F 0 "D210" H 5650 900 50  0000 C CNN
F 1 "LED" H 5650 700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5650 800 50  0001 C CNN
F 3 "" H 5650 800 50  0000 C CNN
	1    5650 800 
	1    0    0    -1  
$EndComp
$Comp
L R R214
U 1 1 58B7A16B
P 6000 800
F 0 "R214" V 6080 800 50  0000 C CNN
F 1 "10kR" V 6000 800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5930 800 50  0001 C CNN
F 3 "" H 6000 800 50  0000 C CNN
	1    6000 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 800  6500 800 
Wire Wire Line
	5800 800  5850 800 
Wire Wire Line
	5100 800  5500 800 
$Comp
L LED D202
U 1 1 58B7A28C
P 2700 2200
F 0 "D202" H 2700 2300 50  0000 C CNN
F 1 "LED" H 2700 2100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2700 2200 50  0001 C CNN
F 3 "" H 2700 2200 50  0000 C CNN
	1    2700 2200
	1    0    0    -1  
$EndComp
$Comp
L R R206
U 1 1 58B7A292
P 3050 2200
F 0 "R206" V 3130 2200 50  0000 C CNN
F 1 "10kR" V 3050 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 2200 50  0001 C CNN
F 3 "" H 3050 2200 50  0000 C CNN
	1    3050 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 2200 3550 2200
Wire Wire Line
	2850 2200 2900 2200
Wire Wire Line
	2150 2200 2550 2200
$Comp
L LED D201
U 1 1 58B7A381
P 2700 800
F 0 "D201" H 2700 900 50  0000 C CNN
F 1 "LED" H 2700 700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2700 800 50  0001 C CNN
F 3 "" H 2700 800 50  0000 C CNN
	1    2700 800 
	1    0    0    -1  
$EndComp
$Comp
L R R205
U 1 1 58B7A387
P 3050 800
F 0 "R205" V 3130 800 50  0000 C CNN
F 1 "10kR" V 3050 800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 800 50  0001 C CNN
F 3 "" H 3050 800 50  0000 C CNN
	1    3050 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 800  3550 800 
Wire Wire Line
	2850 800  2900 800 
Wire Wire Line
	2150 800  2550 800 
Connection ~ 3550 2450
Connection ~ 2150 2450
Connection ~ 2150 1050
Connection ~ 3550 1050
Connection ~ 5100 1050
Connection ~ 6500 1050
Connection ~ 6500 2450
Connection ~ 5100 2450
Connection ~ 6500 3850
Connection ~ 5100 3850
Connection ~ 3550 5300
Connection ~ 2150 5300
Connection ~ 2150 3850
Connection ~ 3550 3850
Wire Notes Line
	900  6450 900  550 
Wire Notes Line
	900  550  7050 550 
Wire Notes Line
	7050 550  7050 6450
Wire Notes Line
	7050 6450 900  6450
$Comp
L GND #PWR019
U 1 1 58B8C898
P 4500 1450
F 0 "#PWR019" H 4500 1200 50  0001 C CNN
F 1 "GND" H 4500 1300 50  0000 C CNN
F 2 "" H 4500 1450 50  0000 C CNN
F 3 "" H 4500 1450 50  0000 C CNN
	1    4500 1450
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 58B8D0D2
P 4500 2850
F 0 "#PWR020" H 4500 2600 50  0001 C CNN
F 1 "GND" H 4500 2700 50  0000 C CNN
F 2 "" H 4500 2850 50  0000 C CNN
F 3 "" H 4500 2850 50  0000 C CNN
	1    4500 2850
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 58B8D2BD
P 4500 4250
F 0 "#PWR021" H 4500 4000 50  0001 C CNN
F 1 "GND" H 4500 4100 50  0000 C CNN
F 2 "" H 4500 4250 50  0000 C CNN
F 3 "" H 4500 4250 50  0000 C CNN
	1    4500 4250
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR022
U 1 1 58B8D808
P 4450 5650
F 0 "#PWR022" H 4450 5400 50  0001 C CNN
F 1 "GND" H 4450 5500 50  0000 C CNN
F 2 "" H 4450 5650 50  0000 C CNN
F 3 "" H 4450 5650 50  0000 C CNN
	1    4450 5650
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR023
U 1 1 58B8D963
P 1550 5700
F 0 "#PWR023" H 1550 5450 50  0001 C CNN
F 1 "GND" H 1550 5550 50  0000 C CNN
F 2 "" H 1550 5700 50  0000 C CNN
F 3 "" H 1550 5700 50  0000 C CNN
	1    1550 5700
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR024
U 1 1 58B8D9FE
P 1550 4250
F 0 "#PWR024" H 1550 4000 50  0001 C CNN
F 1 "GND" H 1550 4100 50  0000 C CNN
F 2 "" H 1550 4250 50  0000 C CNN
F 3 "" H 1550 4250 50  0000 C CNN
	1    1550 4250
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 58B8DA99
P 1550 2850
F 0 "#PWR025" H 1550 2600 50  0001 C CNN
F 1 "GND" H 1550 2700 50  0000 C CNN
F 2 "" H 1550 2850 50  0000 C CNN
F 3 "" H 1550 2850 50  0000 C CNN
	1    1550 2850
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR026
U 1 1 58B8DCB4
P 1550 1450
F 0 "#PWR026" H 1550 1200 50  0001 C CNN
F 1 "GND" H 1550 1300 50  0000 C CNN
F 2 "" H 1550 1450 50  0000 C CNN
F 3 "" H 1550 1450 50  0000 C CNN
	1    1550 1450
	0    1    -1   0   
$EndComp
$EndSCHEMATC
