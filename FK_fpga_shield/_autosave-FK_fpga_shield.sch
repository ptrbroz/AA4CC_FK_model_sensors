EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
P 13850 5000
F 0 "H1" V 13946 5979 50  0000 L CNN
F 1 "Conn_02x20_Odd_Even" V 13855 5979 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 13850 5000 50  0001 C CNN
F 3 "~" H 13850 5000 50  0001 C CNN
	1    13850 5000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even H2
U 1 1 603774BB
P 13950 6650
F 0 "H2" V 13954 5563 50  0000 R CNN
F 1 "Conn_02x20_Odd_Even" V 14045 5563 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 13950 6650 50  0001 C CNN
F 3 "~" H 13950 6650 50  0001 C CNN
	1    13950 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	13450 6950 13450 7100
Wire Wire Line
	13450 7100 14350 7100
Wire Wire Line
	14350 7100 14350 6950
Text Label 14350 7150 3    50   ~ 0
GND
Wire Wire Line
	14350 7100 14350 7150
Connection ~ 14350 7100
Text Label 14350 6400 1    50   ~ 0
5V
Wire Wire Line
	14350 6400 14350 6450
Text Label 13450 6400 1    50   ~ 0
3V3
Wire Wire Line
	13450 6400 13450 6450
Text Label 14350 5250 3    50   ~ 0
3V3
Wire Wire Line
	14350 5250 14350 5200
Text Label 13450 5250 3    50   ~ 0
5V
Wire Wire Line
	13450 5250 13450 5200
Wire Wire Line
	13450 4700 13450 4550
Wire Wire Line
	13450 4550 14350 4550
Wire Wire Line
	14350 4550 14350 4700
Text Label 14350 4500 1    50   ~ 0
GND
Wire Wire Line
	14350 4500 14350 4550
Connection ~ 14350 4550
$Comp
L Interface_USB:FT232RL U1
U 1 1 60394778
P 11950 2100
F 0 "U1" H 11450 3100 50  0000 C CNN
F 1 "FT232RL" H 11450 3000 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 13050 1200 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 11950 2100 50  0001 C CNN
	1    11950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 1400 11000 1400
Wire Wire Line
	11000 1400 11000 950 
Wire Wire Line
	11850 950  11850 1100
$Comp
L Device:C_Small C1
U 1 1 6039DBD4
P 10800 1050
F 0 "C1" H 10892 1096 50  0000 L CNN
F 1 "100n" H 10892 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10800 1050 50  0001 C CNN
F 3 "~" H 10800 1050 50  0001 C CNN
	1    10800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 2800 11150 3100
Wire Wire Line
	11150 3100 11450 3100
Wire Wire Line
	11750 3100 11950 3100
Connection ~ 11750 3100
Wire Wire Line
	11950 3100 12050 3100
Connection ~ 11950 3100
Wire Wire Line
	12050 3100 12150 3100
Connection ~ 12050 3100
$Comp
L power:GND #PWR0101
U 1 1 603A27EB
P 10800 1150
F 0 "#PWR0101" H 10800 900 50  0001 C CNN
F 1 "GND" H 10805 977 50  0000 C CNN
F 2 "" H 10800 1150 50  0001 C CNN
F 3 "" H 10800 1150 50  0001 C CNN
	1    10800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 950  10800 950 
Wire Wire Line
	11000 950  11850 950 
Connection ~ 11000 950 
$Comp
L power:GND #PWR0102
U 1 1 603A51F8
P 11450 3100
F 0 "#PWR0102" H 11450 2850 50  0001 C CNN
F 1 "GND" H 11455 2927 50  0000 C CNN
F 2 "" H 11450 3100 50  0001 C CNN
F 3 "" H 11450 3100 50  0001 C CNN
	1    11450 3100
	1    0    0    -1  
$EndComp
Connection ~ 11450 3100
Wire Wire Line
	11450 3100 11750 3100
Wire Wire Line
	12750 1400 13050 1400
Wire Wire Line
	12750 1500 13050 1500
Text Label 13050 1400 0    50   ~ 0
TX
Text Label 13050 1500 0    50   ~ 0
RX
$Comp
L FK_fpga_shield-rescue:USB_B_Mini-Connector J0
U 1 1 603AFCC4
P 10050 1700
F 0 "J0" H 10107 2167 50  0000 C CNN
F 1 "USB_B_Mini" H 10107 2076 50  0000 C CNN
F 2 "54819-0519:54819-0519" H 10200 1650 50  0001 C CNN
F 3 "~" H 10200 1650 50  0001 C CNN
	1    10050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1700 11150 1700
Wire Wire Line
	11150 1800 10350 1800
Wire Wire Line
	9950 2100 10000 2100
Connection ~ 10000 2100
Wire Wire Line
	10000 2100 10050 2100
$Comp
L power:GND #PWR0103
U 1 1 603B3481
P 10350 2300
F 0 "#PWR0103" H 10350 2050 50  0001 C CNN
F 1 "GND" H 10355 2127 50  0000 C CNN
F 2 "" H 10350 2300 50  0001 C CNN
F 3 "" H 10350 2300 50  0001 C CNN
	1    10350 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 603B5184
P 10700 2000
F 0 "R1" H 10759 2046 50  0000 L CNN
F 1 "4k7" H 10759 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10700 2000 50  0001 C CNN
F 3 "~" H 10700 2000 50  0001 C CNN
	1    10700 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 603B60A2
P 10700 2200
F 0 "R2" H 10759 2246 50  0000 L CNN
F 1 "10k" H 10759 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10700 2200 50  0001 C CNN
F 3 "~" H 10700 2200 50  0001 C CNN
	1    10700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 2100 10700 2100
Connection ~ 10700 2100
Wire Wire Line
	10700 1900 10700 1500
Wire Wire Line
	10700 1500 10350 1500
Wire Wire Line
	10000 2100 10000 2300
Wire Wire Line
	10700 2300 10350 2300
Connection ~ 10350 2300
Wire Wire Line
	10350 2300 10000 2300
Text Label 12050 700  0    50   ~ 0
5V
$Comp
L Device:C_Small C2
U 1 1 603B9C1A
P 12300 900
F 0 "C2" H 12392 946 50  0000 L CNN
F 1 "100n" H 12392 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12300 900 50  0001 C CNN
F 3 "~" H 12300 900 50  0001 C CNN
	1    12300 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 603B9F93
P 12600 900
F 0 "C3" H 12692 946 50  0000 L CNN
F 1 "100n" H 12692 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12600 900 50  0001 C CNN
F 3 "~" H 12600 900 50  0001 C CNN
	1    12600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	12900 800  12600 800 
Connection ~ 12050 800 
Wire Wire Line
	12050 800  12050 700 
Connection ~ 12300 800 
Wire Wire Line
	12300 800  12050 800 
Connection ~ 12600 800 
Wire Wire Line
	12600 800  12300 800 
Wire Wire Line
	12300 1000 12600 1000
Connection ~ 12600 1000
Wire Wire Line
	12600 1000 12900 1000
$Comp
L power:GND #PWR0104
U 1 1 603BD551
P 12600 1000
F 0 "#PWR0104" H 12600 750 50  0001 C CNN
F 1 "GND" H 12605 827 50  0000 C CNN
F 2 "" H 12600 1000 50  0001 C CNN
F 3 "" H 12600 1000 50  0001 C CNN
	1    12600 1000
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U2
U 1 1 6038132A
P 3100 1800
F 0 "U2" H 3100 2575 50  0000 C CNN
F 1 "nvt2010pw" H 3100 2484 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 3100 1800 50  0001 C CNN
F 3 "" V 3100 1800 50  0001 C CNN
	1    3100 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 1000 2450 1000
Connection ~ 2350 1000
Wire Wire Line
	2250 1000 2350 1000
Connection ~ 2250 1000
Wire Wire Line
	2150 1000 2250 1000
Connection ~ 2150 1000
Wire Wire Line
	2050 1000 2150 1000
Connection ~ 2050 1000
Wire Wire Line
	1950 1000 2050 1000
Connection ~ 1950 1000
Wire Wire Line
	1850 1000 1950 1000
Connection ~ 1850 1000
Wire Wire Line
	1750 1000 1850 1000
Connection ~ 1750 1000
Wire Wire Line
	1650 1000 1750 1000
Connection ~ 1650 1000
Wire Wire Line
	1550 1000 1650 1000
$Comp
L Device:R_Small R48
U 1 1 6042059B
P 2450 1100
F 0 "R48" V 2450 1300 50  0000 L CNN
F 1 "5k6" V 2450 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 1100 50  0001 C CNN
F 3 "~" H 2450 1100 50  0001 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R43
U 1 1 60420358
P 2350 1100
F 0 "R43" V 2350 1300 50  0000 L CNN
F 1 "5k6" V 2350 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 1100 50  0001 C CNN
F 3 "~" H 2350 1100 50  0001 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R38
U 1 1 6042019D
P 2250 1100
F 0 "R38" V 2250 1300 50  0000 L CNN
F 1 "5k6" V 2250 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 1100 50  0001 C CNN
F 3 "~" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R33
U 1 1 6041FFE8
P 2150 1100
F 0 "R33" V 2150 1300 50  0000 L CNN
F 1 "5k6" V 2150 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 1100 50  0001 C CNN
F 3 "~" H 2150 1100 50  0001 C CNN
	1    2150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R28
U 1 1 6041FE96
P 2050 1100
F 0 "R28" V 2050 1300 50  0000 L CNN
F 1 "5k6" V 2050 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 1100 50  0001 C CNN
F 3 "~" H 2050 1100 50  0001 C CNN
	1    2050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R23
U 1 1 6041FCDB
P 1950 1100
F 0 "R23" V 1950 1300 50  0000 L CNN
F 1 "5k6" V 1950 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 1100 50  0001 C CNN
F 3 "~" H 1950 1100 50  0001 C CNN
	1    1950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 6041FB1D
P 1850 1100
F 0 "R18" V 1850 1300 50  0000 L CNN
F 1 "5k6" V 1850 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 1100 50  0001 C CNN
F 3 "~" H 1850 1100 50  0001 C CNN
	1    1850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6041F98D
P 1750 1100
F 0 "R13" V 1750 1300 50  0000 L CNN
F 1 "5k6" V 1750 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 1100 50  0001 C CNN
F 3 "~" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6041F6E1
P 1650 1100
F 0 "R8" V 1650 1300 50  0000 L CNN
F 1 "5k6" V 1650 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 1100 50  0001 C CNN
F 3 "~" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 6041DA9E
P 1550 1100
F 0 "R3" V 1550 1300 50  0000 L CNN
F 1 "5k6" V 1550 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 1100 50  0001 C CNN
F 3 "~" H 1550 1100 50  0001 C CNN
	1    1550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2150 2750 2150
Connection ~ 2450 2150
Wire Wire Line
	2450 1200 2450 2150
Wire Wire Line
	2350 2050 2750 2050
Connection ~ 2350 2050
Wire Wire Line
	2350 1200 2350 2050
Connection ~ 2250 1950
Wire Wire Line
	2250 1200 2250 1950
Wire Wire Line
	2150 1850 2750 1850
Connection ~ 2150 1850
Wire Wire Line
	2150 1200 2150 1850
Wire Wire Line
	2050 1750 2750 1750
Connection ~ 2050 1750
Wire Wire Line
	2050 1200 2050 1750
Wire Wire Line
	1950 1650 2750 1650
Connection ~ 1950 1650
Wire Wire Line
	1950 1200 1950 1650
Wire Wire Line
	1850 1550 2750 1550
Connection ~ 1850 1550
Wire Wire Line
	1850 1200 1850 1550
Wire Wire Line
	1750 1450 2750 1450
Connection ~ 1750 1450
Wire Wire Line
	1750 1200 1750 1450
Wire Wire Line
	1650 1350 2750 1350
Connection ~ 1650 1350
Wire Wire Line
	1650 1200 1650 1350
Wire Wire Line
	1500 2150 2450 2150
Wire Wire Line
	1500 2050 2350 2050
Wire Wire Line
	1500 1950 2250 1950
Wire Wire Line
	1500 1850 2150 1850
Wire Wire Line
	1500 1750 2050 1750
Wire Wire Line
	1500 1650 1950 1650
Wire Wire Line
	1500 1550 1850 1550
Wire Wire Line
	1500 1450 1750 1450
Wire Wire Line
	1500 1350 1650 1350
Connection ~ 1550 1250
Wire Wire Line
	1550 1250 1550 1200
Wire Wire Line
	1500 1250 1550 1250
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J3
U 1 1 603EFC57
P 1200 1700
F 0 "J3" H 700 1700 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 1700 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 1700 50  0001 C CNN
F 3 "" H 1450 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1950 2750 1950
Wire Wire Line
	1550 1250 2750 1250
Wire Wire Line
	2750 2250 2650 2250
Connection ~ 2450 1000
Text Label 2750 1000 0    50   ~ 0
5V
Wire Wire Line
	900  1350 900  1550
Wire Wire Line
	900  1550 900  1750
