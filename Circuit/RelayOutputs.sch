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
P 7450 2700
F 0 "K204" H 7450 3100 60  0000 C CNN
F 1 "Meisei-m4-24h" H 7450 2350 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 7450 2700 60  0001 C CNN
F 3 "" H 7450 2700 60  0001 C CNN
	1    7450 2700
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q204
U 1 1 58ADF9C4
P 6400 2400
F 0 "Q204" V 6350 2100 50  0000 L CNN
F 1 "Q_NPN_BCE" V 6250 1850 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 6600 2500 50  0001 C CNN
F 3 "" H 6400 2400 50  0000 C CNN
	1    6400 2400
	0    1    1    0   
$EndComp
$Comp
L R R204
U 1 1 58ADF9CB
P 6850 1850
F 0 "R204" V 6930 1850 50  0000 C CNN
F 1 "10kR" V 6850 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 1850 50  0001 C CNN
F 3 "" H 6850 1850 50  0000 C CNN
	1    6850 1850
	0    -1   1    0   
$EndComp
$Comp
L +24V #PWR09
U 1 1 58ADF9D2
P 8350 2200
F 0 "#PWR09" H 8350 2050 50  0001 C CNN
F 1 "+24V" H 8350 2350 50  0000 C CNN
F 2 "" H 8350 2200 50  0000 C CNN
F 3 "" H 8350 2200 50  0000 C CNN
	1    8350 2200
	-1   0    0    -1  
$EndComp
NoConn ~ 8100 2650
NoConn ~ 8100 2750
NoConn ~ 8100 2850
$Comp
L GNDREF #PWR010
U 1 1 58ADF9DC
P 6150 2500
F 0 "#PWR010" H 6150 2250 50  0001 C CNN
F 1 "GNDREF" H 6150 2350 50  0000 C CNN
F 2 "" H 6150 2500 50  0000 C CNN
F 3 "" H 6150 2500 50  0000 C CNN
	1    6150 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2500 8350 2500
Wire Wire Line
	6600 2500 6800 2500
Wire Notes Line
	2600 1550 2600 6050
Text Notes 2700 5950 0    60   ~ 0
Relay Outputs
$Comp
L D D204
U 1 1 58AE6BBC
P 7450 2100
F 0 "D204" H 7450 2200 50  0000 C CNN
F 1 "D" H 7450 2000 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 7450 2100 50  0001 C CNN
F 3 "" H 7450 2100 50  0000 C CNN
	1    7450 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 1850 6400 2200
Wire Wire Line
	6150 2500 6200 2500
Wire Wire Line
	6750 2500 6750 2100
Wire Wire Line
	6750 2100 7300 2100
Connection ~ 6750 2500
Wire Wire Line
	7600 2100 8150 2100
Wire Wire Line
	8150 2100 8150 2500
Connection ~ 8150 2500
Wire Wire Line
	8350 2500 8350 2200
Wire Wire Line
	6400 1850 6700 1850
$Comp
L Meisei-m4-24h K205
U 1 1 58AE8967
P 7450 4100
F 0 "K205" H 7450 4500 60  0000 C CNN
F 1 "Meisei-m4-24h" H 7450 3750 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 7450 4100 60  0001 C CNN
F 3 "" H 7450 4100 60  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q205
U 1 1 58AE896D
P 6400 3800
F 0 "Q205" V 6350 3500 50  0000 L CNN
F 1 "Q_NPN_BCE" V 6250 3250 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 6600 3900 50  0001 C CNN
F 3 "" H 6400 3800 50  0000 C CNN
	1    6400 3800
	0    1    1    0   
$EndComp
$Comp
L R R205
U 1 1 58AE8973
P 6850 3250
F 0 "R205" V 6930 3250 50  0000 C CNN
F 1 "10kR" V 6850 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3250 50  0001 C CNN
F 3 "" H 6850 3250 50  0000 C CNN
	1    6850 3250
	0    -1   1    0   
