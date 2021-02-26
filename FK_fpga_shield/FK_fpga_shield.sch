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
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 60371623
P 6400 2450
F 0 "J?" V 6496 3429 50  0000 L CNN
F 1 "Conn_02x20_Odd_Even" V 6405 3429 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6400 2450 50  0001 C CNN
F 3 "~" H 6400 2450 50  0001 C CNN
	1    6400 2450
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 603774BB
P 6500 4100
F 0 "J?" V 6504 3013 50  0000 R CNN
F 1 "Conn_02x20_Odd_Even" V 6595 3013 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6500 4100 50  0001 C CNN
F 3 "~" H 6500 4100 50  0001 C CNN
	1    6500 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4400 6000 4550
Wire Wire Line
	6000 4550 6900 4550
Wire Wire Line
	6900 4550 6900 4400
Text Label 6900 4600 3    50   ~ 0
GND
Wire Wire Line
	6900 4550 6900 4600
Connection ~ 6900 4550
Text Label 6900 3850 1    50   ~ 0
5V
Wire Wire Line
	6900 3850 6900 3900
Text Label 6000 3850 1    50   ~ 0
3V3
Wire Wire Line
	6000 3850 6000 3900
Text Label 6900 2700 3    50   ~ 0
3V3
Wire Wire Line
	6900 2700 6900 2650
Text Label 6000 2700 3    50   ~ 0
5V
Wire Wire Line
	6000 2700 6000 2650
Wire Wire Line
	6000 2150 6000 2000
Wire Wire Line
	6000 2000 6900 2000
Wire Wire Line
	6900 2000 6900 2150
Text Label 6900 1950 1    50   ~ 0
GND
Wire Wire Line
	6900 1950 6900 2000
Connection ~ 6900 2000
$Comp
L FK_fpga_shield_custom_symbols:nvt2010pw U?
U 1 1 6038132A
P 2750 2350
F 0 "U?" H 2750 3125 50  0000 C CNN
F 1 "nvt2010pw" H 2750 3034 50  0000 C CNN
F 2 "" V 2750 2350 50  0001 C CNN
F 3 "" V 2750 2350 50  0001 C CNN
	1    2750 2350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
