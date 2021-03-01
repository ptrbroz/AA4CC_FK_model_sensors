EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_02x20_Odd_Even H1
U 1 1 60371623
P 10000 4200
F 0 "H1" V 10096 5179 50  0000 L CNN
F 1 "Conn_02x20_Odd_Even" V 10005 5179 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 10000 4200 50  0001 C CNN
F 3 "~" H 10000 4200 50  0001 C CNN
	1    10000 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even H2
U 1 1 603774BB
P 10100 5850
F 0 "H2" V 10104 4763 50  0000 R CNN
F 1 "Conn_02x20_Odd_Even" V 10195 4763 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 10100 5850 50  0001 C CNN
F 3 "~" H 10100 5850 50  0001 C CNN
	1    10100 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 6150 9600 6300
Wire Wire Line
	9600 6300 10500 6300
Wire Wire Line
	10500 6300 10500 6150
Text Label 10500 6350 3    50   ~ 0
GND
Wire Wire Line
	10500 6300 10500 6350
Connection ~ 10500 6300
Text Label 10500 5600 1    50   ~ 0
5V
Wire Wire Line
	10500 5600 10500 5650
Text Label 9600 5600 1    50   ~ 0
3V3
Wire Wire Line
	9600 5600 9600 5650
Text Label 10500 4450 3    50   ~ 0
3V3
Wire Wire Line
	10500 4450 10500 4400
Text Label 9600 4450 3    50   ~ 0
5V
Wire Wire Line
	9600 4450 9600 4400
Wire Wire Line
	9600 3900 9600 3750
Wire Wire Line
	9600 3750 10500 3750
Wire Wire Line
	10500 3750 10500 3900
Text Label 10500 3700 1    50   ~ 0
GND
Wire Wire Line
	10500 3700 10500 3750
Connection ~ 10500 3750
$Comp
L Interface_USB:FT232RL U1
U 1 1 60394778
P 9450 2050
F 0 "U1" H 8950 3050 50  0000 C CNN
F 1 "FT232RL" H 8950 2950 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 10550 1150 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 9450 2050 50  0001 C CNN
	1    9450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1350 8500 1350
Wire Wire Line
	8500 1350 8500 900 
Wire Wire Line
	9350 900  9350 1050
$Comp
L Device:C_Small C1
U 1 1 6039DBD4
P 8300 1000
F 0 "C1" H 8392 1046 50  0000 L CNN
F 1 "100n" H 8392 955 50  0000 L CNN
F 2 "" H 8300 1000 50  0001 C CNN
F 3 "~" H 8300 1000 50  0001 C CNN
	1    8300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2750 8650 3050
Wire Wire Line
	8650 3050 8950 3050
Wire Wire Line
	9250 3050 9450 3050
Connection ~ 9250 3050
Wire Wire Line
	9450 3050 9550 3050
Connection ~ 9450 3050
Wire Wire Line
	9550 3050 9650 3050
Connection ~ 9550 3050
$Comp
L power:GND #PWR0101
U 1 1 603A27EB
P 8300 1100
F 0 "#PWR0101" H 8300 850 50  0001 C CNN
F 1 "GND" H 8305 927 50  0000 C CNN
F 2 "" H 8300 1100 50  0001 C CNN
F 3 "" H 8300 1100 50  0001 C CNN
	1    8300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 900  8300 900 
Wire Wire Line
	8500 900  9350 900 
Connection ~ 8500 900 
$Comp
L power:GND #PWR0102
U 1 1 603A51F8
P 8950 3050
F 0 "#PWR0102" H 8950 2800 50  0001 C CNN
F 1 "GND" H 8955 2877 50  0000 C CNN
F 2 "" H 8950 3050 50  0001 C CNN
F 3 "" H 8950 3050 50  0001 C CNN
	1    8950 3050
	1    0    0    -1  
$EndComp
Connection ~ 8950 3050
Wire Wire Line
	8950 3050 9250 3050
Wire Wire Line
	10250 1350 10550 1350
Wire Wire Line
	10250 1450 10550 1450
Text Label 10550 1350 0    50   ~ 0
TX
Text Label 10550 1450 0    50   ~ 0
RX
$Comp
L Connector:USB_B_Mini J0
U 1 1 603AFCC4
P 7550 1650
F 0 "J0" H 7607 2117 50  0000 C CNN
F 1 "USB_B_Mini" H 7607 2026 50  0000 C CNN
F 2 "54819-0519:54819-0519" H 7700 1600 50  0001 C CNN
F 3 "~" H 7700 1600 50  0001 C CNN
	1    7550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1650 8650 1650