$EndComp
$Comp
L +24V #PWR011
U 1 1 58AE8979
P 8350 3600
F 0 "#PWR011" H 8350 3450 50  0001 C CNN
F 1 "+24V" H 8350 3750 50  0000 C CNN
F 2 "" H 8350 3600 50  0000 C CNN
F 3 "" H 8350 3600 50  0000 C CNN
	1    8350 3600
	-1   0    0    -1  
$EndComp
NoConn ~ 8100 4050
NoConn ~ 8100 4150
NoConn ~ 8100 4250
$Comp
L GNDREF #PWR012
U 1 1 58AE8983
P 6150 3900
F 0 "#PWR012" H 6150 3650 50  0001 C CNN
F 1 "GNDREF" H 6150 3750 50  0000 C CNN
F 2 "" H 6150 3900 50  0000 C CNN
F 3 "" H 6150 3900 50  0000 C CNN
	1    6150 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3900 8350 3900
Wire Wire Line
	6600 3900 6800 3900
$Comp
L D D205
U 1 1 58AE898F
P 7450 3500
F 0 "D205" H 7450 3600 50  0000 C CNN
F 1 "D" H 7450 3400 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 7450 3500 50  0001 C CNN
F 3 "" H 7450 3500 50  0000 C CNN
	1    7450 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 3250 6400 3600
Wire Wire Line
	6150 3900 6200 3900
Wire Wire Line
	6750 3900 6750 3500
Wire Wire Line
	6750 3500 7300 3500
Connection ~ 6750 3900
Wire Wire Line
	7600 3500 8150 3500
Wire Wire Line
	8150 3500 8150 3900
Connection ~ 8150 3900
Wire Wire Line
	8350 3900 8350 3600
Wire Wire Line
	6400 3250 6700 3250
$Comp
L Meisei-m4-24h K206
U 1 1 58AE8A3F
P 7450 5500
F 0 "K206" H 7450 5900 60  0000 C CNN
F 1 "Meisei-m4-24h" H 7450 5150 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 7450 5500 60  0001 C CNN
F 3 "" H 7450 5500 60  0001 C CNN
	1    7450 5500
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q206
U 1 1 58AE8A45
P 6400 5200
F 0 "Q206" V 6350 4900 50  0000 L CNN
F 1 "Q_NPN_BCE" V 6250 4650 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 6600 5300 50  0001 C CNN
F 3 "" H 6400 5200 50  0000 C CNN
	1    6400 5200
	0    1    1    0   
$EndComp
$Comp
L R R206
U 1 1 58AE8A4B
P 6850 4650
F 0 "R206" V 6930 4650 50  0000 C CNN
F 1 "10kR" V 6850 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 4650 50  0001 C CNN
F 3 "" H 6850 4650 50  0000 C CNN
	1    6850 4650
	0    -1   1    0   
$EndComp
$Comp
L +24V #PWR013
U 1 1 58AE8A51
P 8350 5000
F 0 "#PWR013" H 8350 4850 50  0001 C CNN
F 1 "+24V" H 8350 5150 50  0000 C CNN
F 2 "" H 8350 5000 50  0000 C CNN
F 3 "" H 8350 5000 50  0000 C CNN
	1    8350 5000
	-1   0    0    -1  
$EndComp
NoConn ~ 8100 5450
NoConn ~ 8100 5550
NoConn ~ 8100 5650
$Comp
L GNDREF #PWR014
U 1 1 58AE8A5B
P 6150 5300
F 0 "#PWR014" H 6150 5050 50  0001 C CNN
F 1 "GNDREF" H 6150 5150 50  0000 C CNN
F 2 "" H 6150 5300 50  0000 C CNN
F 3 "" H 6150 5300 50  0000 C CNN
	1    6150 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 5300 8350 5300
Wire Wire Line
	6600 5300 6800 5300
$Comp
L D D206
U 1 1 58AE8A67
P 7450 4900
F 0 "D206" H 7450 5000 50  0000 C CNN
F 1 "D" H 7450 4800 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 7450 4900 50  0001 C CNN
F 3 "" H 7450 4900 50  0000 C CNN
	1    7450 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 4650 6400 5000
Wire Wire Line
	6150 5300 6200 5300