Connection ~ 900  1550
Wire Wire Line
	900  1750 900  1950
Connection ~ 900  1750
Wire Wire Line
	900  1950 900  2150
Connection ~ 900  1950
Wire Wire Line
	900  1350 900  1000
Wire Wire Line
	900  1000 1550 1000
Connection ~ 900  1350
Connection ~ 1550 1000
Wire Wire Line
	850  1250 850  1450
Connection ~ 850  1450
Wire Wire Line
	850  1450 850  1650
Connection ~ 850  1650
Wire Wire Line
	850  1650 850  1850
Connection ~ 850  1850
Wire Wire Line
	850  1850 850  2050
Wire Wire Line
	850  2050 850  2550
Wire Wire Line
	3450 2550 3450 2350
Connection ~ 850  2050
$Comp
L power:GND #PWR0105
U 1 1 60466F06
P 3450 2550
F 0 "#PWR0105" H 3450 2300 50  0001 C CNN
F 1 "GND" H 3455 2377 50  0000 C CNN
F 2 "" H 3450 2550 50  0001 C CNN
F 3 "" H 3450 2550 50  0001 C CNN
	1    3450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2250 3450 2250
Text Label 3600 2350 3    50   ~ 0
3V3
Wire Wire Line
	3600 2250 3600 2350
Wire Wire Line
	2450 1000 2650 1000
$Comp
L Device:R_Small R53
U 1 1 60477924
P 2650 1100
F 0 "R53" V 2650 1300 50  0000 L CNN
F 1 "200k" V 2650 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 1100 50  0001 C CNN
F 3 "~" H 2650 1100 50  0001 C CNN
	1    2650 1100
	1    0    0    -1  
$EndComp
Connection ~ 2650 1000
Wire Wire Line
	2650 1000 2750 1000
Wire Wire Line
	2650 1200 2650 2250
Wire Wire Line
	2650 2250 2650 2350
Wire Wire Line
	2650 2350 2750 2350
Connection ~ 2650 2250
$Comp
L Device:C_Small C5
U 1 1 6047FF5A
P 2650 2450
F 0 "C5" H 2450 2500 50  0000 L CNN
F 1 "100n" H 2300 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 2450 50  0001 C CNN
F 3 "~" H 2650 2450 50  0001 C CNN
	1    2650 2450
	1    0    0    -1  
$EndComp
Connection ~ 2650 2350
Connection ~ 2650 2550
Wire Wire Line
	2650 2550 3450 2550
Wire Wire Line
	3450 1250 3550 1250
Wire Wire Line
	3450 1350 3550 1350
Wire Wire Line
	3450 1450 3550 1450
Wire Wire Line
	3450 1550 3550 1550
Wire Wire Line
	3450 1650 3550 1650
Wire Wire Line
	3450 1750 3550 1750
Wire Wire Line
	3450 1850 3550 1850
Wire Wire Line
	3450 1950 3550 1950
Wire Wire Line
	3450 2050 3550 2050
Wire Wire Line
	3450 2150 3550 2150
Connection ~ 3450 2550
Wire Wire Line
	850  2550 2650 2550
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U3
U 1 1 60563C65
P 3100 3850
F 0 "U3" H 3100 4625 50  0000 C CNN
F 1 "nvt2010pw" H 3100 4534 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 3100 3850 50  0001 C CNN
F 3 "" V 3100 3850 50  0001 C CNN
	1    3100 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 3050 2450 3050
Connection ~ 2350 3050
Wire Wire Line
	2250 3050 2350 3050
Connection ~ 2250 3050
Wire Wire Line
	2150 3050 2250 3050
Connection ~ 2150 3050
Wire Wire Line
	2050 3050 2150 3050
Connection ~ 2050 3050
Wire Wire Line
	1950 3050 2050 3050
Connection ~ 1950 3050
Wire Wire Line
	1850 3050 1950 3050
Connection ~ 1850 3050
Wire Wire Line
	1750 3050 1850 3050
Connection ~ 1750 3050
Wire Wire Line
	1650 3050 1750 3050
Connection ~ 1650 3050
Wire Wire Line
	1550 3050 1650 3050
$Comp
L Device:R_Small R49
U 1 1 60563C7C
P 2450 3150
F 0 "R49" V 2450 3350 50  0000 L CNN
F 1 "5k6" V 2450 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 3150 50  0001 C CNN
F 3 "~" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R44
U 1 1 60563C82
P 2350 3150
F 0 "R44" V 2350 3350 50  0000 L CNN
F 1 "5k6" V 2350 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 3150 50  0001 C CNN
F 3 "~" H 2350 3150 50  0001 C CNN
	1    2350 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R39
U 1 1 60563C88
P 2250 3150
F 0 "R39" V 2250 3350 50  0000 L CNN
F 1 "5k6" V 2250 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 3150 50  0001 C CNN
F 3 "~" H 2250 3150 50  0001 C CNN
	1    2250 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R34
U 1 1 60563C8E
P 2150 3150
F 0 "R34" V 2150 3350 50  0000 L CNN
F 1 "5k6" V 2150 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 3150 50  0001 C CNN
F 3 "~" H 2150 3150 50  0001 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R29
U 1 1 60563C94
P 2050 3150
F 0 "R29" V 2050 3350 50  0000 L CNN
F 1 "5k6" V 2050 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 3150 50  0001 C CNN
F 3 "~" H 2050 3150 50  0001 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 60563C9A
P 1950 3150
F 0 "R24" V 1950 3350 50  0000 L CNN
F 1 "5k6" V 1950 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 3150 50  0001 C CNN
F 3 "~" H 1950 3150 50  0001 C CNN
	1    1950 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 60563CA0
P 1850 3150
F 0 "R19" V 1850 3350 50  0000 L CNN
F 1 "5k6" V 1850 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 3150 50  0001 C CNN
F 3 "~" H 1850 3150 50  0001 C CNN
	1    1850 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 60563CA6
P 1750 3150
F 0 "R14" V 1750 3350 50  0000 L CNN
F 1 "5k6" V 1750 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 3150 50  0001 C CNN
F 3 "~" H 1750 3150 50  0001 C CNN
	1    1750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60563CAC
P 1650 3150
F 0 "R9" V 1650 3350 50  0000 L CNN
F 1 "5k6" V 1650 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 3150 50  0001 C CNN
F 3 "~" H 1650 3150 50  0001 C CNN
	1    1650 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 60563CB2
P 1550 3150
F 0 "R4" V 1550 3350 50  0000 L CNN
F 1 "5k6" V 1550 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 3150 50  0001 C CNN
F 3 "~" H 1550 3150 50  0001 C CNN
	1    1550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4200 2750 4200
Connection ~ 2450 4200
Wire Wire Line
	2450 3250 2450 4200
Wire Wire Line
	2350 4100 2750 4100
Connection ~ 2350 4100
Wire Wire Line
	2350 3250 2350 4100
Connection ~ 2250 4000
Wire Wire Line
	2250 3250 2250 4000
Wire Wire Line
	2150 3900 2750 3900
Connection ~ 2150 3900
Wire Wire Line
	2150 3250 2150 3900
Wire Wire Line
	2050 3800 2750 3800
Connection ~ 2050 3800
Wire Wire Line
	2050 3250 2050 3800
Wire Wire Line
	1950 3700 2750 3700
Connection ~ 1950 3700
Wire Wire Line
	1950 3250 1950 3700
Wire Wire Line
	1850 3600 2750 3600
Connection ~ 1850 3600
Wire Wire Line
	1850 3250 1850 3600
Wire Wire Line
	1750 3500 2750 3500
Connection ~ 1750 3500
Wire Wire Line
	1750 3250 1750 3500
Wire Wire Line
	1650 3400 2750 3400
Connection ~ 1650 3400
Wire Wire Line
	1650 3250 1650 3400
Wire Wire Line
	1500 4200 2450 4200
Wire Wire Line
	1500 4100 2350 4100
Wire Wire Line
	1500 4000 2250 4000
Wire Wire Line
	1500 3900 2150 3900
Wire Wire Line
	1500 3800 2050 3800
Wire Wire Line
	1500 3700 1950 3700
Wire Wire Line
	1500 3600 1850 3600
Wire Wire Line
	1500 3500 1750 3500
Wire Wire Line
	1500 3400 1650 3400
Connection ~ 1550 3300
Wire Wire Line
	1550 3300 1550 3250
Wire Wire Line
	1500 3300 1550 3300
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J6
U 1 1 60563CDE
P 1200 4150
F 0 "J6" H 700 4150 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 4550 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 4150 50  0001 C CNN
F 3 "" H 1450 4150 50  0001 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J7
U 1 1 60563CE4
P 1200 3950
F 0 "J7" H 700 3950 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 4150 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 3950 50  0001 C CNN
F 3 "" H 1450 3950 50  0001 C CNN
	1    1200 3950
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J8
U 1 1 60563CEA
P 1200 3750
F 0 "J8" H 700 3750 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 3750 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 3750 50  0001 C CNN
F 3 "" H 1450 3750 50  0001 C CNN
	1    1200 3750
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J10
U 1 1 60563CF6
P 1200 3350
F 0 "J10" H 700 3350 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 2950 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 3350 50  0001 C CNN
F 3 "" H 1450 3350 50  0001 C CNN
	1    1200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4000 2750 4000
Wire Wire Line
	1550 3300 2750 3300
Wire Wire Line
	2750 4300 2650 4300
Connection ~ 2450 3050
Text Label 2750 3050 0    50   ~ 0
5V
Wire Wire Line
	900  3400 900  3600
Wire Wire Line
	900  3600 900  3800
Connection ~ 900  3600
Wire Wire Line
	900  3800 900  4000
Connection ~ 900  3800
Wire Wire Line
	900  4000 900  4200
Connection ~ 900  4000
Wire Wire Line
	900  3400 900  3050
Wire Wire Line
	900  3050 1550 3050
Connection ~ 900  3400
Connection ~ 1550 3050
Wire Wire Line
	850  3300 850  3500
Connection ~ 850  3500
Wire Wire Line
	850  3500 850  3700
Connection ~ 850  3700
Wire Wire Line
	850  3700 850  3900
Connection ~ 850  3900
Wire Wire Line
	850  3900 850  4100
Wire Wire Line
	850  4100 850  4600
Wire Wire Line
	3450 4600 3450 4400
Connection ~ 850  4100
$Comp
L power:GND #PWR0106
U 1 1 60563D16
P 3450 4600
F 0 "#PWR0106" H 3450 4350 50  0001 C CNN
F 1 "GND" H 3455 4427 50  0000 C CNN
F 2 "" H 3450 4600 50  0001 C CNN
F 3 "" H 3450 4600 50  0001 C CNN
	1    3450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4300 3450 4300
Text Label 3600 4400 3    50   ~ 0
3V3
Wire Wire Line
	3600 4300 3600 4400
Wire Wire Line
	2450 3050 2650 3050
$Comp
L Device:R_Small R54
U 1 1 60563D20
P 2650 3150
F 0 "R54" V 2650 3350 50  0000 L CNN
F 1 "200k" V 2650 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 3150 50  0001 C CNN
F 3 "~" H 2650 3150 50  0001 C CNN
	1    2650 3150
	1    0    0    -1  
$EndComp
Connection ~ 2650 3050
Wire Wire Line
	2650 3050 2750 3050
Wire Wire Line
	2650 3250 2650 4300
Wire Wire Line
	2650 4300 2650 4400
Wire Wire Line
	2650 4400 2750 4400
Connection ~ 2650 4300
$Comp
L Device:C_Small C6
U 1 1 60563D2C
P 2650 4500
F 0 "C6" H 2450 4550 50  0000 L CNN
F 1 "100n" H 2300 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 4500 50  0001 C CNN
F 3 "~" H 2650 4500 50  0001 C CNN
	1    2650 4500
	1    0    0    -1  
$EndComp
Connection ~ 2650 4400
Connection ~ 2650 4600
Wire Wire Line
	2650 4600 3450 4600
Wire Wire Line
	3450 3300 3550 3300
Wire Wire Line
	3450 3400 3550 3400
Wire Wire Line
	3450 3500 3550 3500
Wire Wire Line
	3450 3600 3550 3600
Wire Wire Line
	3450 3700 3550 3700
Wire Wire Line
	3450 3800 3550 3800
Wire Wire Line
	3450 3900 3550 3900
Wire Wire Line
	3450 4000 3550 4000
Wire Wire Line
	3450 4100 3550 4100
Wire Wire Line
	3450 4200 3550 4200
Connection ~ 3450 4600
Wire Wire Line
	850  4600 2650 4600
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U4
U 1 1 6057C9F2
P 3100 5900
F 0 "U4" H 3100 6675 50  0000 C CNN
F 1 "nvt2010pw" H 3100 6584 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 3100 5900 50  0001 C CNN
F 3 "" V 3100 5900 50  0001 C CNN
	1    3100 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 5100 2450 5100
Connection ~ 2350 5100
Wire Wire Line
	2250 5100 2350 5100
Connection ~ 2250 5100
Wire Wire Line
	2150 5100 2250 5100
