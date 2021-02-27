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
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 60371623
P 9400 2700
F 0 "J2" V 9496 3679 50  0000 L CNN
F 1 "Conn_02x20_Odd_Even" V 9405 3679 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 9400 2700 50  0001 C CNN
F 3 "~" H 9400 2700 50  0001 C CNN
	1    9400 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 603774BB
P 9500 4350
F 0 "J3" V 9504 3263 50  0000 R CNN
F 1 "Conn_02x20_Odd_Even" V 9595 3263 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 9500 4350 50  0001 C CNN
F 3 "~" H 9500 4350 50  0001 C CNN
	1    9500 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 4650 9000 4800
Wire Wire Line
	9000 4800 9900 4800
Wire Wire Line
	9900 4800 9900 4650
Text Label 9900 4850 3    50   ~ 0
GND
Wire Wire Line
	9900 4800 9900 4850
Connection ~ 9900 4800
Text Label 9900 4100 1    50   ~ 0
5V
Wire Wire Line
	9900 4100 9900 4150
Text Label 9000 4100 1    50   ~ 0
3V3
Wire Wire Line
	9000 4100 9000 4150
Text Label 9900 2950 3    50   ~ 0
3V3
Wire Wire Line
	9900 2950 9900 2900
Text Label 9000 2950 3    50   ~ 0
5V
Wire Wire Line
	9000 2950 9000 2900
Wire Wire Line
	9000 2400 9000 2250
Wire Wire Line
	9000 2250 9900 2250
Wire Wire Line
	9900 2250 9900 2400
Text Label 9900 2200 1    50   ~ 0
GND
Wire Wire Line
	9900 2200 9900 2250
Connection ~ 9900 2250
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U2
U 1 1 6038132A
P 3100 1400
F 0 "U2" H 3100 2175 50  0000 C CNN
F 1 "nvt2010pw" H 3100 2084 50  0000 C CNN
F 2 "" V 3100 1400 50  0001 C CNN
F 3 "" V 3100 1400 50  0001 C CNN
	1    3100 1400
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FT232RL U1
U 1 1 60394778
P 2750 4950
F 0 "U1" H 2250 5950 50  0000 C CNN
F 1 "FT232RL" H 2250 5850 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 3850 4050 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 2750 4950 50  0001 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4250 1800 4250
Wire Wire Line
	1800 4250 1800 3800
Wire Wire Line
	2650 3800 2650 3950
$Comp
L Device:C_Small C1
U 1 1 6039DBD4
P 1600 3900
F 0 "C1" H 1692 3946 50  0000 L CNN
F 1 "100n" H 1692 3855 50  0000 L CNN
F 2 "" H 1600 3900 50  0001 C CNN
F 3 "~" H 1600 3900 50  0001 C CNN
	1    1600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5650 1950 5950
Wire Wire Line
	1950 5950 2250 5950
Wire Wire Line
	2550 5950 2750 5950
Connection ~ 2550 5950
Wire Wire Line
	2750 5950 2850 5950
Connection ~ 2750 5950
Wire Wire Line
	2850 5950 2950 5950
Connection ~ 2850 5950
$Comp
L power:GND #PWR0101
U 1 1 603A27EB
P 1600 4000
F 0 "#PWR0101" H 1600 3750 50  0001 C CNN
F 1 "GND" H 1605 3827 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3800 1600 3800
Wire Wire Line
	1800 3800 2650 3800
Connection ~ 1800 3800
$Comp
L power:GND #PWR0102
U 1 1 603A51F8
P 2250 5950
F 0 "#PWR0102" H 2250 5700 50  0001 C CNN
F 1 "GND" H 2255 5777 50  0000 C CNN
F 2 "" H 2250 5950 50  0001 C CNN
F 3 "" H 2250 5950 50  0001 C CNN
	1    2250 5950
	1    0    0    -1  
$EndComp
Connection ~ 2250 5950
Wire Wire Line
	2250 5950 2550 5950
Wire Wire Line
	3550 4250 3850 4250
Wire Wire Line
	3550 4350 3850 4350