Wire Wire Line
	6750 5300 6750 4900
Wire Wire Line
	6750 4900 7300 4900
Connection ~ 6750 5300
Wire Wire Line
	7600 4900 8150 4900
Wire Wire Line
	8150 4900 8150 5300
Connection ~ 8150 5300
Wire Wire Line
	8350 5300 8350 5000
Wire Wire Line
	6400 4650 6700 4650
$Comp
L Meisei-m4-24h K201
U 1 1 58AE8E17
P 4550 2650
F 0 "K201" H 4550 3050 60  0000 C CNN
F 1 "Meisei-m4-24h" H 4550 2300 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 4550 2650 60  0001 C CNN
F 3 "" H 4550 2650 60  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q201
U 1 1 58AE8E1D
P 3500 2350
F 0 "Q201" V 3450 2050 50  0000 L CNN
F 1 "Q_NPN_BCE" V 3350 1800 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 3700 2450 50  0001 C CNN
F 3 "" H 3500 2350 50  0000 C CNN
	1    3500 2350
	0    1    1    0   
$EndComp
$Comp
L R R201
U 1 1 58AE8E23
P 3950 1800
F 0 "R201" V 4030 1800 50  0000 C CNN
F 1 "10kR" V 3950 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0000 C CNN
	1    3950 1800
	0    -1   1    0   
$EndComp
$Comp
L +24V #PWR015
U 1 1 58AE8E29
P 5450 2150
F 0 "#PWR015" H 5450 2000 50  0001 C CNN
F 1 "+24V" H 5450 2300 50  0000 C CNN
F 2 "" H 5450 2150 50  0000 C CNN
F 3 "" H 5450 2150 50  0000 C CNN
	1    5450 2150
	-1   0    0    -1  
$EndComp
NoConn ~ 5200 2600
NoConn ~ 5200 2700
NoConn ~ 5200 2800
$Comp
L GNDREF #PWR016
U 1 1 58AE8E33
P 3250 2450
F 0 "#PWR016" H 3250 2200 50  0001 C CNN
F 1 "GNDREF" H 3250 2300 50  0000 C CNN
F 2 "" H 3250 2450 50  0000 C CNN
F 3 "" H 3250 2450 50  0000 C CNN
	1    3250 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2450 5450 2450
Wire Wire Line
	3700 2450 3900 2450
$Comp
L D D201
U 1 1 58AE8E43
P 4550 2050
F 0 "D201" H 4550 2150 50  0000 C CNN
F 1 "D" H 4550 1950 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4550 2050 50  0001 C CNN
F 3 "" H 4550 2050 50  0000 C CNN
	1    4550 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 1800 3500 2150
Wire Wire Line
	3250 2450 3300 2450
Wire Wire Line
	3850 2450 3850 2050
Wire Wire Line
	3850 2050 4400 2050
Connection ~ 3850 2450
Wire Wire Line
	4700 2050 5250 2050
Wire Wire Line
	5250 2050 5250 2450
Connection ~ 5250 2450
Wire Wire Line
	5450 2450 5450 2150
Wire Wire Line
	3500 1800 3800 1800
$Comp
L Meisei-m4-24h K202
U 1 1 58AE8E57
P 4550 4050
F 0 "K202" H 4550 4450 60  0000 C CNN
F 1 "Meisei-m4-24h" H 4550 3700 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 4550 4050 60  0001 C CNN
F 3 "" H 4550 4050 60  0001 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q202
U 1 1 58AE8E5D
P 3500 3750
F 0 "Q202" V 3450 3450 50  0000 L CNN
F 1 "Q_NPN_BCE" V 3350 3200 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 3700 3850 50  0001 C CNN
F 3 "" H 3500 3750 50  0000 C CNN
	1    3500 3750
	0    1    1    0   
$EndComp
$Comp
L R R202
U 1 1 58AE8E63
P 3950 3200
F 0 "R202" V 4030 3200 50  0000 C CNN
F 1 "10kR" V 3950 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0000 C CNN
	1    3950 3200
	0    -1   1    0   