Connection ~ 2150 5100
Wire Wire Line
	2050 5100 2150 5100
Connection ~ 2050 5100
Wire Wire Line
	1950 5100 2050 5100
Connection ~ 1950 5100
Wire Wire Line
	1850 5100 1950 5100
Connection ~ 1850 5100
Wire Wire Line
	1750 5100 1850 5100
Connection ~ 1750 5100
Wire Wire Line
	1650 5100 1750 5100
Connection ~ 1650 5100
Wire Wire Line
	1550 5100 1650 5100
$Comp
L Device:R_Small R50
U 1 1 6057CA09
P 2450 5200
F 0 "R50" V 2450 5400 50  0000 L CNN
F 1 "5k6" V 2450 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 5200 50  0001 C CNN
F 3 "~" H 2450 5200 50  0001 C CNN
	1    2450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R45
U 1 1 6057CA0F
P 2350 5200
F 0 "R45" V 2350 5400 50  0000 L CNN
F 1 "5k6" V 2350 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 5200 50  0001 C CNN
F 3 "~" H 2350 5200 50  0001 C CNN
	1    2350 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R40
U 1 1 6057CA15
P 2250 5200
F 0 "R40" V 2250 5400 50  0000 L CNN
F 1 "5k6" V 2250 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 5200 50  0001 C CNN
F 3 "~" H 2250 5200 50  0001 C CNN
	1    2250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R35
U 1 1 6057CA1B
P 2150 5200
F 0 "R35" V 2150 5400 50  0000 L CNN
F 1 "5k6" V 2150 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 5200 50  0001 C CNN
F 3 "~" H 2150 5200 50  0001 C CNN
	1    2150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R30
U 1 1 6057CA21
P 2050 5200
F 0 "R30" V 2050 5400 50  0000 L CNN
F 1 "5k6" V 2050 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 5200 50  0001 C CNN
F 3 "~" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R25
U 1 1 6057CA27
P 1950 5200
F 0 "R25" V 1950 5400 50  0000 L CNN
F 1 "5k6" V 1950 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 5200 50  0001 C CNN
F 3 "~" H 1950 5200 50  0001 C CNN
	1    1950 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R20
U 1 1 6057CA2D
P 1850 5200
F 0 "R20" V 1850 5400 50  0000 L CNN
F 1 "5k6" V 1850 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 5200 50  0001 C CNN
F 3 "~" H 1850 5200 50  0001 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 6057CA33
P 1750 5200
F 0 "R15" V 1750 5400 50  0000 L CNN
F 1 "5k6" V 1750 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 5200 50  0001 C CNN
F 3 "~" H 1750 5200 50  0001 C CNN
	1    1750 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 6057CA39
P 1650 5200
F 0 "R10" V 1650 5400 50  0000 L CNN
F 1 "5k6" V 1650 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 5200 50  0001 C CNN
F 3 "~" H 1650 5200 50  0001 C CNN
	1    1650 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 6057CA3F
P 1550 5200
F 0 "R5" V 1550 5400 50  0000 L CNN
F 1 "5k6" V 1550 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 5200 50  0001 C CNN
F 3 "~" H 1550 5200 50  0001 C CNN
	1    1550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6250 2750 6250
Connection ~ 2450 6250
Wire Wire Line
	2450 5300 2450 6250
Wire Wire Line
	2350 6150 2750 6150
Connection ~ 2350 6150
Wire Wire Line
	2350 5300 2350 6150
Connection ~ 2250 6050
Wire Wire Line
	2250 5300 2250 6050
Wire Wire Line
	2150 5950 2750 5950
Connection ~ 2150 5950
Wire Wire Line
	2150 5300 2150 5950
Wire Wire Line
	2050 5850 2750 5850
Connection ~ 2050 5850
Wire Wire Line
	2050 5300 2050 5850
Wire Wire Line
	1950 5750 2750 5750
Connection ~ 1950 5750
Wire Wire Line
	1950 5300 1950 5750
Wire Wire Line
	1850 5650 2750 5650
Connection ~ 1850 5650
Wire Wire Line
	1850 5300 1850 5650
Wire Wire Line
	1750 5550 2750 5550
Connection ~ 1750 5550
Wire Wire Line
	1750 5300 1750 5550
Wire Wire Line
	1650 5450 2750 5450
Connection ~ 1650 5450
Wire Wire Line
	1650 5300 1650 5450
Wire Wire Line
	1500 6250 2450 6250
Wire Wire Line
	1500 6150 2350 6150
Wire Wire Line
	1500 6050 2250 6050
Wire Wire Line
	1500 5950 2150 5950
Wire Wire Line
	1500 5850 2050 5850
Wire Wire Line
	1500 5750 1950 5750
Wire Wire Line
	1500 5650 1850 5650
Wire Wire Line
	1500 5550 1750 5550
Wire Wire Line
	1500 5450 1650 5450
Connection ~ 1550 5350
Wire Wire Line
	1550 5350 1550 5300
Wire Wire Line
	1500 5350 1550 5350
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J11
U 1 1 6057CA6B
P 1200 6200
F 0 "J11" H 700 6200 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 6600 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 6200 50  0001 C CNN
F 3 "" H 1450 6200 50  0001 C CNN
	1    1200 6200
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J12
U 1 1 6057CA71
P 1200 6000
F 0 "J12" H 700 6000 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 6200 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 6000 50  0001 C CNN
F 3 "" H 1450 6000 50  0001 C CNN
	1    1200 6000
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J13
U 1 1 6057CA77
P 1200 5800
F 0 "J13" H 700 5800 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 5800 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 5800 50  0001 C CNN
F 3 "" H 1450 5800 50  0001 C CNN
	1    1200 5800
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J14
U 1 1 6057CA7D
P 1200 5600
F 0 "J14" H 700 5600 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 5400 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 5600 50  0001 C CNN
F 3 "" H 1450 5600 50  0001 C CNN
	1    1200 5600
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J15
U 1 1 6057CA83
P 1200 5400
F 0 "J15" H 700 5400 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 5000 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 5400 50  0001 C CNN
F 3 "" H 1450 5400 50  0001 C CNN
	1    1200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6050 2750 6050
Wire Wire Line
	1550 5350 2750 5350
Wire Wire Line
	2750 6350 2650 6350
Connection ~ 2450 5100
Text Label 2750 5100 0    50   ~ 0
5V
Wire Wire Line
	900  5450 900  5650
Wire Wire Line
	900  5650 900  5850
Connection ~ 900  5650
Wire Wire Line
	900  5850 900  6050
Connection ~ 900  5850
Wire Wire Line
	900  6050 900  6250
Connection ~ 900  6050
Wire Wire Line
	900  5450 900  5100
Wire Wire Line
	900  5100 1550 5100
Connection ~ 900  5450
Connection ~ 1550 5100
Wire Wire Line
	850  5350 850  5550
Connection ~ 850  5550
Wire Wire Line
	850  5550 850  5750
Connection ~ 850  5750
Wire Wire Line
	850  5750 850  5950
Connection ~ 850  5950
Wire Wire Line
	850  5950 850  6150
Wire Wire Line
	850  6150 850  6650
Wire Wire Line
	3450 6650 3450 6450
Connection ~ 850  6150
$Comp
L power:GND #PWR0107
U 1 1 6057CAA3
P 3450 6650
F 0 "#PWR0107" H 3450 6400 50  0001 C CNN
F 1 "GND" H 3455 6477 50  0000 C CNN
F 2 "" H 3450 6650 50  0001 C CNN
F 3 "" H 3450 6650 50  0001 C CNN
	1    3450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6350 3450 6350
Text Label 3600 6450 3    50   ~ 0
3V3
Wire Wire Line
	3600 6350 3600 6450
Wire Wire Line
	2450 5100 2650 5100
$Comp
L Device:R_Small R55
U 1 1 6057CAAD
P 2650 5200
F 0 "R55" V 2650 5400 50  0000 L CNN
F 1 "200k" V 2650 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 5200 50  0001 C CNN
F 3 "~" H 2650 5200 50  0001 C CNN
	1    2650 5200
	1    0    0    -1  
$EndComp
Connection ~ 2650 5100
Wire Wire Line
	2650 5100 2750 5100
Wire Wire Line
	2650 5300 2650 6350
Wire Wire Line
	2650 6350 2650 6450
Wire Wire Line
	2650 6450 2750 6450
Connection ~ 2650 6350
$Comp
L Device:C_Small C7
U 1 1 6057CAB9
P 2650 6550
F 0 "C7" H 2450 6600 50  0000 L CNN
F 1 "100n" H 2300 6500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 6550 50  0001 C CNN
F 3 "~" H 2650 6550 50  0001 C CNN
	1    2650 6550
	1    0    0    -1  
$EndComp
Connection ~ 2650 6450
Connection ~ 2650 6650
Wire Wire Line
	2650 6650 3450 6650
Wire Wire Line
	3450 5350 3550 5350
Wire Wire Line
	3450 5450 3550 5450
Wire Wire Line
	3450 5550 3550 5550
Wire Wire Line
	3450 5650 3550 5650
Wire Wire Line
	3450 5750 3550 5750
Wire Wire Line
	3450 5850 3550 5850
Wire Wire Line
	3450 5950 3550 5950
Wire Wire Line
	3450 6050 3550 6050
Wire Wire Line
	3450 6150 3550 6150
Wire Wire Line
	3450 6250 3550 6250
Connection ~ 3450 6650
Wire Wire Line
	850  6650 2650 6650
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U5
U 1 1 605AE05C
P 3100 7950
F 0 "U5" H 3100 8725 50  0000 C CNN
F 1 "nvt2010pw" H 3100 8634 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 3100 7950 50  0001 C CNN
F 3 "" V 3100 7950 50  0001 C CNN
	1    3100 7950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 7150 2450 7150
Connection ~ 2350 7150
Wire Wire Line
	2250 7150 2350 7150
Connection ~ 2250 7150
Wire Wire Line
	2150 7150 2250 7150
Connection ~ 2150 7150
Wire Wire Line
	2050 7150 2150 7150
Connection ~ 2050 7150
Wire Wire Line
	1950 7150 2050 7150
Connection ~ 1950 7150
Wire Wire Line
	1850 7150 1950 7150
Connection ~ 1850 7150
Wire Wire Line
	1750 7150 1850 7150
Connection ~ 1750 7150
Wire Wire Line
	1650 7150 1750 7150
Connection ~ 1650 7150
Wire Wire Line
	1550 7150 1650 7150
$Comp
L Device:R_Small R51
U 1 1 605AE073
P 2450 7250
F 0 "R51" V 2450 7450 50  0000 L CNN
F 1 "5k6" V 2450 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 7250 50  0001 C CNN
F 3 "~" H 2450 7250 50  0001 C CNN
	1    2450 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R46
U 1 1 605AE079
P 2350 7250
F 0 "R46" V 2350 7450 50  0000 L CNN
F 1 "5k6" V 2350 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 7250 50  0001 C CNN
F 3 "~" H 2350 7250 50  0001 C CNN
	1    2350 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R41
U 1 1 605AE07F
P 2250 7250
F 0 "R41" V 2250 7450 50  0000 L CNN
F 1 "5k6" V 2250 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 7250 50  0001 C CNN
F 3 "~" H 2250 7250 50  0001 C CNN
	1    2250 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R36
U 1 1 605AE085
P 2150 7250
F 0 "R36" V 2150 7450 50  0000 L CNN
F 1 "5k6" V 2150 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 7250 50  0001 C CNN
F 3 "~" H 2150 7250 50  0001 C CNN
	1    2150 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R31
U 1 1 605AE08B
P 2050 7250
F 0 "R31" V 2050 7450 50  0000 L CNN
F 1 "5k6" V 2050 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 7250 50  0001 C CNN
F 3 "~" H 2050 7250 50  0001 C CNN
	1    2050 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R26
U 1 1 605AE091
P 1950 7250
F 0 "R26" V 1950 7450 50  0000 L CNN
F 1 "5k6" V 1950 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 7250 50  0001 C CNN
F 3 "~" H 1950 7250 50  0001 C CNN
	1    1950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R21
U 1 1 605AE097
P 1850 7250
F 0 "R21" V 1850 7450 50  0000 L CNN
F 1 "5k6" V 1850 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 7250 50  0001 C CNN
F 3 "~" H 1850 7250 50  0001 C CNN
	1    1850 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 605AE09D
P 1750 7250
F 0 "R16" V 1750 7450 50  0000 L CNN
F 1 "5k6" V 1750 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 7250 50  0001 C CNN
F 3 "~" H 1750 7250 50  0001 C CNN
	1    1750 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 605AE0A3
P 1650 7250
F 0 "R11" V 1650 7450 50  0000 L CNN
F 1 "5k6" V 1650 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 7250 50  0001 C CNN
F 3 "~" H 1650 7250 50  0001 C CNN
	1    1650 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 605AE0A9
P 1550 7250
F 0 "R6" V 1550 7450 50  0000 L CNN
F 1 "5k6" V 1550 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 7250 50  0001 C CNN
F 3 "~" H 1550 7250 50  0001 C CNN
	1    1550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 8300 2750 8300