Text Label 3850 4250 0    50   ~ 0
TX
Text Label 3850 4350 0    50   ~ 0
RX
$Comp
L Connector:USB_B_Mini J1
U 1 1 603AFCC4
P 850 4550
F 0 "J1" H 907 5017 50  0000 C CNN
F 1 "USB_B_Mini" H 907 4926 50  0000 C CNN
F 2 "54819-0519:54819-0519" H 1000 4500 50  0001 C CNN
F 3 "~" H 1000 4500 50  0001 C CNN
	1    850  4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4550 1950 4550
Wire Wire Line
	1950 4650 1150 4650
Wire Wire Line
	750  4950 800  4950
Connection ~ 800  4950
Wire Wire Line
	800  4950 850  4950
$Comp
L power:GND #PWR0103
U 1 1 603B3481
P 1150 5150
F 0 "#PWR0103" H 1150 4900 50  0001 C CNN
F 1 "GND" H 1155 4977 50  0000 C CNN
F 2 "" H 1150 5150 50  0001 C CNN
F 3 "" H 1150 5150 50  0001 C CNN
	1    1150 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 603B5184
P 1500 4850
F 0 "R?" H 1559 4896 50  0000 L CNN
F 1 "4k7" H 1559 4805 50  0000 L CNN
F 2 "" H 1500 4850 50  0001 C CNN
F 3 "~" H 1500 4850 50  0001 C CNN
	1    1500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 603B60A2
P 1500 5050
F 0 "R?" H 1559 5096 50  0000 L CNN
F 1 "10k" H 1559 5005 50  0000 L CNN
F 2 "" H 1500 5050 50  0001 C CNN
F 3 "~" H 1500 5050 50  0001 C CNN
	1    1500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4950 1500 4950
Connection ~ 1500 4950
Wire Wire Line
	1500 4750 1500 4350
Wire Wire Line
	1500 4350 1150 4350
Wire Wire Line
	800  4950 800  5150
Wire Wire Line
	1500 5150 1150 5150
Connection ~ 1150 5150
Wire Wire Line
	1150 5150 800  5150
Wire Wire Line
	2850 3950 2850 3850
Text Label 2850 3550 0    50   ~ 0
5V
$Comp
L Device:C_Small C?
U 1 1 603B9C1A
P 3100 3750
F 0 "C?" H 3192 3796 50  0000 L CNN
F 1 "100n" H 3192 3705 50  0000 L CNN
F 2 "" H 3100 3750 50  0001 C CNN
F 3 "~" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 603B9F93
P 3400 3750
F 0 "C?" H 3492 3796 50  0000 L CNN
F 1 "100n" H 3492 3705 50  0000 L CNN
F 2 "" H 3400 3750 50  0001 C CNN
F 3 "~" H 3400 3750 50  0001 C CNN
	1    3400 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 603BB726
P 3700 3750
F 0 "C?" H 3788 3796 50  0000 L CNN
F 1 "4.7u" H 3788 3705 50  0000 L CNN
F 2 "" H 3700 3750 50  0001 C CNN
F 3 "~" H 3700 3750 50  0001 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3650 3400 3650
Connection ~ 2850 3650
Wire Wire Line
	2850 3650 2850 3550
Connection ~ 3100 3650
Wire Wire Line
	3100 3650 2850 3650
Connection ~ 3400 3650
Wire Wire Line
	3400 3650 3100 3650
Wire Wire Line
	2850 3850 3100 3850
Connection ~ 2850 3850
Wire Wire Line
	2850 3850 2850 3650
Connection ~ 3100 3850
Wire Wire Line
	3100 3850 3400 3850
Connection ~ 3400 3850
Wire Wire Line
	3400 3850 3700 3850
$Comp
L power:GND #PWR?
U 1 1 603BD551
P 3400 3850
F 0 "#PWR?" H 3400 3600 50  0001 C CNN
F 1 "GND" H 3405 3677 50  0000 C CNN
F 2 "" H 3400 3850 50  0001 C CNN
F 3 "" H 3400 3850 50  0001 C CNN
	1    3400 3850
	1    0    0    -1  
$EndComp
Text Notes 600  5750 0    50   ~ 0
External oscillator not reqired\nper datasheet when 5V powered.\nTODO: consider adding footprint\njust in case
$EndSCHEMATC
