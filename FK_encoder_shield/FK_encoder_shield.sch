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
L Connector:Conn_01x05_Female J2
U 1 1 6037DDA2
P 6600 3650
F 0 "J2" H 6628 3676 50  0000 L CNN
F 1 "Conn_01x05_Female" H 6628 3585 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Horizontal" H 6600 3650 50  0001 C CNN
F 3 "~" H 6600 3650 50  0001 C CNN
	1    6600 3650
	1    0    0    -1  
$EndComp
Text Label 6000 3450 0    50   ~ 0
channel_B
Text Label 6000 3550 0    50   ~ 0
VCC
Text Label 6000 3650 0    50   ~ 0
channel_A
Text Label 6000 3750 0    50   ~ 0
channel_I
Text Label 6000 3850 0    50   ~ 0
GND
Wire Wire Line
	6400 3750 6000 3750
$Comp
L Device:R_Small R1
U 1 1 603847AB
P 5150 3450
F 0 "R1" V 4954 3450 50  0000 C CNN
F 1 "2.7k" V 5045 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5150 3450 50  0001 C CNN
F 3 "~" H 5150 3450 50  0001 C CNN
	1    5150 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3850 6000 3850
Text Label 4850 4100 3    50   ~ 0
GND
Wire Wire Line
	4850 3750 4850 3950
Wire Wire Line
	4850 3450 4850 3750
Connection ~ 4850 3750
Wire Wire Line
	5350 3450 5350 3550
Wire Wire Line
	5350 3450 6400 3450
Wire Wire Line
	5750 3650 5750 3750
Wire Wire Line
	5550 3550 5550 3650
Wire Wire Line
	5550 3650 5150 3650
Wire Wire Line
	5550 3550 6400 3550
Wire Wire Line
	4850 4100 4850 3950
Connection ~ 4850 3950
Wire Wire Line
	6000 3850 6000 3950
Wire Wire Line
	6000 3950 5500 3950
Wire Wire Line
	5750 3650 6400 3650
$Comp
L Device:R_Small R2
U 1 1 6038517B
P 5600 3750
F 0 "R2" V 5404 3750 50  0000 C CNN
F 1 "2.7k" V 5495 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5600 3750 50  0001 C CNN
F 3 "~" H 5600 3750 50  0001 C CNN
	1    5600 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3750 5150 3650
Connection ~ 5150 3650
Wire Wire Line
	5150 3650 4750 3650
Wire Wire Line
	4950 3750 4850 3750
Wire Wire Line
	5700 3750 5750 3750
Connection ~ 5750 3750
Wire Wire Line
	5750 3750 5750 3850
Wire Wire Line
	5500 3750 5500 3950
Connection ~ 5500 3950
Wire Wire Line
	5500 3950 4850 3950
Wire Wire Line
	5250 3450 5350 3450
Connection ~ 5350 3450
Wire Wire Line
	5050 3450 4850 3450
$Comp
L Device:C_Small C1
U 1 1 60384566
P 5050 3750
F 0 "C1" H 4958 3704 50  0000 R CNN
F 1 "100n?" H 4958 3795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 3750 50  0001 C CNN
F 3 "~" H 5050 3750 50  0001 C CNN
	1    5050 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 3850 4750 3850
Wire Wire Line
	5350 3550 4750 3550
Text Label 4750 3550 2    50   ~ 0
B
Text Label 4750 3850 2    50   ~ 0
A
Text Label 4750 3650 2    50   ~ 0
5V
Text Label 3550 3650 2    50   ~ 0
GND
Text Label 3550 3750 2    50   ~ 0
5V
Wire Wire Line
	3550 3750 3700 3750
Wire Wire Line
	3650 3650 3550 3650
Text Label 4450 3750 2    50   ~ 0
B
Text Label 4450 3650 2    50   ~ 0
A
Wire Wire Line
	4450 3650 4300 3650
Wire Wire Line
	4450 3750 4300 3750
$Comp
L FK_fpga_shield_custom_symbols:molex-51382-0400-microclasp J1
U 1 1 603CD8A1
P 4000 3700
F 0 "J1" H 3975 4115 50  0000 C CNN
F 1 "molex-51382-0400-microclasp" H 3975 4024 50  0000 C CNN
F 2 "FK_connectors:Molex_MicroClasp_55935-0410_1x04_P2.00mm_Horizontal_3DMODEL" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