$EndComp
$Comp
L +24V #PWR017
U 1 1 58AE8E69
P 5450 3550
F 0 "#PWR017" H 5450 3400 50  0001 C CNN
F 1 "+24V" H 5450 3700 50  0000 C CNN
F 2 "" H 5450 3550 50  0000 C CNN
F 3 "" H 5450 3550 50  0000 C CNN
	1    5450 3550
	-1   0    0    -1  
$EndComp
NoConn ~ 5200 4000
NoConn ~ 5200 4100
NoConn ~ 5200 4200
$Comp
L GNDREF #PWR018
U 1 1 58AE8E73
P 3250 3850
F 0 "#PWR018" H 3250 3600 50  0001 C CNN
F 1 "GNDREF" H 3250 3700 50  0000 C CNN
F 2 "" H 3250 3850 50  0000 C CNN
F 3 "" H 3250 3850 50  0000 C CNN
	1    3250 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3850 5450 3850
Wire Wire Line
	3700 3850 3900 3850
$Comp
L D D202
U 1 1 58AE8E83
P 4550 3450
F 0 "D202" H 4550 3550 50  0000 C CNN
F 1 "D" H 4550 3350 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4550 3450 50  0001 C CNN
F 3 "" H 4550 3450 50  0000 C CNN
	1    4550 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 3200 3500 3550
Wire Wire Line
	3250 3850 3300 3850
Wire Wire Line
	3850 3850 3850 3450
Wire Wire Line
	3850 3450 4400 3450
Connection ~ 3850 3850
Wire Wire Line
	4700 3450 5250 3450
Wire Wire Line
	5250 3450 5250 3850
Connection ~ 5250 3850
Wire Wire Line
	5450 3850 5450 3550
Wire Wire Line
	3500 3200 3800 3200
$Comp
L Meisei-m4-24h K203
U 1 1 58AE8E97
P 4550 5450
F 0 "K203" H 4550 5850 60  0000 C CNN
F 1 "Meisei-m4-24h" H 4550 5100 60  0000 C CNN
F 2 "Meisei:Meisei-m4-24h" H 4550 5450 60  0001 C CNN
F 3 "" H 4550 5450 60  0001 C CNN
	1    4550 5450
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE-RESCUE-ControlCircuit Q203
U 1 1 58AE8E9D
P 3500 5150
F 0 "Q203" V 3450 4850 50  0000 L CNN
F 1 "Q_NPN_BCE" V 3350 4600 50  0000 L CNN
F 2 "MMBT3904:MMBT3904" H 3700 5250 50  0001 C CNN
F 3 "" H 3500 5150 50  0000 C CNN
	1    3500 5150
	0    1    1    0   
$EndComp
$Comp
L R R203
U 1 1 58AE8EA3
P 3950 4600
F 0 "R203" V 4030 4600 50  0000 C CNN
F 1 "10kR" V 3950 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 4600 50  0001 C CNN
F 3 "" H 3950 4600 50  0000 C CNN
	1    3950 4600
	0    -1   1    0   
$EndComp
$Comp
L +24V #PWR019
U 1 1 58AE8EA9
P 5450 4950
F 0 "#PWR019" H 5450 4800 50  0001 C CNN
F 1 "+24V" H 5450 5100 50  0000 C CNN
F 2 "" H 5450 4950 50  0000 C CNN
F 3 "" H 5450 4950 50  0000 C CNN
	1    5450 4950
	-1   0    0    -1  
$EndComp
NoConn ~ 5200 5400
NoConn ~ 5200 5500
NoConn ~ 5200 5600
$Comp
L GNDREF #PWR020
U 1 1 58AE8EB3
P 3250 5250
F 0 "#PWR020" H 3250 5000 50  0001 C CNN
F 1 "GNDREF" H 3250 5100 50  0000 C CNN
F 2 "" H 3250 5250 50  0000 C CNN
F 3 "" H 3250 5250 50  0000 C CNN
	1    3250 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 5250 5450 5250
Wire Wire Line
	3700 5250 3900 5250