Wire Wire Line
	8650 1750 7850 1750
Wire Wire Line
	7450 2050 7500 2050
Connection ~ 7500 2050
Wire Wire Line
	7500 2050 7550 2050
$Comp
L power:GND #PWR0103
U 1 1 603B3481
P 7850 2250
F 0 "#PWR0103" H 7850 2000 50  0001 C CNN
F 1 "GND" H 7855 2077 50  0000 C CNN
F 2 "" H 7850 2250 50  0001 C CNN
F 3 "" H 7850 2250 50  0001 C CNN
	1    7850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 603B5184
P 8200 1950
F 0 "R1" H 8259 1996 50  0000 L CNN
F 1 "4k7" H 8259 1905 50  0000 L CNN
F 2 "" H 8200 1950 50  0001 C CNN
F 3 "~" H 8200 1950 50  0001 C CNN
	1    8200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 603B60A2
P 8200 2150
F 0 "R2" H 8259 2196 50  0000 L CNN
F 1 "10k" H 8259 2105 50  0000 L CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "~" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2050 8200 2050
Connection ~ 8200 2050
Wire Wire Line
	8200 1850 8200 1450
Wire Wire Line
	8200 1450 7850 1450
Wire Wire Line
	7500 2050 7500 2250
Wire Wire Line
	8200 2250 7850 2250
Connection ~ 7850 2250
Wire Wire Line
	7850 2250 7500 2250
Wire Wire Line
	9550 1050 9550 950 
Text Label 9550 650  0    50   ~ 0
5V
$Comp
L Device:C_Small C2
U 1 1 603B9C1A
P 9800 850
F 0 "C2" H 9892 896 50  0000 L CNN
F 1 "100n" H 9892 805 50  0000 L CNN
F 2 "" H 9800 850 50  0001 C CNN
F 3 "~" H 9800 850 50  0001 C CNN
	1    9800 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 603B9F93
P 10100 850
F 0 "C3" H 10192 896 50  0000 L CNN
F 1 "100n" H 10192 805 50  0000 L CNN
F 2 "" H 10100 850 50  0001 C CNN
F 3 "~" H 10100 850 50  0001 C CNN
	1    10100 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 603BB726
P 10400 850
F 0 "C4" H 10488 896 50  0000 L CNN
F 1 "4.7u" H 10488 805 50  0000 L CNN
F 2 "" H 10400 850 50  0001 C CNN
F 3 "~" H 10400 850 50  0001 C CNN
	1    10400 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 750  10100 750 
Connection ~ 9550 750 
Wire Wire Line
	9550 750  9550 650 
Connection ~ 9800 750 
Wire Wire Line
	9800 750  9550 750 
Connection ~ 10100 750 
Wire Wire Line
	10100 750  9800 750 
Wire Wire Line
	9550 950  9800 950 
Connection ~ 9550 950 
Wire Wire Line
	9550 950  9550 750 
Connection ~ 9800 950 
Wire Wire Line
	9800 950  10100 950 
Connection ~ 10100 950 
Wire Wire Line
	10100 950  10400 950 
$Comp
L power:GND #PWR0104
U 1 1 603BD551
P 10100 950
F 0 "#PWR0104" H 10100 700 50  0001 C CNN
F 1 "GND" H 10105 777 50  0000 C CNN
F 2 "" H 10100 950 50  0001 C CNN
F 3 "" H 10100 950 50  0001 C CNN
	1    10100 950 
	1    0    0    -1  
$EndComp
Text Notes 7300 2850 0    50   ~ 0
External oscillator not reqired\nper datasheet when 5V powered.\n
Text Notes 10450 2150 0    50   ~ 0
todo led indicators
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U2
U 1 1 6038132A
P 3150 1900
F 0 "U2" H 3150 2675 50  0000 C CNN
F 1 "nvt2010pw" H 3150 2584 50  0000 C CNN
F 2 "" V 3150 1900 50  0001 C CNN
F 3 "" V 3150 1900 50  0001 C CNN
	1    3150 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1100 2500 1100
Connection ~ 2400 1100
Wire Wire Line
	2300 1100 2400 1100
Connection ~ 2300 1100
Wire Wire Line
	2200 1100 2300 1100
Connection ~ 2200 1100
Wire Wire Line
	2100 1100 2200 1100
Connection ~ 2100 1100
Wire Wire Line
	2000 1100 2100 1100
Connection ~ 2000 1100
Wire Wire Line
	1900 1100 2000 1100