Connection ~ 2450 8300
Wire Wire Line
	2450 7350 2450 8300
Wire Wire Line
	2350 8200 2750 8200
Connection ~ 2350 8200
Wire Wire Line
	2350 7350 2350 8200
Connection ~ 2250 8100
Wire Wire Line
	2250 7350 2250 8100
Wire Wire Line
	2150 8000 2750 8000
Connection ~ 2150 8000
Wire Wire Line
	2150 7350 2150 8000
Wire Wire Line
	2050 7900 2750 7900
Connection ~ 2050 7900
Wire Wire Line
	2050 7350 2050 7900
Wire Wire Line
	1950 7800 2750 7800
Connection ~ 1950 7800
Wire Wire Line
	1950 7350 1950 7800
Wire Wire Line
	1850 7700 2750 7700
Connection ~ 1850 7700
Wire Wire Line
	1850 7350 1850 7700
Wire Wire Line
	1750 7600 2750 7600
Connection ~ 1750 7600
Wire Wire Line
	1750 7350 1750 7600
Wire Wire Line
	1650 7500 2750 7500
Connection ~ 1650 7500
Wire Wire Line
	1650 7350 1650 7500
Wire Wire Line
	1500 8300 2450 8300
Wire Wire Line
	1500 8200 2350 8200
Wire Wire Line
	1500 8100 2250 8100
Wire Wire Line
	1500 8000 2150 8000
Wire Wire Line
	1500 7900 2050 7900
Wire Wire Line
	1500 7800 1950 7800
Wire Wire Line
	1500 7700 1850 7700
Wire Wire Line
	1500 7600 1750 7600
Wire Wire Line
	1500 7500 1650 7500
Connection ~ 1550 7400
Wire Wire Line
	1550 7400 1550 7350
Wire Wire Line
	1500 7400 1550 7400
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J16
U 1 1 605AE0D5
P 1200 8250
F 0 "J16" H 700 8250 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 8650 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 8250 50  0001 C CNN
F 3 "" H 1450 8250 50  0001 C CNN
	1    1200 8250
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J17
U 1 1 605AE0DB
P 1200 8050
F 0 "J17" H 700 8050 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 8250 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 8050 50  0001 C CNN
F 3 "" H 1450 8050 50  0001 C CNN
	1    1200 8050
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J18
U 1 1 605AE0E1
P 1200 7850
F 0 "J18" H 700 7850 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 7850 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 7850 50  0001 C CNN
F 3 "" H 1450 7850 50  0001 C CNN
	1    1200 7850
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J19
U 1 1 605AE0E7
P 1200 7650
F 0 "J19" H 700 7650 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 7450 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 7650 50  0001 C CNN
F 3 "" H 1450 7650 50  0001 C CNN
	1    1200 7650
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J20
U 1 1 605AE0ED
P 1200 7450
F 0 "J20" H 700 7450 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 7050 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 7450 50  0001 C CNN
F 3 "" H 1450 7450 50  0001 C CNN
	1    1200 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 8100 2750 8100
Wire Wire Line
	1550 7400 2750 7400
Wire Wire Line
	2750 8400 2650 8400
Connection ~ 2450 7150
Text Label 2750 7150 0    50   ~ 0
5V
Wire Wire Line
	900  7500 900  7700
Wire Wire Line
	900  7700 900  7900
Connection ~ 900  7700
Wire Wire Line
	900  7900 900  8100
Connection ~ 900  7900
Wire Wire Line
	900  8100 900  8300
Connection ~ 900  8100
Wire Wire Line
	900  7500 900  7150
Wire Wire Line
	900  7150 1550 7150
Connection ~ 900  7500
Connection ~ 1550 7150
Wire Wire Line
	850  7400 850  7600
Connection ~ 850  7600
Wire Wire Line
	850  7600 850  7800
Connection ~ 850  7800
Wire Wire Line
	850  7800 850  8000
Connection ~ 850  8000
Wire Wire Line
	850  8000 850  8200
Wire Wire Line
	850  8200 850  8700
Wire Wire Line
	3450 8700 3450 8500
Connection ~ 850  8200
$Comp
L power:GND #PWR0108
U 1 1 605AE10D
P 3450 8700
F 0 "#PWR0108" H 3450 8450 50  0001 C CNN
F 1 "GND" H 3455 8527 50  0000 C CNN
F 2 "" H 3450 8700 50  0001 C CNN
F 3 "" H 3450 8700 50  0001 C CNN
	1    3450 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 8400 3450 8400
Text Label 3600 8500 3    50   ~ 0
3V3
Wire Wire Line
	3600 8400 3600 8500
Wire Wire Line
	2450 7150 2650 7150
$Comp
L Device:R_Small R56
U 1 1 605AE117
P 2650 7250
F 0 "R56" V 2650 7450 50  0000 L CNN
F 1 "200k" V 2650 7600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 7250 50  0001 C CNN
F 3 "~" H 2650 7250 50  0001 C CNN
	1    2650 7250
	1    0    0    -1  
$EndComp
Connection ~ 2650 7150
Wire Wire Line
	2650 7150 2750 7150
Wire Wire Line
	2650 7350 2650 8400
Wire Wire Line
	2650 8400 2650 8500
Wire Wire Line
	2650 8500 2750 8500
Connection ~ 2650 8400
$Comp
L Device:C_Small C8
U 1 1 605AE123
P 2650 8600
F 0 "C8" H 2450 8650 50  0000 L CNN
F 1 "100n" H 2300 8550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 8600 50  0001 C CNN
F 3 "~" H 2650 8600 50  0001 C CNN
	1    2650 8600
	1    0    0    -1  
$EndComp
Connection ~ 2650 8500
Connection ~ 2650 8700
Wire Wire Line
	2650 8700 3450 8700
Wire Wire Line
	3450 7400 3550 7400
Wire Wire Line
	3450 7500 3550 7500
Wire Wire Line
	3450 7600 3550 7600
Wire Wire Line
	3450 7700 3550 7700
Wire Wire Line
	3450 7800 3550 7800
Wire Wire Line
	3450 7900 3550 7900
Wire Wire Line
	3450 8000 3550 8000
Wire Wire Line
	3450 8100 3550 8100
Wire Wire Line
	3450 8200 3550 8200
Wire Wire Line
	3450 8300 3550 8300
Connection ~ 3450 8700
Wire Wire Line
	850  8700 2650 8700
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U6
U 1 1 605D85C3
P 3100 10000
F 0 "U6" H 3100 10775 50  0000 C CNN
F 1 "nvt2010pw" H 3100 10684 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 3100 10000 50  0001 C CNN
F 3 "" V 3100 10000 50  0001 C CNN
	1    3100 10000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 9200 2450 9200
Connection ~ 2350 9200
Wire Wire Line
	2250 9200 2350 9200
Connection ~ 2250 9200
Wire Wire Line
	2150 9200 2250 9200
Connection ~ 2150 9200
Wire Wire Line
	2050 9200 2150 9200
Connection ~ 2050 9200
Wire Wire Line
	1950 9200 2050 9200
Connection ~ 1950 9200
Wire Wire Line
	1850 9200 1950 9200
Connection ~ 1850 9200
Wire Wire Line
	1750 9200 1850 9200
Connection ~ 1750 9200
Wire Wire Line
	1650 9200 1750 9200
Connection ~ 1650 9200
Wire Wire Line
	1550 9200 1650 9200
$Comp
L Device:R_Small R52
U 1 1 605D85DA
P 2450 9300
F 0 "R52" V 2450 9500 50  0000 L CNN
F 1 "5k6" V 2450 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 9300 50  0001 C CNN
F 3 "~" H 2450 9300 50  0001 C CNN
	1    2450 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R47
U 1 1 605D85E0
P 2350 9300
F 0 "R47" V 2350 9500 50  0000 L CNN
F 1 "5k6" V 2350 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 9300 50  0001 C CNN
F 3 "~" H 2350 9300 50  0001 C CNN
	1    2350 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R42
U 1 1 605D85E6
P 2250 9300
F 0 "R42" V 2250 9500 50  0000 L CNN
F 1 "5k6" V 2250 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 9300 50  0001 C CNN
F 3 "~" H 2250 9300 50  0001 C CNN
	1    2250 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R37
U 1 1 605D85EC
P 2150 9300
F 0 "R37" V 2150 9500 50  0000 L CNN
F 1 "5k6" V 2150 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 9300 50  0001 C CNN
F 3 "~" H 2150 9300 50  0001 C CNN
	1    2150 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R32
U 1 1 605D85F2
P 2050 9300
F 0 "R32" V 2050 9500 50  0000 L CNN
F 1 "5k6" V 2050 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 9300 50  0001 C CNN
F 3 "~" H 2050 9300 50  0001 C CNN
	1    2050 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R27
U 1 1 605D85F8
P 1950 9300
F 0 "R27" V 1950 9500 50  0000 L CNN
F 1 "5k6" V 1950 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 9300 50  0001 C CNN
F 3 "~" H 1950 9300 50  0001 C CNN
	1    1950 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 605D85FE
P 1850 9300
F 0 "R22" V 1850 9500 50  0000 L CNN
F 1 "5k6" V 1850 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 9300 50  0001 C CNN
F 3 "~" H 1850 9300 50  0001 C CNN
	1    1850 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 605D8604
P 1750 9300
F 0 "R17" V 1750 9500 50  0000 L CNN
F 1 "5k6" V 1750 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 9300 50  0001 C CNN
F 3 "~" H 1750 9300 50  0001 C CNN
	1    1750 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 605D860A
P 1650 9300
F 0 "R12" V 1650 9500 50  0000 L CNN
F 1 "5k6" V 1650 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 9300 50  0001 C CNN
F 3 "~" H 1650 9300 50  0001 C CNN
	1    1650 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 605D8610
P 1550 9300
F 0 "R7" V 1550 9500 50  0000 L CNN
F 1 "5k6" V 1550 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 9300 50  0001 C CNN
F 3 "~" H 1550 9300 50  0001 C CNN
	1    1550 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 10350 2750 10350
Connection ~ 2450 10350
Wire Wire Line
	2450 9400 2450 10350
Wire Wire Line
	2350 10250 2750 10250
Connection ~ 2350 10250
Wire Wire Line
	2350 9400 2350 10250
Connection ~ 2250 10150
Wire Wire Line
	2250 9400 2250 10150
Wire Wire Line
	2150 10050 2750 10050
Connection ~ 2150 10050
Wire Wire Line
	2150 9400 2150 10050
Wire Wire Line
	2050 9950 2750 9950
Connection ~ 2050 9950
Wire Wire Line
	2050 9400 2050 9950
Wire Wire Line
	1950 9850 2750 9850
Connection ~ 1950 9850
Wire Wire Line
	1950 9400 1950 9850
Wire Wire Line
	1850 9750 2750 9750
Connection ~ 1850 9750
Wire Wire Line
	1850 9400 1850 9750
Wire Wire Line
	1750 9650 2750 9650
Connection ~ 1750 9650
Wire Wire Line
	1750 9400 1750 9650
Wire Wire Line
	1650 9550 2750 9550
Connection ~ 1650 9550
Wire Wire Line
	1650 9400 1650 9550
Wire Wire Line
	1500 10350 2450 10350
Wire Wire Line
	1500 10250 2350 10250
Wire Wire Line
	1500 10150 2250 10150
Wire Wire Line
	1500 10050 2150 10050
Wire Wire Line
	1500 9950 2050 9950
Wire Wire Line
	1500 9850 1950 9850
Wire Wire Line
	1500 9750 1850 9750
Wire Wire Line
	1500 9650 1750 9650
Wire Wire Line
	1500 9550 1650 9550
Connection ~ 1550 9450
Wire Wire Line
	1550 9450 1550 9400
Wire Wire Line
	1500 9450 1550 9450
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J21
U 1 1 605D863C
P 1200 10300
F 0 "J21" H 700 10300 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 10700 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 10300 50  0001 C CNN
F 3 "" H 1450 10300 50  0001 C CNN
	1    1200 10300
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J22
U 1 1 605D8642
P 1200 10100
F 0 "J22" H 700 10100 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 10300 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 10100 50  0001 C CNN
F 3 "" H 1450 10100 50  0001 C CNN
	1    1200 10100
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J23
U 1 1 605D8648
P 1200 9900
F 0 "J23" H 700 9900 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 9900 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 9900 50  0001 C CNN
F 3 "" H 1450 9900 50  0001 C CNN
	1    1200 9900
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J24
U 1 1 605D864E
P 1200 9700
F 0 "J24" H 700 9700 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 9500 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 9700 50  0001 C CNN
F 3 "" H 1450 9700 50  0001 C CNN
	1    1200 9700
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J25
U 1 1 605D8654
P 1200 9500
F 0 "J25" H 700 9500 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 9100 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 9500 50  0001 C CNN
F 3 "" H 1450 9500 50  0001 C CNN
	1    1200 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 10150 2750 10150
Wire Wire Line
	1550 9450 2750 9450