$Comp
L D D203
U 1 1 58AE8EC3
P 4550 4850
F 0 "D203" H 4550 4950 50  0000 C CNN
F 1 "D" H 4550 4750 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4550 4850 50  0001 C CNN
F 3 "" H 4550 4850 50  0000 C CNN
	1    4550 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 4600 3500 4950
Wire Wire Line
	3250 5250 3300 5250
Wire Wire Line
	3850 5250 3850 4850
Wire Wire Line
	3850 4850 4400 4850
Connection ~ 3850 5250
Wire Wire Line
	4700 4850 5250 4850
Wire Wire Line
	5250 4850 5250 5250
Connection ~ 5250 5250
Wire Wire Line
	5450 5250 5450 4950
Wire Wire Line
	3500 4600 3800 4600
Wire Notes Line
	8650 6050 8650 1550
Wire Notes Line
	8650 1550 2600 1550
Wire Notes Line
	2600 6050 8650 6050
Text HLabel 3750 4100 0    60   Input ~ 0
OR2sel1
Text HLabel 3750 4200 0    60   Input ~ 0
OR2sel2
Text HLabel 3750 4000 0    60   Input ~ 0
OR2com
Wire Wire Line
	3750 4000 3900 4000
Wire Wire Line
	3750 4100 3900 4100
Wire Wire Line
	3750 4200 3900 4200
Text HLabel 4200 3200 2    60   Input ~ 0
O2
Wire Wire Line
	4200 3200 4100 3200
Text HLabel 4200 1800 2    60   Input ~ 0
O1
Text HLabel 4200 4600 2    60   Input ~ 0
O3
Text HLabel 7100 3250 2    60   Input ~ 0
O5
Text HLabel 7100 1850 2    60   Input ~ 0
O4
Text HLabel 7100 4650 2    60   Input ~ 0
O6
Wire Wire Line
	4200 4600 4100 4600
Wire Wire Line
	4200 1800 4100 1800
Wire Wire Line
	7100 1850 7000 1850
Wire Wire Line
	7100 3250 7000 3250
Wire Wire Line
	7100 4650 7000 4650
Text HLabel 3750 2700 0    60   Input ~ 0
OR1sel1
Text HLabel 3750 2800 0    60   Input ~ 0
OR1sel2
Text HLabel 3750 2600 0    60   Input ~ 0
OR1com
Text HLabel 3750 5500 0    60   Input ~ 0
OR3sel1
Text HLabel 3750 5600 0    60   Input ~ 0
OR3sel2
Text HLabel 3750 5400 0    60   Input ~ 0
OR3com
Text HLabel 6650 2750 0    60   Input ~ 0
OR4sel1
Text HLabel 6650 2850 0    60   Input ~ 0
OR4sel2
Text HLabel 6650 2650 0    60   Input ~ 0
OR4com
Text HLabel 6650 4150 0    60   Input ~ 0
OR5sel1
Text HLabel 6650 4250 0    60   Input ~ 0
OR5sel2
Text HLabel 6650 4050 0    60   Input ~ 0
OR5com
Text HLabel 6650 5550 0    60   Input ~ 0
OR6sel1
Text HLabel 6650 5650 0    60   Input ~ 0
OR6sel2
Text HLabel 6650 5450 0    60   Input ~ 0
OR6com
Wire Wire Line
	6650 5450 6800 5450
Wire Wire Line
	6650 5550 6800 5550
Wire Wire Line
	6650 5650 6800 5650
Wire Wire Line
	6650 4050 6800 4050
Wire Wire Line
	6650 4150 6800 4150
Wire Wire Line
	6650 4250 6800 4250
Wire Wire Line
	6650 2650 6800 2650
Wire Wire Line
	6650 2750 6800 2750
Wire Wire Line
	6650 2850 6800 2850
Wire Wire Line
	3750 2600 3900 2600
Wire Wire Line
	3750 2700 3900 2700
Wire Wire Line
	3750 2800 3900 2800
Wire Wire Line
	3750 5400 3900 5400
Wire Wire Line
	3750 5500 3900 5500
Wire Wire Line
	3750 5600 3900 5600
$EndSCHEMATC
