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
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3250 5700 0    60   ~ 0
Relay Inputs
$Comp
L LTV-817 U305
U 1 1 58B4F7B2
P 7250 2350
F 0 "U305" H 7050 2550 50  0000 L CNN
F 1 "LTV-817" H 7250 2550 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 7050 2150 50  0000 L CIN
F 3 "" H 7250 2250 50  0000 L CNN
	1    7250 2350
	1    0    0    -1  
$EndComp
$Comp
L D D305
U 1 1 58B4FD7A
P 6700 2350
F 0 "D305" H 6700 2450 50  0000 C CNN
F 1 "D" H 6700 2250 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 6700 2350 50  0001 C CNN
F 3 "" H 6700 2350 50  0000 C CNN
	1    6700 2350
	0    1    1    0   
$EndComp
$Comp
L R R305
U 1 1 58B4FDCB
P 6400 2200
F 0 "R305" V 6480 2200 50  0000 C CNN
F 1 "2kR" V 6400 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 2200 50  0001 C CNN
F 3 "" H 6400 2200 50  0000 C CNN
	1    6400 2200
	0    1    1    0   
$EndComp
Text HLabel 6150 2200 0    60   Input ~ 0
RI5A
Wire Wire Line
	7750 2250 7550 2250
$Comp
L GND #PWR027
U 1 1 58B5008F
P 7650 2550
F 0 "#PWR027" H 7650 2300 50  0001 C CNN
F 1 "GND" H 7650 2400 50  0000 C CNN
F 2 "" H 7650 2550 50  0000 C CNN
F 3 "" H 7650 2550 50  0000 C CNN
	1    7650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2450 7650 2450
Wire Wire Line
	7650 2450 7650 2550
Wire Wire Line
	6950 2450 6850 2450
Wire Wire Line
	6850 2450 6850 2500
Wire Wire Line
	6550 2200 6850 2200
Wire Wire Line
	6850 2200 6850 2250
Wire Wire Line
	6850 2250 6950 2250
Connection ~ 6700 2200
Connection ~ 6700 2500
Wire Wire Line
	6850 2500 6150 2500
Wire Wire Line
	6150 2200 6250 2200
Text HLabel 6150 2500 0    60   Input ~ 0
RI5K
$Comp
L LTV-817 U306
U 1 1 58B5070E
P 7250 3250
F 0 "U306" H 7050 3450 50  0000 L CNN
F 1 "LTV-817" H 7250 3450 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 7050 3050 50  0000 L CIN
F 3 "" H 7250 3150 50  0000 L CNN
	1    7250 3250
	1    0    0    -1  
$EndComp
$Comp
L D D306
U 1 1 58B50714
P 6700 3250
F 0 "D306" H 6700 3350 50  0000 C CNN
F 1 "D" H 6700 3150 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 6700 3250 50  0001 C CNN
F 3 "" H 6700 3250 50  0000 C CNN
	1    6700 3250
	0    1    1    0   
$EndComp
$Comp
L R R306
U 1 1 58B5071A
P 6400 3100
F 0 "R306" V 6480 3100 50  0000 C CNN
F 1 "2kR" V 6400 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 3100 50  0001 C CNN
F 3 "" H 6400 3100 50  0000 C CNN
	1    6400 3100
	0    1    1    0   
$EndComp
Text HLabel 6150 3100 0    60   Input ~ 0
RI6A
Wire Wire Line
	7750 3150 7550 3150
$Comp
L GND #PWR028
U 1 1 58B50723
P 7650 3450
F 0 "#PWR028" H 7650 3200 50  0001 C CNN
F 1 "GND" H 7650 3300 50  0000 C CNN
F 2 "" H 7650 3450 50  0000 C CNN
F 3 "" H 7650 3450 50  0000 C CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3350 7650 3350
Wire Wire Line
	7650 3350 7650 3450
Wire Wire Line
	6950 3350 6850 3350
Wire Wire Line
	6850 3350 6850 3400
Wire Wire Line
	6550 3100 6850 3100
Wire Wire Line
	6850 3100 6850 3150
Wire Wire Line
	6850 3150 6950 3150
Connection ~ 6700 3100
Connection ~ 6700 3400
Wire Wire Line
	6850 3400 6150 3400
Wire Wire Line
	6150 3100 6250 3100