Wire Wire Line
	2750 10450 2650 10450
Connection ~ 2450 9200
Text Label 2750 9200 0    50   ~ 0
5V
Wire Wire Line
	900  9550 900  9750
Wire Wire Line
	900  9750 900  9950
Connection ~ 900  9750
Wire Wire Line
	900  9950 900  10150
Connection ~ 900  9950
Wire Wire Line
	900  10150 900  10350
Connection ~ 900  10150
Wire Wire Line
	900  9550 900  9200
Wire Wire Line
	900  9200 1550 9200
Connection ~ 900  9550
Connection ~ 1550 9200
Wire Wire Line
	850  9450 850  9650
Connection ~ 850  9650
Wire Wire Line
	850  9650 850  9850
Connection ~ 850  9850
Wire Wire Line
	850  9850 850  10050
Connection ~ 850  10050
Wire Wire Line
	850  10050 850  10250
Wire Wire Line
	850  10250 850  10750
Wire Wire Line
	3450 10750 3450 10550
Connection ~ 850  10250
$Comp
L power:GND #PWR0109
U 1 1 605D8674
P 3450 10750
F 0 "#PWR0109" H 3450 10500 50  0001 C CNN
F 1 "GND" H 3455 10577 50  0000 C CNN
F 2 "" H 3450 10750 50  0001 C CNN
F 3 "" H 3450 10750 50  0001 C CNN
	1    3450 10750
	1    0    0    -1  
$EndComp
Text Label 3600 10550 3    50   ~ 0
3V3
Wire Wire Line
	3600 10450 3600 10550
Wire Wire Line
	2450 9200 2650 9200
$Comp
L Device:R_Small R57
U 1 1 605D867E
P 2650 9300
F 0 "R57" V 2650 9500 50  0000 L CNN
F 1 "200k" V 2650 9650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 9300 50  0001 C CNN
F 3 "~" H 2650 9300 50  0001 C CNN
	1    2650 9300
	1    0    0    -1  
$EndComp
Connection ~ 2650 9200
Wire Wire Line
	2650 9200 2750 9200
Wire Wire Line
	2650 9400 2650 10450
Wire Wire Line
	2650 10450 2650 10550
Wire Wire Line
	2650 10550 2750 10550
Connection ~ 2650 10450
$Comp
L Device:C_Small C9
U 1 1 605D868A
P 2650 10650
F 0 "C9" H 2450 10700 50  0000 L CNN
F 1 "100n" H 2300 10600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 10650 50  0001 C CNN
F 3 "~" H 2650 10650 50  0001 C CNN
	1    2650 10650
	1    0    0    -1  
$EndComp
Connection ~ 2650 10550
Connection ~ 2650 10750
Wire Wire Line
	2650 10750 3450 10750
Wire Wire Line
	3450 9450 3550 9450
Wire Wire Line
	3450 9550 3550 9550
Wire Wire Line
	3450 9650 3550 9650
Wire Wire Line
	3450 9750 3550 9750
Wire Wire Line
	3450 9850 3550 9850
Wire Wire Line
	3450 9950 3550 9950
Wire Wire Line
	3450 10050 3550 10050
Wire Wire Line
	3450 10150 3550 10150
Wire Wire Line
	3450 10250 3550 10250
Wire Wire Line
	3450 10350 3550 10350
Connection ~ 3450 10750
Wire Wire Line
	850  10750 2650 10750
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U7
U 1 1 606B4B74
P 7400 1800
F 0 "U7" H 7400 2575 50  0000 C CNN
F 1 "nvt2010pw" H 7400 2484 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 7400 1800 50  0001 C CNN
F 3 "" V 7400 1800 50  0001 C CNN
	1    7400 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 1000 6750 1000
Connection ~ 6650 1000
Wire Wire Line
	6550 1000 6650 1000
Connection ~ 6550 1000
Wire Wire Line
	6450 1000 6550 1000
Connection ~ 6450 1000
Wire Wire Line
	6350 1000 6450 1000
Connection ~ 6350 1000
Wire Wire Line
	6250 1000 6350 1000
Connection ~ 6250 1000
Wire Wire Line
	6150 1000 6250 1000
Connection ~ 6150 1000
Wire Wire Line
	6050 1000 6150 1000
Connection ~ 6050 1000
Wire Wire Line
	5950 1000 6050 1000
Connection ~ 5950 1000
Wire Wire Line
	5850 1000 5950 1000
$Comp
L Device:R_Small R76
U 1 1 606B4B8B
P 6750 1100
F 0 "R76" V 6750 1300 50  0000 L CNN
F 1 "5k6" V 6750 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6750 1100 50  0001 C CNN
F 3 "~" H 6750 1100 50  0001 C CNN
	1    6750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R74
U 1 1 606B4B91
P 6650 1100
F 0 "R74" V 6650 1300 50  0000 L CNN
F 1 "5k6" V 6650 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6650 1100 50  0001 C CNN
F 3 "~" H 6650 1100 50  0001 C CNN
	1    6650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R72
U 1 1 606B4B97
P 6550 1100
F 0 "R72" V 6550 1300 50  0000 L CNN
F 1 "5k6" V 6550 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6550 1100 50  0001 C CNN
F 3 "~" H 6550 1100 50  0001 C CNN
	1    6550 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R70
U 1 1 606B4B9D
P 6450 1100
F 0 "R70" V 6450 1300 50  0000 L CNN
F 1 "5k6" V 6450 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6450 1100 50  0001 C CNN
F 3 "~" H 6450 1100 50  0001 C CNN
	1    6450 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R68
U 1 1 606B4BA3
P 6350 1100
F 0 "R68" V 6350 1300 50  0000 L CNN
F 1 "5k6" V 6350 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 1100 50  0001 C CNN
F 3 "~" H 6350 1100 50  0001 C CNN
	1    6350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R66
U 1 1 606B4BA9
P 6250 1100
F 0 "R66" V 6250 1300 50  0000 L CNN
F 1 "5k6" V 6250 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 1100 50  0001 C CNN
F 3 "~" H 6250 1100 50  0001 C CNN
	1    6250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R64
U 1 1 606B4BAF
P 6150 1100
F 0 "R64" V 6150 1300 50  0000 L CNN
F 1 "5k6" V 6150 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6150 1100 50  0001 C CNN
F 3 "~" H 6150 1100 50  0001 C CNN
	1    6150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R62
U 1 1 606B4BB5
P 6050 1100
F 0 "R62" V 6050 1300 50  0000 L CNN
F 1 "5k6" V 6050 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6050 1100 50  0001 C CNN
F 3 "~" H 6050 1100 50  0001 C CNN
	1    6050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R60
U 1 1 606B4BBB
P 5950 1100
F 0 "R60" V 5950 1300 50  0000 L CNN
F 1 "5k6" V 5950 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5950 1100 50  0001 C CNN
F 3 "~" H 5950 1100 50  0001 C CNN
	1    5950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R58
U 1 1 606B4BC1
P 5850 1100
F 0 "R58" V 5850 1300 50  0000 L CNN
F 1 "5k6" V 5850 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5850 1100 50  0001 C CNN
F 3 "~" H 5850 1100 50  0001 C CNN
	1    5850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2150 7050 2150
Connection ~ 6750 2150
Wire Wire Line
	6750 1200 6750 2150
Wire Wire Line
	6650 2050 7050 2050
Connection ~ 6650 2050
Wire Wire Line
	6650 1200 6650 2050
Connection ~ 6550 1950
Wire Wire Line
	6550 1200 6550 1950
Wire Wire Line
	6450 1850 7050 1850
Connection ~ 6450 1850
Wire Wire Line
	6450 1200 6450 1850
Wire Wire Line
	6350 1750 7050 1750
Connection ~ 6350 1750
Wire Wire Line
	6350 1200 6350 1750
Wire Wire Line
	6250 1650 7050 1650
Connection ~ 6250 1650
Wire Wire Line
	6250 1200 6250 1650
Wire Wire Line
	6150 1550 7050 1550
Connection ~ 6150 1550
Wire Wire Line
	6150 1200 6150 1550
Wire Wire Line
	6050 1450 7050 1450
Connection ~ 6050 1450
Wire Wire Line
	6050 1200 6050 1450
Wire Wire Line
	5950 1350 7050 1350
Connection ~ 5950 1350
Wire Wire Line
	5950 1200 5950 1350
Wire Wire Line
	5800 2150 6750 2150
Wire Wire Line
	5800 2050 6650 2050
Wire Wire Line
	5800 1950 6550 1950
Wire Wire Line
	5800 1850 6450 1850
Wire Wire Line
	5800 1750 6350 1750
Wire Wire Line
	5800 1650 6250 1650
Wire Wire Line
	5800 1550 6150 1550
Wire Wire Line
	5800 1450 6050 1450
Wire Wire Line
	5800 1350 5950 1350
Connection ~ 5850 1250
Wire Wire Line
	5850 1250 5850 1200
Wire Wire Line
	5800 1250 5850 1250
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J26
U 1 1 606B4BED
P 5500 2100
F 0 "J26" H 5000 2100 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 2500 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 2100 50  0001 C CNN
F 3 "" H 5750 2100 50  0001 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J27
U 1 1 606B4BF3
P 5500 1900
F 0 "J27" H 5000 1900 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 2100 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5500 1900
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J28
U 1 1 606B4BF9
P 5500 1700
F 0 "J28" H 5000 1700 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 1700 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 1700 50  0001 C CNN
F 3 "" H 5750 1700 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J29
U 1 1 606B4BFF
P 5500 1500
F 0 "J29" H 5000 1500 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 1300 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5500 1500
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J30
U 1 1 606B4C05
P 5500 1300
F 0 "J30" H 5000 1300 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 900 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 1300 50  0001 C CNN
F 3 "" H 5750 1300 50  0001 C CNN
	1    5500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1950 7050 1950
Wire Wire Line
	5850 1250 7050 1250
Wire Wire Line
	7050 2250 6950 2250
Connection ~ 6750 1000
Text Label 7050 1000 0    50   ~ 0
5V
Wire Wire Line
	5200 1350 5200 1550
Wire Wire Line
	5200 1550 5200 1750
Connection ~ 5200 1550
Wire Wire Line
	5200 1750 5200 1950
Connection ~ 5200 1750
Wire Wire Line
	5200 1950 5200 2150
Connection ~ 5200 1950
Wire Wire Line
	5200 1350 5200 1000
Wire Wire Line
	5200 1000 5850 1000
Connection ~ 5200 1350
Connection ~ 5850 1000
Wire Wire Line
	5150 1250 5150 1450
Connection ~ 5150 1450
Wire Wire Line
	5150 1450 5150 1650
Connection ~ 5150 1650
Wire Wire Line
	5150 1650 5150 1850
Connection ~ 5150 1850
Wire Wire Line
	5150 1850 5150 2050
Wire Wire Line
	5150 2050 5150 2550
Wire Wire Line
	7750 2550 7750 2350
Connection ~ 5150 2050
$Comp
L power:GND #PWR0110
U 1 1 606B4C25
P 7750 2550
F 0 "#PWR0110" H 7750 2300 50  0001 C CNN
F 1 "GND" H 7755 2377 50  0000 C CNN
F 2 "" H 7750 2550 50  0001 C CNN
F 3 "" H 7750 2550 50  0001 C CNN
	1    7750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2250 7750 2250
Text Label 7900 2350 3    50   ~ 0
3V3
Wire Wire Line
	7900 2250 7900 2350
Wire Wire Line
	6750 1000 6950 1000
$Comp
L Device:R_Small R78
U 1 1 606B4C2F
P 6950 1100
F 0 "R78" V 6950 1300 50  0000 L CNN
F 1 "200k" V 6950 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 1100 50  0001 C CNN
F 3 "~" H 6950 1100 50  0001 C CNN
	1    6950 1100
	1    0    0    -1  
$EndComp
Connection ~ 6950 1000
Wire Wire Line
	6950 1000 7050 1000
Wire Wire Line
	6950 1200 6950 2250
Wire Wire Line
	6950 2250 6950 2350
Wire Wire Line
	6950 2350 7050 2350
Connection ~ 6950 2250
$Comp
L Device:C_Small C10
U 1 1 606B4C3B
P 6950 2450
F 0 "C10" H 6750 2500 50  0000 L CNN
F 1 "100n" H 6600 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 2450 50  0001 C CNN
F 3 "~" H 6950 2450 50  0001 C CNN
	1    6950 2450
	1    0    0    -1  
$EndComp
Connection ~ 6950 2350
Connection ~ 6950 2550
Wire Wire Line
	6950 2550 7750 2550
Wire Wire Line
	7750 1250 7850 1250
Wire Wire Line
	7750 1350 7850 1350
Wire Wire Line
	7750 1450 7850 1450
Wire Wire Line
	7750 1550 7850 1550
Wire Wire Line
	7750 1650 7850 1650
Wire Wire Line
	7750 1750 7850 1750
Wire Wire Line
	7750 1850 7850 1850
Wire Wire Line
	7750 1950 7850 1950
Wire Wire Line
	7750 2050 7850 2050