Connection ~ 1900 1100
Wire Wire Line
	1800 1100 1900 1100
Connection ~ 1800 1100
Wire Wire Line
	1700 1100 1800 1100
Connection ~ 1700 1100
Wire Wire Line
	1600 1100 1700 1100
$Comp
L Device:R_Small R?
U 1 1 6042059B
P 2500 1200
F 0 "R?" V 2500 1400 50  0000 L CNN
F 1 "5k6" V 2500 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2500 1200 50  0001 C CNN
F 3 "~" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60420358
P 2400 1200
F 0 "R?" V 2400 1400 50  0000 L CNN
F 1 "5k6" V 2400 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2400 1200 50  0001 C CNN
F 3 "~" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6042019D
P 2300 1200
F 0 "R?" V 2300 1400 50  0000 L CNN
F 1 "5k6" V 2300 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 1200 50  0001 C CNN
F 3 "~" H 2300 1200 50  0001 C CNN
	1    2300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041FFE8
P 2200 1200
F 0 "R?" V 2200 1400 50  0000 L CNN
F 1 "5k6" V 2200 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2200 1200 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041FE96
P 2100 1200
F 0 "R?" V 2100 1400 50  0000 L CNN
F 1 "5k6" V 2100 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2100 1200 50  0001 C CNN
F 3 "~" H 2100 1200 50  0001 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041FCDB
P 2000 1200
F 0 "R?" V 2000 1400 50  0000 L CNN
F 1 "5k6" V 2000 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2000 1200 50  0001 C CNN
F 3 "~" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041FB1D
P 1900 1200
F 0 "R?" V 1900 1400 50  0000 L CNN
F 1 "5k6" V 1900 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 1200 50  0001 C CNN
F 3 "~" H 1900 1200 50  0001 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041F98D
P 1800 1200
F 0 "R?" V 1800 1400 50  0000 L CNN
F 1 "5k6" V 1800 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1800 1200 50  0001 C CNN
F 3 "~" H 1800 1200 50  0001 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041F6E1
P 1700 1200
F 0 "R?" V 1700 1400 50  0000 L CNN
F 1 "5k6" V 1700 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 1200 50  0001 C CNN
F 3 "~" H 1700 1200 50  0001 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6041DA9E
P 1600 1200
F 0 "R?" V 1600 1400 50  0000 L CNN
F 1 "5k6" V 1600 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1600 1200 50  0001 C CNN
F 3 "~" H 1600 1200 50  0001 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2250 2800 2250
Connection ~ 2500 2250
Wire Wire Line
	2500 1300 2500 2250
Wire Wire Line
	2400 2150 2800 2150
Connection ~ 2400 2150
Wire Wire Line
	2400 1300 2400 2150
Connection ~ 2300 2050
Wire Wire Line
	2300 1300 2300 2050
Wire Wire Line
	2200 1950 2800 1950
Connection ~ 2200 1950
Wire Wire Line
	2200 1300 2200 1950
Wire Wire Line
	2100 1850 2800 1850
Connection ~ 2100 1850
Wire Wire Line
	2100 1300 2100 1850
Wire Wire Line
	2000 1750 2800 1750
Connection ~ 2000 1750
Wire Wire Line
	2000 1300 2000 1750
Wire Wire Line
	1900 1650 2800 1650
Connection ~ 1900 1650
Wire Wire Line
	1900 1300 1900 1650
Wire Wire Line
	1800 1550 2800 1550
Connection ~ 1800 1550
Wire Wire Line
	1800 1300 1800 1550
Wire Wire Line
	1700 1450 2800 1450
Connection ~ 1700 1450
Wire Wire Line
	1700 1300 1700 1450
Wire Wire Line
	1550 2250 2500 2250
Wire Wire Line
	1550 2150 2400 2150
Wire Wire Line
	1550 2050 2300 2050
Wire Wire Line
	1550 1950 2200 1950
Wire Wire Line
	1550 1850 2100 1850
Wire Wire Line
	1550 1750 2000 1750
Wire Wire Line
	1550 1650 1900 1650
Wire Wire Line
	1550 1550 1800 1550
Wire Wire Line
	1550 1450 1700 1450
Connection ~ 1600 1350
Wire Wire Line
	1600 1350 1600 1300