Text HLabel 6150 3400 0    60   Input ~ 0
RI6K
$Comp
L LTV-817 U307
U 1 1 58B51C8E
P 7250 4150
F 0 "U307" H 7050 4350 50  0000 L CNN
F 1 "LTV-817" H 7250 4350 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 7050 3950 50  0000 L CIN
F 3 "" H 7250 4050 50  0000 L CNN
	1    7250 4150
	1    0    0    -1  
$EndComp
$Comp
L D D307
U 1 1 58B51C94
P 6700 4150
F 0 "D307" H 6700 4250 50  0000 C CNN
F 1 "D" H 6700 4050 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 6700 4150 50  0001 C CNN
F 3 "" H 6700 4150 50  0000 C CNN
	1    6700 4150
	0    1    1    0   
$EndComp
$Comp
L R R307
U 1 1 58B51C9A
P 6400 4000
F 0 "R307" V 6480 4000 50  0000 C CNN
F 1 "2kR" V 6400 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 4000 50  0001 C CNN
F 3 "" H 6400 4000 50  0000 C CNN
	1    6400 4000
	0    1    1    0   
$EndComp
Text HLabel 6150 4000 0    60   Input ~ 0
RI7A
Wire Wire Line
	7750 4050 7550 4050
$Comp
L GND #PWR029
U 1 1 58B51CA3
P 7650 4350
F 0 "#PWR029" H 7650 4100 50  0001 C CNN
F 1 "GND" H 7650 4200 50  0000 C CNN
F 2 "" H 7650 4350 50  0000 C CNN
F 3 "" H 7650 4350 50  0000 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4250 7650 4250
Wire Wire Line
	7650 4250 7650 4350
Wire Wire Line
	6950 4250 6850 4250
Wire Wire Line
	6850 4250 6850 4300
Wire Wire Line
	6550 4000 6850 4000
Wire Wire Line
	6850 4000 6850 4050
Wire Wire Line
	6850 4050 6950 4050
Connection ~ 6700 4000
Connection ~ 6700 4300
Wire Wire Line
	6850 4300 6150 4300
Wire Wire Line
	6150 4000 6250 4000
Text HLabel 6150 4300 0    60   Input ~ 0
RI7K
$Comp
L LTV-817 U308
U 1 1 58B51CB5
P 7250 5050
F 0 "U308" H 7050 5250 50  0000 L CNN
F 1 "LTV-817" H 7250 5250 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 7050 4850 50  0000 L CIN
F 3 "" H 7250 4950 50  0000 L CNN
	1    7250 5050
	1    0    0    -1  
$EndComp
$Comp
L D D308
U 1 1 58B51CBB
P 6700 5050
F 0 "D308" H 6700 5150 50  0000 C CNN
F 1 "D" H 6700 4950 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 6700 5050 50  0001 C CNN
F 3 "" H 6700 5050 50  0000 C CNN
	1    6700 5050
	0    1    1    0   
$EndComp
$Comp
L R R308
U 1 1 58B51CC1
P 6400 4900
F 0 "R308" V 6480 4900 50  0000 C CNN
F 1 "2kR" V 6400 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 4900 50  0001 C CNN
F 3 "" H 6400 4900 50  0000 C CNN
	1    6400 4900
	0    1    1    0   
$EndComp
Text HLabel 6150 4900 0    60   Input ~ 0
RI8A
Wire Wire Line
	7750 4950 7550 4950
$Comp
L GND #PWR030
U 1 1 58B51CCA
P 7650 5250
F 0 "#PWR030" H 7650 5000 50  0001 C CNN
F 1 "GND" H 7650 5100 50  0000 C CNN
F 2 "" H 7650 5250 50  0000 C CNN
F 3 "" H 7650 5250 50  0000 C CNN
	1    7650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5150 7650 5150
Wire Wire Line
	7650 5150 7650 5250
Wire Wire Line
	6950 5150 6850 5150
Wire Wire Line
	6850 5150 6850 5200
Wire Wire Line
	6550 4900 6850 4900
Wire Wire Line
	6850 4900 6850 4950
Wire Wire Line
	6850 4950 6950 4950
Connection ~ 6700 4900
Connection ~ 6700 5200
Wire Wire Line
	6850 5200 6150 5200
Wire Wire Line
	6150 4900 6250 4900
Text HLabel 6150 5200 0    60   Input ~ 0
RI8K
$Comp
L LTV-817 U301
U 1 1 58B51EEF
P 4900 2300
F 0 "U301" H 4700 2500 50  0000 L CNN
F 1 "LTV-817" H 4900 2500 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 4700 2100 50  0000 L CIN
F 3 "" H 4900 2200 50  0000 L CNN
	1    4900 2300
	1    0    0    -1  