Wire Wire Line
	7750 2150 7850 2150
Connection ~ 7750 2550
Wire Wire Line
	5150 2550 6950 2550
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U8
U 1 1 6071A953
P 7400 3900
F 0 "U8" H 7400 4675 50  0000 C CNN
F 1 "nvt2010pw" H 7400 4584 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" V 7400 3900 50  0001 C CNN
F 3 "" V 7400 3900 50  0001 C CNN
	1    7400 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 3100 6750 3100
Connection ~ 6650 3100
Wire Wire Line
	6550 3100 6650 3100
Connection ~ 6550 3100
Wire Wire Line
	6450 3100 6550 3100
Connection ~ 6450 3100
Wire Wire Line
	6350 3100 6450 3100
Connection ~ 6350 3100
Wire Wire Line
	6250 3100 6350 3100
Connection ~ 6250 3100
Wire Wire Line
	6150 3100 6250 3100
Connection ~ 6150 3100
Wire Wire Line
	6050 3100 6150 3100
Connection ~ 6050 3100
Wire Wire Line
	5950 3100 6050 3100
Connection ~ 5950 3100
Wire Wire Line
	5850 3100 5950 3100
$Comp
L Device:R_Small R77
U 1 1 6071A96A
P 6750 3200
F 0 "R77" V 6750 3400 50  0000 L CNN
F 1 "5k6" V 6750 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6750 3200 50  0001 C CNN
F 3 "~" H 6750 3200 50  0001 C CNN
	1    6750 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R75
U 1 1 6071A970
P 6650 3200
F 0 "R75" V 6650 3400 50  0000 L CNN
F 1 "5k6" V 6650 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6650 3200 50  0001 C CNN
F 3 "~" H 6650 3200 50  0001 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R73
U 1 1 6071A976
P 6550 3200
F 0 "R73" V 6550 3400 50  0000 L CNN
F 1 "5k6" V 6550 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6550 3200 50  0001 C CNN
F 3 "~" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R71
U 1 1 6071A97C
P 6450 3200
F 0 "R71" V 6450 3400 50  0000 L CNN
F 1 "5k6" V 6450 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6450 3200 50  0001 C CNN
F 3 "~" H 6450 3200 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R69
U 1 1 6071A982
P 6350 3200
F 0 "R69" V 6350 3400 50  0000 L CNN
F 1 "5k6" V 6350 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 3200 50  0001 C CNN
F 3 "~" H 6350 3200 50  0001 C CNN
	1    6350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R67
U 1 1 6071A988
P 6250 3200
F 0 "R67" V 6250 3400 50  0000 L CNN
F 1 "5k6" V 6250 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 3200 50  0001 C CNN
F 3 "~" H 6250 3200 50  0001 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R65
U 1 1 6071A98E
P 6150 3200
F 0 "R65" V 6150 3400 50  0000 L CNN
F 1 "5k6" V 6150 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6150 3200 50  0001 C CNN
F 3 "~" H 6150 3200 50  0001 C CNN
	1    6150 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R63
U 1 1 6071A994
P 6050 3200
F 0 "R63" V 6050 3400 50  0000 L CNN
F 1 "5k6" V 6050 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6050 3200 50  0001 C CNN
F 3 "~" H 6050 3200 50  0001 C CNN
	1    6050 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R61
U 1 1 6071A99A
P 5950 3200
F 0 "R61" V 5950 3400 50  0000 L CNN
F 1 "5k6" V 5950 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5950 3200 50  0001 C CNN
F 3 "~" H 5950 3200 50  0001 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R59
U 1 1 6071A9A0
P 5850 3200
F 0 "R59" V 5850 3400 50  0000 L CNN
F 1 "5k6" V 5850 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5850 3200 50  0001 C CNN
F 3 "~" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4250 7050 4250
Connection ~ 6750 4250
Wire Wire Line
	6750 3300 6750 4250
Wire Wire Line
	6650 4150 7050 4150
Connection ~ 6650 4150
Wire Wire Line
	6650 3300 6650 4150
Connection ~ 6550 4050
Wire Wire Line
	6550 3300 6550 4050
Wire Wire Line
	6450 3950 7050 3950
Connection ~ 6450 3950
Wire Wire Line
	6450 3300 6450 3950
Wire Wire Line
	6350 3850 7050 3850
Connection ~ 6350 3850
Wire Wire Line
	6350 3300 6350 3850
Wire Wire Line
	6250 3750 7050 3750
Connection ~ 6250 3750
Wire Wire Line
	6250 3300 6250 3750
Wire Wire Line
	6150 3650 7050 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3300 6150 3650
Wire Wire Line
	6050 3550 7050 3550
Connection ~ 6050 3550
Wire Wire Line
	6050 3300 6050 3550
Wire Wire Line
	5950 3450 7050 3450
Connection ~ 5950 3450
Wire Wire Line
	5950 3300 5950 3450
Wire Wire Line
	5800 4250 6750 4250
Wire Wire Line
	5800 4150 6650 4150
Wire Wire Line
	5800 4050 6550 4050
Wire Wire Line
	5800 3950 6450 3950
Wire Wire Line
	5800 3850 6350 3850
Wire Wire Line
	5800 3750 6250 3750
Wire Wire Line
	5800 3650 6150 3650
Wire Wire Line
	5800 3550 6050 3550
Wire Wire Line
	5800 3450 5950 3450
Connection ~ 5850 3350
Wire Wire Line
	5850 3350 5850 3300
Wire Wire Line
	5800 3350 5850 3350
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J31
U 1 1 6071A9CC
P 5500 4200
F 0 "J31" H 5000 4200 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 4600 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5500 4200
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J32
U 1 1 6071A9D2
P 5500 4000
F 0 "J32" H 5000 4000 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 4200 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 4000 50  0001 C CNN
F 3 "" H 5750 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J33
U 1 1 6071A9D8
P 5500 3800
F 0 "J33" H 5000 3800 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 3800 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 3800 50  0001 C CNN
F 3 "" H 5750 3800 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J34
U 1 1 6071A9DE
P 5500 3600
F 0 "J34" H 5000 3600 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 3400 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 3600 50  0001 C CNN
F 3 "" H 5750 3600 50  0001 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J35
U 1 1 6071A9E4
P 5500 3400
F 0 "J35" H 5000 3400 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 4850 3000 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 5750 3400 50  0001 C CNN
F 3 "" H 5750 3400 50  0001 C CNN
	1    5500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4050 7050 4050
Wire Wire Line
	5850 3350 7050 3350
Wire Wire Line
	7050 4350 6950 4350
Connection ~ 6750 3100
Text Label 7050 3100 0    50   ~ 0
5V
Wire Wire Line
	5200 3450 5200 3650
Wire Wire Line
	5200 3650 5200 3850
Connection ~ 5200 3650
Wire Wire Line
	5200 3850 5200 4050
Connection ~ 5200 3850
Wire Wire Line
	5200 4050 5200 4250
Connection ~ 5200 4050
Wire Wire Line
	5200 3450 5200 3100
Wire Wire Line
	5200 3100 5850 3100
Connection ~ 5200 3450
Connection ~ 5850 3100
Wire Wire Line
	5150 3350 5150 3550
Connection ~ 5150 3550
Wire Wire Line
	5150 3550 5150 3750
Connection ~ 5150 3750
Wire Wire Line
	5150 3750 5150 3950
Connection ~ 5150 3950
Wire Wire Line
	5150 3950 5150 4150
Wire Wire Line
	5150 4150 5150 4650
Wire Wire Line
	7750 4650 7750 4450
Connection ~ 5150 4150
$Comp
L power:GND #PWR0111
U 1 1 6071AA04
P 7750 4650
F 0 "#PWR0111" H 7750 4400 50  0001 C CNN
F 1 "GND" H 7755 4477 50  0000 C CNN
F 2 "" H 7750 4650 50  0001 C CNN
F 3 "" H 7750 4650 50  0001 C CNN
	1    7750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4350 7750 4350
Text Label 7900 4450 3    50   ~ 0
3V3
Wire Wire Line
	7900 4350 7900 4450
Wire Wire Line
	6750 3100 6950 3100
$Comp
L Device:R_Small R79
U 1 1 6071AA0E
P 6950 3200
F 0 "R79" V 6950 3400 50  0000 L CNN
F 1 "200k" V 6950 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 3200 50  0001 C CNN
F 3 "~" H 6950 3200 50  0001 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
Connection ~ 6950 3100
Wire Wire Line
	6950 3100 7050 3100
Wire Wire Line
	6950 3300 6950 4350
Wire Wire Line
	6950 4350 6950 4450
Wire Wire Line
	6950 4450 7050 4450
Connection ~ 6950 4350
$Comp
L Device:C_Small C11
U 1 1 6071AA1A
P 6950 4550
F 0 "C11" H 6750 4600 50  0000 L CNN
F 1 "100n" H 6600 4500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6950 4550 50  0001 C CNN
F 3 "~" H 6950 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
Connection ~ 6950 4450
Connection ~ 6950 4650
Wire Wire Line
	6950 4650 7750 4650
Wire Wire Line
	7750 3350 7850 3350
Wire Wire Line
	7750 3450 7850 3450
Wire Wire Line
	7750 3550 7850 3550
Wire Wire Line
	7750 3650 7850 3650
Wire Wire Line
	7750 3750 7850 3750
Wire Wire Line
	7750 3850 7850 3850
Wire Wire Line
	7750 3950 7850 3950
Wire Wire Line
	7750 4050 7850 4050
Wire Wire Line
	7750 4150 7850 4150
Wire Wire Line
	7750 4250 7850 4250
Connection ~ 7750 4650
Wire Wire Line
	5150 4650 6950 4650
Wire Wire Line
	12050 800  12050 1100
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J1
U 1 1 603F02F2
P 1200 2100
F 0 "J1" H 700 2100 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 2500 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 2100 50  0001 C CNN
F 3 "" H 1450 2100 50  0001 C CNN
	1    1200 2100
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J2
U 1 1 603F00AF
P 1200 1900
F 0 "J2" H 700 1900 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 2100 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 1900 50  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J4
U 1 1 603EF911
P 1200 1500
F 0 "J4" H 700 1500 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 1300 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 1500 50  0001 C CNN
F 3 "" H 1450 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J5
U 1 1 603EDC55
P 1200 1300
F 0 "J5" H 700 1300 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 900 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 1300 50  0001 C CNN
F 3 "" H 1450 1300 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
Text Label 13550 6450 1    50   ~ 0
RX
Text Label 13350 6450 1    50   ~ 0
TX
Text Label 3550 2050 0    50   ~ 0
1a
Text Label 3550 2150 0    50   ~ 0
1b
Text Label 3550 1850 0    50   ~ 0
2a
Text Label 3550 1950 0    50   ~ 0
2b
Text Label 3550 1750 0    50   ~ 0
3b
Text Label 3550 1650 0    50   ~ 0
3a
Text Label 3550 1550 0    50   ~ 0
4b
Text Label 3550 1450 0    50   ~ 0
4a
Text Label 3550 1350 0    50   ~ 0
5b
Text Label 3550 1250 0    50   ~ 0
5a
Text Label 12950 4700 1    50   ~ 0
1a
Text Label 13050 4700 1    50   ~ 0
2a
Text Label 13050 5200 3    50   ~ 0
2b
Text Label 13150 5200 3    50   ~ 0
3b
Text Label 13150 4700 1    50   ~ 0
3a
Text Label 13250 5200 3    50   ~ 0
4b
Text Label 13250 4700 1    50   ~ 0
4a
Text Label 13350 5200 3    50   ~ 0
5b
Text Label 13350 4700 1    50   ~ 0
5a
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J9
U 1 1 60563CF0
P 1200 3550
F 0 "J9" H 700 3550 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" V 550 3350 50  0000 C CNN
F 2 "Connector_Molex:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal" H 1450 3550 50  0001 C CNN
F 3 "" H 1450 3550 50  0001 C CNN
	1    1200 3550
	1    0    0    -1  