Wire Wire Line
	1550 1350 1600 1350
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J?
U 1 1 603F02F2
P 1250 2200
F 0 "J?" H 750 2200 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 600 2600 50  0000 C CNN
F 2 "" H 1500 2200 50  0001 C CNN
F 3 "" H 1500 2200 50  0001 C CNN
	1    1250 2200
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J?
U 1 1 603F00AF
P 1250 2000
F 0 "J?" H 750 2000 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 600 2200 50  0000 C CNN
F 2 "" H 1500 2000 50  0001 C CNN
F 3 "" H 1500 2000 50  0001 C CNN
	1    1250 2000
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J?
U 1 1 603EFC57
P 1250 1800
F 0 "J?" H 750 1800 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 600 1800 50  0000 C CNN
F 2 "" H 1500 1800 50  0001 C CNN
F 3 "" H 1500 1800 50  0001 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J?
U 1 1 603EF911
P 1250 1600
F 0 "J?" H 750 1600 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 600 1400 50  0000 C CNN
F 2 "" H 1500 1600 50  0001 C CNN
F 3 "" H 1500 1600 50  0001 C CNN
	1    1250 1600
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J?
U 1 1 603EDC55
P 1250 1400
F 0 "J?" H 750 1400 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 600 1000 50  0000 C CNN
F 2 "" H 1500 1400 50  0001 C CNN
F 3 "" H 1500 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2050 2800 2050
Wire Wire Line
	1600 1350 2800 1350
Wire Wire Line
	2800 2350 2700 2350
Connection ~ 2500 1100
Text Label 2800 1100 0    50   ~ 0
5V
Wire Wire Line
	950  1450 950  1650
Wire Wire Line
	950  1650 950  1850
Connection ~ 950  1650
Wire Wire Line
	950  1850 950  2050
Connection ~ 950  1850
Wire Wire Line
	950  2050 950  2250
Connection ~ 950  2050
Wire Wire Line
	950  1450 950  1100
Wire Wire Line
	950  1100 1600 1100
Connection ~ 950  1450
Connection ~ 1600 1100
Wire Wire Line
	900  1350 900  1550
Connection ~ 900  1550
Wire Wire Line
	900  1550 900  1750
Connection ~ 900  1750
Wire Wire Line
	900  1750 900  1950
Connection ~ 900  1950
Wire Wire Line
	900  1950 900  2150
Wire Wire Line
	900  2150 900  2650
Wire Wire Line
	900  2650 1900 2650
Wire Wire Line
	3500 2650 3500 2450
Connection ~ 900  2150
$Comp
L power:GND #PWR?
U 1 1 60466F06
P 1900 2650
F 0 "#PWR?" H 1900 2400 50  0001 C CNN
F 1 "GND" H 1905 2477 50  0000 C CNN
F 2 "" H 1900 2650 50  0001 C CNN
F 3 "" H 1900 2650 50  0001 C CNN
	1    1900 2650
	1    0    0    -1  
$EndComp
Connection ~ 1900 2650
Wire Wire Line
	1900 2650 2700 2650
Wire Wire Line
	3650 2350 3500 2350
Text Label 3650 2450 3    50   ~ 0
3V3
Wire Wire Line
	3650 2350 3650 2450
Wire Wire Line
	2500 1100 2700 1100
$Comp
L Device:R_Small R?
U 1 1 60477924
P 2700 1200
F 0 "R?" V 2700 1400 50  0000 L CNN
F 1 "200k" V 2700 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2700 1200 50  0001 C CNN
F 3 "~" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
Connection ~ 2700 1100
Wire Wire Line
	2700 1100 2800 1100
Wire Wire Line
	2700 1300 2700 2350
Wire Wire Line
	2700 2350 2700 2450
Wire Wire Line
	2700 2450 2800 2450
Connection ~ 2700 2350
$Comp
L Device:C_Small C?
U 1 1 6047FF5A
P 2700 2550
F 0 "C?" H 2500 2600 50  0000 L CNN
F 1 "100n" H 2350 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2700 2550 50  0001 C CNN
F 3 "~" H 2700 2550 50  0001 C CNN
	1    2700 2550
	1    0    0    -1  
$EndComp
Connection ~ 2700 2450
Connection ~ 2700 2650
Wire Wire Line
	2700 2650 3500 2650
Wire Wire Line
	3500 1350 3600 1350
Wire Wire Line
	3500 1450 3600 1450
Wire Wire Line
	3500 1550 3600 1550
Wire Wire Line
	3500 1650 3600 1650
Wire Wire Line
	3500 1750 3600 1750
Wire Wire Line
	3500 1850 3600 1850
Wire Wire Line
	3500 1950 3600 1950
Wire Wire Line
	3500 2050 3600 2050
Wire Wire Line
	3500 2150 3600 2150
Wire Wire Line
	3500 2250 3600 2250
$EndSCHEMATC