$EndComp
$Comp
L D D301
U 1 1 58B51EF5
P 4350 2300
F 0 "D301" H 4350 2400 50  0000 C CNN
F 1 "D" H 4350 2200 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4350 2300 50  0001 C CNN
F 3 "" H 4350 2300 50  0000 C CNN
	1    4350 2300
	0    1    1    0   
$EndComp
$Comp
L R R301
U 1 1 58B51EFB
P 4050 2150
F 0 "R301" V 4130 2150 50  0000 C CNN
F 1 "2kR" V 4050 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 2150 50  0001 C CNN
F 3 "" H 4050 2150 50  0000 C CNN
	1    4050 2150
	0    1    1    0   
$EndComp
Text HLabel 3800 2150 0    60   Input ~ 0
RI1A
Wire Wire Line
	5400 2200 5200 2200
$Comp
L GND #PWR031
U 1 1 58B51F04
P 5300 2500
F 0 "#PWR031" H 5300 2250 50  0001 C CNN
F 1 "GND" H 5300 2350 50  0000 C CNN
F 2 "" H 5300 2500 50  0000 C CNN
F 3 "" H 5300 2500 50  0000 C CNN
	1    5300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2400 5300 2400
Wire Wire Line
	5300 2400 5300 2500
Wire Wire Line
	4600 2400 4500 2400
Wire Wire Line
	4500 2400 4500 2450
Wire Wire Line
	4200 2150 4500 2150
Wire Wire Line
	4500 2150 4500 2200
Wire Wire Line
	4500 2200 4600 2200
Connection ~ 4350 2150
Connection ~ 4350 2450
Wire Wire Line
	4500 2450 3800 2450
Wire Wire Line
	3800 2150 3900 2150
Text HLabel 3800 2450 0    60   Input ~ 0
RI1K
$Comp
L LTV-817 U302
U 1 1 58B51F16
P 4900 3200
F 0 "U302" H 4700 3400 50  0000 L CNN
F 1 "LTV-817" H 4900 3400 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 4700 3000 50  0000 L CIN
F 3 "" H 4900 3100 50  0000 L CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
$Comp
L D D302
U 1 1 58B51F1C
P 4350 3200
F 0 "D302" H 4350 3300 50  0000 C CNN
F 1 "D" H 4350 3100 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4350 3200 50  0001 C CNN
F 3 "" H 4350 3200 50  0000 C CNN
	1    4350 3200
	0    1    1    0   
$EndComp
$Comp
L R R302
U 1 1 58B51F22
P 4050 3050
F 0 "R302" V 4130 3050 50  0000 C CNN
F 1 "2kR" V 4050 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 3050 50  0001 C CNN
F 3 "" H 4050 3050 50  0000 C CNN
	1    4050 3050
	0    1    1    0   
$EndComp
Text HLabel 3800 3050 0    60   Input ~ 0
RI2A
Wire Wire Line
	5400 3100 5200 3100
$Comp
L GND #PWR032
U 1 1 58B51F2B
P 5300 3400
F 0 "#PWR032" H 5300 3150 50  0001 C CNN
F 1 "GND" H 5300 3250 50  0000 C CNN
F 2 "" H 5300 3400 50  0000 C CNN
F 3 "" H 5300 3400 50  0000 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3300 5300 3300
Wire Wire Line
	5300 3300 5300 3400
Wire Wire Line
	4600 3300 4500 3300
Wire Wire Line
	4500 3300 4500 3350
Wire Wire Line
	4200 3050 4500 3050
Wire Wire Line
	4500 3050 4500 3100
Wire Wire Line
	4500 3100 4600 3100
Connection ~ 4350 3050
Connection ~ 4350 3350
Wire Wire Line
	4500 3350 3800 3350
Wire Wire Line
	3800 3050 3900 3050
Text HLabel 3800 3350 0    60   Input ~ 0
RI2K
$Comp
L LTV-817 U303
U 1 1 58B51F3D
P 4900 4100
F 0 "U303" H 4700 4300 50  0000 L CNN
F 1 "LTV-817" H 4900 4300 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 4700 3900 50  0000 L CIN
F 3 "" H 4900 4000 50  0000 L CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
$Comp
L D D303
U 1 1 58B51F43
P 4350 4100
F 0 "D303" H 4350 4200 50  0000 C CNN
F 1 "D" H 4350 4000 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4350 4100 50  0001 C CNN
F 3 "" H 4350 4100 50  0000 C CNN
	1    4350 4100
	0    1    1    0   