$EndComp
Text Label 3550 4200 0    50   ~ 0
6b
Text Label 3550 4100 0    50   ~ 0
6a
Text Label 3550 4000 0    50   ~ 0
7b
Text Label 3550 3900 0    50   ~ 0
7a
Text Label 3550 3800 0    50   ~ 0
8b
Text Label 3550 3700 0    50   ~ 0
8a
Text Label 3550 3600 0    50   ~ 0
9b
Text Label 3550 3500 0    50   ~ 0
9a
Text Label 3550 3400 0    50   ~ 0
10b
Text Label 3550 3300 0    50   ~ 0
10a
Text Label 3550 6250 0    50   ~ 0
11b
Text Label 3550 6150 0    50   ~ 0
11a
Text Label 3550 6050 0    50   ~ 0
12b
Text Label 3550 5950 0    50   ~ 0
12a
Text Label 3550 5850 0    50   ~ 0
13b
Text Label 3550 5750 0    50   ~ 0
13a
Text Label 3550 5650 0    50   ~ 0
14b
Text Label 3550 5550 0    50   ~ 0
14a
Text Label 3550 5450 0    50   ~ 0
15b
Text Label 3550 5350 0    50   ~ 0
15a
Text Label 3550 8300 0    50   ~ 0
16b
Text Label 3550 8200 0    50   ~ 0
16a
Text Label 3550 8100 0    50   ~ 0
17b
Text Label 3550 8000 0    50   ~ 0
17a
Text Label 3550 7900 0    50   ~ 0
18b
Text Label 3550 7800 0    50   ~ 0
18a
Text Label 3550 7700 0    50   ~ 0
19b
Text Label 3550 7600 0    50   ~ 0
19a
Text Label 3550 7500 0    50   ~ 0
20b
Text Label 3550 7400 0    50   ~ 0
20a
Text Label 3550 10350 0    50   ~ 0
21b
Text Label 3550 10250 0    50   ~ 0
21a
Text Label 3550 10150 0    50   ~ 0
22b
Text Label 3550 10050 0    50   ~ 0
22a
Text Label 3550 9950 0    50   ~ 0
23b
Text Label 3550 9850 0    50   ~ 0
23a
Text Label 3550 9750 0    50   ~ 0
24b
Text Label 3550 9650 0    50   ~ 0
24a
Text Label 3550 9550 0    50   ~ 0
25b
Text Label 3550 9450 0    50   ~ 0
25a
Text Label 7850 2150 0    50   ~ 0
26b
Text Label 7850 2050 0    50   ~ 0
26a
Text Label 7850 1950 0    50   ~ 0
27b
Text Label 7850 1850 0    50   ~ 0
27a
Text Label 7850 1750 0    50   ~ 0
28b
Text Label 7850 1650 0    50   ~ 0
28a
Text Label 7850 1550 0    50   ~ 0
29b
Text Label 7850 1450 0    50   ~ 0
29a
Text Label 7850 1350 0    50   ~ 0
30b
Text Label 7850 1250 0    50   ~ 0
30a
Text Label 7850 4250 0    50   ~ 0
31b
Text Label 7850 4150 0    50   ~ 0
31a
Text Label 7850 4050 0    50   ~ 0
32b
Text Label 7850 3950 0    50   ~ 0
32a
Text Label 7850 3850 0    50   ~ 0
33b
Text Label 7850 3750 0    50   ~ 0
33a
Text Label 7850 3650 0    50   ~ 0
34b
Text Label 7850 3550 0    50   ~ 0
34a
Text Label 7850 3450 0    50   ~ 0
35b
Text Label 7850 3350 0    50   ~ 0
35a
Text Label 13550 5200 3    50   ~ 0
6b
Text Label 13550 4700 1    50   ~ 0
6a
Text Label 13650 5200 3    50   ~ 0
7b
Text Label 13650 4700 1    50   ~ 0
7a
Text Label 13750 5200 3    50   ~ 0
8b
Text Label 13750 4700 1    50   ~ 0
8a
Text Label 13850 5200 3    50   ~ 0
9b
Text Label 13850 4700 1    50   ~ 0
9a
Text Label 13950 5200 3    50   ~ 0
10b
Text Label 13950 4700 1    50   ~ 0
10a
Text Label 12950 5200 3    50   ~ 0
1b
Text Label 14050 5200 3    50   ~ 0
11b
Text Label 14050 4700 1    50   ~ 0
11a
Text Label 14150 5200 3    50   ~ 0
12b
Text Label 14150 4700 1    50   ~ 0
12a
Text Label 14250 5200 3    50   ~ 0
13b
Text Label 14250 4700 1    50   ~ 0
13a
Text Label 14450 5200 3    50   ~ 0
14b
Text Label 14450 4700 1    50   ~ 0
14a
Text Label 14550 5200 3    50   ~ 0
15b
Text Label 14550 4700 1    50   ~ 0
15a
Text Label 14850 5200 3    50   ~ 0
16b
Text Label 14850 4700 1    50   ~ 0
16a
Text Label 14750 5200 3    50   ~ 0
17b
Text Label 14750 4700 1    50   ~ 0
17a
Text Label 14650 5200 3    50   ~ 0
18b
Text Label 14650 4700 1    50   ~ 0
18a
Text Label 14750 6450 1    50   ~ 0
19b
Text Label 14750 6950 3    50   ~ 0
19a
Text Label 14850 6450 1    50   ~ 0
20b
Text Label 14850 6950 3    50   ~ 0
20a
Text Label 14650 6450 1    50   ~ 0
21b
Text Label 14650 6950 3    50   ~ 0
21a
Text Label 14550 6450 1    50   ~ 0
22b
Text Label 14550 6950 3    50   ~ 0
22a
Text Label 14450 6450 1    50   ~ 0
23b
Text Label 14450 6950 3    50   ~ 0
23a
Text Label 14250 6450 1    50   ~ 0
24b
Text Label 14250 6950 3    50   ~ 0
24a
Text Label 14150 6450 1    50   ~ 0
25b
Text Label 14150 6950 3    50   ~ 0
25a
Text Label 14050 6950 3    50   ~ 0
26a
Text Label 13950 6950 3    50   ~ 0
27a
Text Label 13850 6950 3    50   ~ 0
28a
Text Label 13750 6950 3    50   ~ 0
29a
Text Label 13650 6950 3    50   ~ 0
30a
Text Label 13950 6450 1    50   ~ 0
27b
Text Label 13850 6450 1    50   ~ 0
28b
Text Label 13750 6450 1    50   ~ 0
29b
Text Label 13650 6450 1    50   ~ 0
30b
Text Label 14050 6450 1    50   ~ 0
26b
Text Label 13550 6950 3    50   ~ 0
31b
Text Label 13350 6950 3    50   ~ 0
31a
Text Label 13250 6450 1    50   ~ 0
32b
Text Label 13250 6950 3    50   ~ 0
32a
Text Label 13150 6450 1    50   ~ 0
33b
Text Label 13150 6950 3    50   ~ 0
33a
$Comp
L power:GND #PWR0112
U 1 1 61D45B36
P 9000 6450
F 0 "#PWR0112" H 9000 6200 50  0001 C CNN
F 1 "GND" H 9005 6277 50  0000 C CNN
F 2 "" H 9000 6450 50  0001 C CNN
F 3 "" H 9000 6450 50  0001 C CNN
	1    9000 6450
	1    0    0    -1  
$EndComp
Text Label 9000 5750 0    50   ~ 0
5V
Text Label 12950 6950 3    50   ~ 0
35a
Text Label 13050 6950 3    50   ~ 0
34a
Text Label 12950 6450 1    50   ~ 0
35b
Text Label 13050 6450 1    50   ~ 0
34b
Wire Wire Line
	10300 3000 10400 3000
$Comp
L Device:Crystal Y1
U 1 1 60834453
P 10550 3000
F 0 "Y1" H 10550 3268 50  0000 C CNN
F 1 "DNP_(12MHz)" H 10550 3177 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 10550 3000 50  0001 C CNN
F 3 "~" H 10550 3000 50  0001 C CNN
	1    10550 3000
	1    0    0    -1  
$EndComp
Text Notes 8850 2900 0    50   ~ 0
External oscillator not reqired\nper datasheet when 5V powered.\nFootprint added anyway just in case.
$Comp
L Device:CP_Small C4
U 1 1 603BB726
P 12900 900
F 0 "C4" H 12988 946 50  0000 L CNN
F 1 "4.7u" H 12988 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 12900 900 50  0001 C CNN
F 3 "~" H 12900 900 50  0001 C CNN
	1    12900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3000 10950 2500
Wire Wire Line
	10950 2500 11150 2500
Wire Wire Line
	10700 3000 10750 3000
Wire Wire Line
	10800 2650 10300 2650
Wire Wire Line
	10300 2650 10300 3000
Wire Wire Line
	10800 2300 11150 2300
Wire Wire Line
	10800 2300 10800 2650
$Comp
L Device:C_Small C12
U 1 1 6112A26A
P 10300 3100
F 0 "C12" H 10392 3146 50  0000 L CNN
F 1 "dnp" H 10392 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10300 3100 50  0001 C CNN
F 3 "~" H 10300 3100 50  0001 C CNN
	1    10300 3100
	1    0    0    -1  
$EndComp
Connection ~ 10300 3000
$Comp
L Device:C_Small C13
U 1 1 6112B002
P 10750 3100
F 0 "C13" H 10842 3146 50  0000 L CNN
F 1 "dnp" H 10842 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 3100 50  0001 C CNN
F 3 "~" H 10750 3100 50  0001 C CNN
	1    10750 3100
	1    0    0    -1  
$EndComp
Connection ~ 10750 3000
Wire Wire Line
	10750 3000 10950 3000
Wire Wire Line
	10300 3200 10550 3200
$Comp
L power:GND #PWR0113
U 1 1 6117F5C0
P 10550 3200
F 0 "#PWR0113" H 10550 2950 50  0001 C CNN
F 1 "GND" H 10555 3027 50  0000 C CNN
F 2 "" H 10550 3200 50  0001 C CNN
F 3 "" H 10550 3200 50  0001 C CNN
	1    10550 3200
	1    0    0    -1  
$EndComp
Connection ~ 10550 3200
Wire Wire Line
	10550 3200 10750 3200
Wire Wire Line
	9000 5950 9000 5750
Wire Wire Line
	9000 5950 9250 5950
Connection ~ 9000 5950
Wire Wire Line
	9000 6150 9250 6150
Connection ~ 9000 6150
$Comp
L Connector:Barrel_Jack_MountingPin J36
U 1 1 60468A7D
P 5750 6000
F 0 "J36" H 5807 6317 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 5807 6226 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 5800 5960 50  0001 C CNN
F 3 "~" H 5800 5960 50  0001 C CNN
	1    5750 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 6051B8E6
P 8000 4350
F 0 "C20" H 7800 4400 50  0000 L CNN
F 1 "100n" H 7650 4300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8000 4350 50  0001 C CNN
F 3 "~" H 8000 4350 50  0001 C CNN
	1    8000 4350
	0    -1   -1   0   
$EndComp
Connection ~ 7900 4350
Wire Wire Line
	8100 4350 8100 4650
Wire Wire Line
	8100 4650 7750 4650
$Comp
L Device:C_Small C19
U 1 1 60572E7D
P 8000 2250
F 0 "C19" H 7800 2300 50  0000 L CNN
F 1 "100n" H 7650 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8000 2250 50  0001 C CNN
F 3 "~" H 8000 2250 50  0001 C CNN
	1    8000 2250
	0    1    1    0   
$EndComp
Connection ~ 7900 2250
Wire Wire Line
	8100 2250 8100 2550
Wire Wire Line
	8100 2550 7750 2550
$Comp
L Device:C_Small C14
U 1 1 605CB24D
P 3700 2250
F 0 "C14" H 3500 2300 50  0000 L CNN
F 1 "100n" H 3350 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 2250 50  0001 C CNN
F 3 "~" H 3700 2250 50  0001 C CNN
	1    3700 2250
	0    1    1    0   
$EndComp
Connection ~ 3600 2250
Wire Wire Line
	3800 2250 3800 2550
Wire Wire Line
	3800 2550 3450 2550
$Comp
L Device:C_Small C15
U 1 1 6062316B
P 3700 4300
F 0 "C15" H 3500 4350 50  0000 L CNN
F 1 "100n" H 3350 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 4300 50  0001 C CNN
F 3 "~" H 3700 4300 50  0001 C CNN
	1    3700 4300
	0    1    1    0   
$EndComp
Connection ~ 3600 4300
Wire Wire Line
	3800 4300 3800 4600
Wire Wire Line
	3800 4600 3450 4600
$Comp
L Device:C_Small C16
U 1 1 6067B91E
P 3700 6350
F 0 "C16" H 3500 6400 50  0000 L CNN
F 1 "100n" H 3350 6300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 6350 50  0001 C CNN
F 3 "~" H 3700 6350 50  0001 C CNN
	1    3700 6350
	0    1    1    0   
$EndComp
Connection ~ 3600 6350
Wire Wire Line
	3800 6350 3800 6650
Wire Wire Line
	3800 6650 3450 6650
$Comp
L Device:C_Small C17
U 1 1 606D48EA
P 3700 8400
F 0 "C17" H 3500 8450 50  0000 L CNN
F 1 "100n" H 3350 8350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 8400 50  0001 C CNN
F 3 "~" H 3700 8400 50  0001 C CNN
	1    3700 8400
	0    1    1    0   
$EndComp
Connection ~ 3600 8400
Wire Wire Line
	3800 8400 3800 8700
Wire Wire Line
	3800 8700 3450 8700
Wire Wire Line
	3600 10450 3450 10450
$Comp
L Device:C_Small C18
U 1 1 6072F97B
P 3700 10450
F 0 "C18" H 3500 10500 50  0000 L CNN
F 1 "100n" H 3350 10400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 10450 50  0001 C CNN
F 3 "~" H 3700 10450 50  0001 C CNN
	1    3700 10450
	0    1    1    0   
$EndComp
Connection ~ 3600 10450
Wire Wire Line
	3800 10450 3800 10750