$EndComp
$Comp
L R R303
U 1 1 58B51F49
P 4050 3950
F 0 "R303" V 4130 3950 50  0000 C CNN
F 1 "2kR" V 4050 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 3950 50  0001 C CNN
F 3 "" H 4050 3950 50  0000 C CNN
	1    4050 3950
	0    1    1    0   
$EndComp
Text HLabel 3800 3950 0    60   Input ~ 0
RI3A
Wire Wire Line
	5400 4000 5200 4000
$Comp
L GND #PWR033
U 1 1 58B51F52
P 5300 4300
F 0 "#PWR033" H 5300 4050 50  0001 C CNN
F 1 "GND" H 5300 4150 50  0000 C CNN
F 2 "" H 5300 4300 50  0000 C CNN
F 3 "" H 5300 4300 50  0000 C CNN
	1    5300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4200 5300 4200
Wire Wire Line
	5300 4200 5300 4300
Wire Wire Line
	4600 4200 4500 4200
Wire Wire Line
	4500 4200 4500 4250
Wire Wire Line
	4200 3950 4500 3950
Wire Wire Line
	4500 3950 4500 4000
Wire Wire Line
	4500 4000 4600 4000
Connection ~ 4350 3950
Connection ~ 4350 4250
Wire Wire Line
	4500 4250 3800 4250
Wire Wire Line
	3800 3950 3900 3950
Text HLabel 3800 4250 0    60   Input ~ 0
RI3K
$Comp
L LTV-817 U304
U 1 1 58B51F64
P 4900 5000
F 0 "U304" H 4700 5200 50  0000 L CNN
F 1 "LTV-817" H 4900 5200 50  0000 L CNN
F 2 "OptoSOP:OptoSOP" H 4700 4800 50  0000 L CIN
F 3 "" H 4900 4900 50  0000 L CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L D D304
U 1 1 58B51F6A
P 4350 5000
F 0 "D304" H 4350 5100 50  0000 C CNN
F 1 "D" H 4350 4900 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 4350 5000 50  0001 C CNN
F 3 "" H 4350 5000 50  0000 C CNN
	1    4350 5000
	0    1    1    0   
$EndComp
$Comp
L R R304
U 1 1 58B51F70
P 4050 4850
F 0 "R304" V 4130 4850 50  0000 C CNN
F 1 "2kR" V 4050 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0000 C CNN
	1    4050 4850
	0    1    1    0   
$EndComp
Text HLabel 3800 4850 0    60   Input ~ 0
RI4A
Wire Wire Line
	5400 4900 5200 4900
$Comp
L GND #PWR034
U 1 1 58B51F79
P 5300 5200
F 0 "#PWR034" H 5300 4950 50  0001 C CNN
F 1 "GND" H 5300 5050 50  0000 C CNN
F 2 "" H 5300 5200 50  0000 C CNN
F 3 "" H 5300 5200 50  0000 C CNN
	1    5300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5100 5300 5100
Wire Wire Line
	5300 5100 5300 5200
Wire Wire Line
	4600 5100 4500 5100
Wire Wire Line
	4500 5100 4500 5150
Wire Wire Line
	4200 4850 4500 4850
Wire Wire Line
	4500 4850 4500 4900
Wire Wire Line
	4500 4900 4600 4900
Connection ~ 4350 4850
Connection ~ 4350 5150
Wire Wire Line
	4500 5150 3800 5150
Wire Wire Line
	3800 4850 3900 4850
Text HLabel 3800 5150 0    60   Input ~ 0
RI4K
Text HLabel 5400 2200 2    60   Input ~ 0
I1
Text HLabel 5400 3100 2    60   Input ~ 0
I2
Text HLabel 5400 4000 2    60   Input ~ 0
I3
Text HLabel 5400 4900 2    60   Input ~ 0
I4
Text HLabel 7750 2250 2    60   Input ~ 0
I5
Text HLabel 7750 3150 2    60   Input ~ 0
I6
Text HLabel 7750 4050 2    60   Input ~ 0
I7
Text HLabel 7750 4950 2    60   Input ~ 0
I8
Wire Notes Line
	3200 5750 3200 1750
Wire Notes Line
	3200 5750 8150 5750
Wire Notes Line
	8150 5750 8150 1750
Wire Notes Line
	8150 1750 3200 1750
$EndSCHEMATC