Wire Wire Line
	3800 10750 3450 10750
$Comp
L Device:CP_Small C21
U 1 1 607B4AE2
P 9250 6050
F 0 "C21" H 9200 5850 50  0000 L CNN
F 1 "22u" H 9200 5750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9250 6050 50  0001 C CNN
F 3 "~" H 9250 6050 50  0001 C CNN
	1    9250 6050
	1    0    0    -1  
$EndComp
Connection ~ 9250 5950
Wire Wire Line
	9250 5950 9400 5950
Connection ~ 9250 6150
Wire Wire Line
	9250 6150 9400 6150
$Comp
L Device:CP_Small C22
U 1 1 607B61CF
P 9400 6050
F 0 "C22" H 9350 5850 50  0000 L CNN
F 1 "22u" H 9350 5750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9400 6050 50  0001 C CNN
F 3 "~" H 9400 6050 50  0001 C CNN
	1    9400 6050
	1    0    0    -1  
$EndComp
Connection ~ 9400 5950
Connection ~ 9400 6150
$Comp
L Device:C_Small C25
U 1 1 607C709F
P 9950 6050
F 0 "C25" H 9900 5850 50  0000 L CNN
F 1 "100n" H 9850 5750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9950 6050 50  0001 C CNN
F 3 "~" H 9950 6050 50  0001 C CNN
	1    9950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5950 9550 5950
Wire Wire Line
	9400 6150 9550 6150
$Comp
L Device:CP_Small C23
U 1 1 607C8988
P 9550 6050
F 0 "C23" H 9500 5850 50  0000 L CNN
F 1 "22u" H 9500 5750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9550 6050 50  0001 C CNN
F 3 "~" H 9550 6050 50  0001 C CNN
	1    9550 6050
	1    0    0    -1  
$EndComp
Connection ~ 9550 5950
Wire Wire Line
	9550 5950 9700 5950
Connection ~ 9550 6150
Wire Wire Line
	9550 6150 9700 6150
$Comp
L Device:CP_Small C24
U 1 1 607C8BED
P 9700 6050
F 0 "C24" H 9650 5850 50  0000 L CNN
F 1 "22u" H 9650 5750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9700 6050 50  0001 C CNN
F 3 "~" H 9700 6050 50  0001 C CNN
	1    9700 6050
	1    0    0    -1  
$EndComp
Connection ~ 9700 5950
Connection ~ 9700 6150
Wire Wire Line
	9700 5950 9950 5950
Wire Wire Line
	9700 6150 9950 6150
Connection ~ 9950 5950
Connection ~ 9950 6150
$Comp
L Device:C_Small C26
U 1 1 607ED0DA
P 10150 6050
F 0 "C26" H 10100 5850 50  0000 L CNN
F 1 "1u_MCC" H 10050 5750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 6050 50  0001 C CNN
F 3 "~" H 10150 6050 50  0001 C CNN
	1    10150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5950 10150 5950
Wire Wire Line
	9950 6150 10150 6150
Connection ~ 10150 5950
Connection ~ 10150 6150
$Comp
L Device:C_Small C27
U 1 1 609644C2
P 10400 6050
F 0 "C27" H 10350 5850 50  0000 L CNN
F 1 "DNP_10n" V 10400 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10400 6050 50  0001 C CNN
F 3 "~" H 10400 6050 50  0001 C CNN
	1    10400 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 5950 10400 5950
Wire Wire Line
	10150 6150 10400 6150
Connection ~ 10400 6150
Connection ~ 10400 5950
Wire Wire Line
	10400 6150 10550 6150
Wire Wire Line
	10400 5950 10550 5950
$Comp
L Device:C_Small C28
U 1 1 609CA4EF
P 10550 6050
F 0 "C28" H 10500 5850 50  0000 L CNN
F 1 "DNP_10n" V 10550 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10550 6050 50  0001 C CNN
F 3 "~" H 10550 6050 50  0001 C CNN
	1    10550 6050
	-1   0    0    1   
$EndComp
Connection ~ 10550 6150
Wire Wire Line
	10550 6150 10700 6150
Connection ~ 10550 5950
Wire Wire Line
	10550 5950 10700 5950
$Comp
L Device:C_Small C29
U 1 1 609CA843
P 10700 6050
F 0 "C29" H 10650 5850 50  0000 L CNN
F 1 "DNP_1n" V 10700 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10700 6050 50  0001 C CNN
F 3 "~" H 10700 6050 50  0001 C CNN
	1    10700 6050
	-1   0    0    1   
$EndComp
Connection ~ 10700 6150
Wire Wire Line
	10700 6150 10850 6150
Connection ~ 10700 5950
Wire Wire Line
	10700 5950 10850 5950
$Comp
L Device:C_Small C30
U 1 1 609CAA01
P 10850 6050
F 0 "C30" H 10800 5850 50  0000 L CNN
F 1 "DNP_1n" V 10850 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10850 6050 50  0001 C CNN
F 3 "~" H 10850 6050 50  0001 C CNN
	1    10850 6050
	-1   0    0    1   
$EndComp
Connection ~ 10850 6150
Connection ~ 10850 5950
$Comp
L Device:C_Small C31
U 1 1 604B11B4
P 11000 6050
F 0 "C31" H 10950 5850 50  0000 L CNN
F 1 "DNP_1n" V 11000 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11000 6050 50  0001 C CNN
F 3 "~" H 11000 6050 50  0001 C CNN
	1    11000 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	10850 5950 11000 5950
Wire Wire Line
	10850 6150 11000 6150
$Comp
L Mechanical:MountingHole H3
U 1 1 606CC2D0
P 4900 7800
F 0 "H3" H 5000 7846 50  0000 L CNN
F 1 "MountingHole" H 5000 7755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 4900 7800 50  0001 C CNN
F 3 "~" H 4900 7800 50  0001 C CNN
	1    4900 7800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 606CCE4C
P 4900 8000
F 0 "H4" H 5000 8046 50  0000 L CNN
F 1 "MountingHole" H 5000 7955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 4900 8000 50  0001 C CNN
F 3 "~" H 4900 8000 50  0001 C CNN
	1    4900 8000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 6078AF04
P 4900 8400
F 0 "H6" H 5000 8446 50  0000 L CNN
F 1 "MountingHole" H 5000 8355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 4900 8400 50  0001 C CNN
F 3 "~" H 4900 8400 50  0001 C CNN
	1    4900 8400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 6072BEC8
P 4900 8200
F 0 "H5" H 5000 8246 50  0000 L CNN
F 1 "MountingHole" H 5000 8155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 4900 8200 50  0001 C CNN
F 3 "~" H 4900 8200 50  0001 C CNN
	1    4900 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5950 9000 5950
Wire Wire Line
	9000 6150 9000 6450
Wire Wire Line
	6050 6100 6100 6100
Wire Wire Line
	6100 6100 6100 6300
Wire Wire Line
	6100 6300 5750 6300
$Comp
L Device:R_Small R80
U 1 1 610D1E94
P 13200 1800
F 0 "R80" H 13259 1846 50  0000 L CNN
F 1 "270" H 13259 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13200 1800 50  0001 C CNN
F 3 "~" H 13200 1800 50  0001 C CNN
	1    13200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R81
U 1 1 610D21C6
P 13500 1800
F 0 "R81" H 13559 1846 50  0000 L CNN
F 1 "270" H 13559 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13500 1800 50  0001 C CNN
F 3 "~" H 13500 1800 50  0001 C CNN
	1    13500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D_TX1
U 1 1 610D2603
P 13200 2000
F 0 "D_TX1" V 13246 1930 50  0000 R CNN
F 1 "LED_TX" H 13300 2100 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13200 2000 50  0001 C CNN
F 3 "~" V 13200 2000 50  0001 C CNN
	1    13200 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D_RX1
U 1 1 610D420B
P 13500 2000
F 0 "D_RX1" V 13500 1850 50  0000 R CNN
F 1 "LED RX" H 13550 1900 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13500 2000 50  0001 C CNN
F 3 "~" V 13500 2000 50  0001 C CNN
	1    13500 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13200 1700 13350 1700
Wire Wire Line
	13350 1700 13350 1500
Wire Wire Line
	13350 1500 13500 1500
Connection ~ 13350 1700
Wire Wire Line
	13350 1700 13500 1700
Text Label 13500 1500 0    50   ~ 0
5V
Wire Wire Line
	13200 2100 13200 2400
Wire Wire Line
	13200 2400 12750 2400
Wire Wire Line
	12750 2500 13500 2500
Wire Wire Line
	13500 2500 13500 2100
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J37
U 1 1 617C9849
P 13950 2850
F 0 "J37" H 14000 3167 50  0000 C CNN
F 1 "Conn_02x04_Top_Bottom" H 14000 3076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 13950 2850 50  0001 C CNN
F 3 "~" H 13950 2850 50  0001 C CNN
	1    13950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 2500 13500 2850
Wire Wire Line
	13500 2850 13750 2850
Connection ~ 13500 2500
Wire Wire Line
	13200 2400 13650 2400
Wire Wire Line
	13650 2400 13650 2750
Wire Wire Line
	13650 2750 13750 2750
Connection ~ 13200 2400
Wire Wire Line
	13750 2950 13200 2950
Wire Wire Line
	13200 2950 13200 2700
Wire Wire Line
	13200 2700 12750 2700
Wire Wire Line
	13750 3050 13350 3050
Wire Wire Line
	13350 3050 13350 2600
Wire Wire Line
	13350 2600 12750 2600
Wire Wire Line
	14250 2850 14400 2850
Wire Wire Line
	14400 2850 14400 3200
Wire Wire Line
	14400 3200 12750 3200
Wire Wire Line
	12750 3200 12750 2800
Text Label 14250 2750 0    50   ~ 0
5V
$Comp
L power:GND #PWR0114
U 1 1 61AAB2C6
P 14250 3050
F 0 "#PWR0114" H 14250 2800 50  0001 C CNN
F 1 "GND" H 14250 2850 50  0000 C CNN
F 2 "" H 14250 3050 50  0001 C CNN
F 3 "" H 14250 3050 50  0001 C CNN
	1    14250 3050
	1    0    0    -1  
$EndComp
Text Label 14250 2950 0    50   ~ 0
3V3
$Comp
L FK_fpga_shield_custom_symbols:BNX016-01 FL1
U 1 1 60741E39
P 7650 5850
F 0 "FL1" H 7550 6217 50  0000 C CNN
F 1 "BNX016-01" H 7550 6126 50  0000 C CNN
F 2 "FK_fpga_shield_custom_footprints:FIL_BNX016-01" H 7650 5850 50  0001 L BNN
F 3 "" H 7650 5850 50  0001 L BNN
F 4 "Murata" H 7650 5850 50  0001 L BNN "MANUFACTURER"
F 5 "8.5mm" H 7650 5850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Manufacturer recommendations" H 7650 5850 50  0001 L BNN "STANDARD"
	1    7650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6050 8550 6150
Connection ~ 8550 6150
Wire Wire Line
	8550 6150 8550 6250
Wire Wire Line
	8550 6150 9000 6150
Wire Wire Line
	8550 5750 8650 5750
Wire Wire Line
	8650 5750 8650 5950
Wire Wire Line
	6550 5750 6550 5900
Wire Wire Line
	6550 5900 6050 5900
Wire Wire Line
	6550 6250 6550 6100
Wire Wire Line
	6550 6100 6100 6100
Connection ~ 6100 6100
$Comp
L Mechanical:MountingHole H7
U 1 1 60894E31
P 6300 7800
F 0 "H7" H 6400 7846 50  0000 L CNN
F 1 "MountingHole" H 6400 7755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7800 50  0001 C CNN
F 3 "~" H 6300 7800 50  0001 C CNN
	1    6300 7800
	1    0    0    -1  
$EndComp
Wire Notes Line
	4700 7700 4700 8550
Wire Notes Line
	4700 8550 5700 8550
Wire Notes Line
	5700 8550 5700 7700
Wire Notes Line
	5700 7700 4700 7700
Text Notes 4700 7650 0    50   ~ 0
Corners 3mm
$Comp
L Mechanical:MountingHole H8
U 1 1 609D2DE1
P 6300 8000
F 0 "H8" H 6400 8046 50  0000 L CNN
F 1 "MountingHole" H 6400 7955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 8000 50  0001 C CNN
F 3 "~" H 6300 8000 50  0001 C CNN
	1    6300 8000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H9
U 1 1 60A39CC5
P 6300 8200
F 0 "H9" H 6400 8246 50  0000 L CNN
F 1 "MountingHole" H 6400 8155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 8200 50  0001 C CNN
F 3 "~" H 6300 8200 50  0001 C CNN
	1    6300 8200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 60AA0C54
P 6300 8400
F 0 "H10" H 6400 8446 50  0000 L CNN
F 1 "MountingHole" H 6400 8355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 8400 50  0001 C CNN
F 3 "~" H 6300 8400 50  0001 C CNN
	1    6300 8400
	1    0    0    -1  
$EndComp
$EndSCHEMATC