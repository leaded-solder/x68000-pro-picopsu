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
L atx:ATX_24PIN J4
U 1 1 60CD5260
P 7525 3725
F 0 "J4" H 7500 4522 60  0000 C CNN
F 1 "PicoPSU" H 7500 4416 60  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A_2x12_P4.20mm_Vertical" H 7525 4375 60  0001 C CNN
F 3 "" H 7525 4375 60  0000 C CNN
	1    7525 3725
	1    0    0    -1  
$EndComp
NoConn ~ 7075 3175
NoConn ~ 7075 3275
NoConn ~ 7075 4275
NoConn ~ 7925 3175
NoConn ~ 7925 3875
$Comp
L Connector:TestPoint TP2
U 1 1 60CD675F
P 6475 3875
F 0 "TP2" H 6533 3993 50  0000 L CNN
F 1 "TestPoint" H 6533 3902 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 6675 3875 50  0001 C CNN
F 3 "~" H 6675 3875 50  0001 C CNN
	1    6475 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 3875 7075 3875
Text Label 6475 3875 2    50   ~ 0
PWR_OK
Text Label 7925 3475 0    50   ~ 0
~PS_ON
Text Label 7925 4275 0    50   ~ 0
PSU_COM
Text Label 7925 3775 0    50   ~ 0
PSU_COM
Text Label 7925 3675 0    50   ~ 0
PSU_COM
Text Label 7925 3575 0    50   ~ 0
PSU_COM
Text Label 7075 4075 2    50   ~ 0
PSU_12V
Text Label 7075 4175 2    50   ~ 0
PSU_12V
Text Label 7925 3275 0    50   ~ 0
PSU_NEG_12V
Text Label 7925 3375 0    50   ~ 0
PSU_COM
Text Label 7075 3375 2    50   ~ 0
PSU_COM
Text Label 7075 3575 2    50   ~ 0
PSU_COM
Text Label 7075 3775 2    50   ~ 0
PSU_COM
Text Label 7075 3975 2    50   ~ 0
PSU_5V_STANDBY
$Comp
L Connector:TestPoint TP1
U 1 1 60CD8D70
P 6025 1375
F 0 "TP1" H 6083 1493 50  0000 L CNN
F 1 "TestPoint" H 6083 1402 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 6225 1375 50  0001 C CNN
F 3 "~" H 6225 1375 50  0001 C CNN
	1    6025 1375
	1    0    0    -1  
$EndComp
Text Label 6025 1375 3    50   ~ 0
PSU_5V_STANDBY
$Comp
L Device:LED D1
U 1 1 60CD95D4
P 8275 1500
F 0 "D1" H 8268 1245 50  0000 C CNN
F 1 "Standby Power" H 8268 1336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 8275 1500 50  0001 C CNN
F 3 "~" H 8275 1500 50  0001 C CNN
	1    8275 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 60CD9E48
P 9925 1500
F 0 "D2" H 9918 1245 50  0000 C CNN
F 1 "Power OK" H 9918 1336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9925 1500 50  0001 C CNN
F 3 "~" H 9925 1500 50  0001 C CNN
	1    9925 1500
	-1   0    0    1   
$EndComp
Text Label 10075 1500 3    50   ~ 0
PSU_COM
Text Label 9175 1500 3    50   ~ 0
PWR_OK
$Comp
L Device:R_Small_US R2
U 1 1 60CDB30F
P 9275 1500
F 0 "R2" V 9480 1500 50  0000 C CNN
F 1 "100Ω" V 9389 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9275 1500 50  0001 C CNN
F 3 "~" H 9275 1500 50  0001 C CNN
	1    9275 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 60CDB9C3
P 7800 1500
F 0 "R1" V 7595 1500 50  0000 C CNN
F 1 "100Ω" V 7686 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7800 1500 50  0001 C CNN
F 3 "~" H 7800 1500 50  0001 C CNN
	1    7800 1500
	0    1    1    0   
$EndComp
Text Label 8425 1500 3    50   ~ 0
PSU_COM
Text Label 7700 1500 3    50   ~ 0
PSU_5V_STANDBY
Wire Wire Line
	9775 1500 9375 1500
Wire Wire Line
	8125 1500 7900 1500
$Comp
L Connector:Screw_Terminal_01x07 J2
U 1 1 60CD589C
P 4100 3400
F 0 "J2" V 3972 3780 50  0000 L CNN
F 1 "Screw_Terminal_01x07" V 4063 3780 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-7-5.0-H_1x07_P5.00mm_Horizontal" H 4100 3400 50  0001 C CNN
F 3 "~" H 4100 3400 50  0001 C CNN
	1    4100 3400
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x07 J3
U 1 1 60CD7E7B
P 4100 3650
F 0 "J3" V 4064 3262 50  0000 R CNN
F 1 "Screw_Terminal_01x07" V 3973 3262 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-7-5.0-H_1x07_P5.00mm_Horizontal" H 4100 3650 50  0001 C CNN
F 3 "~" H 4100 3650 50  0001 C CNN
	1    4100 3650
	0    -1   -1   0   
$EndComp
Text Label 4300 3850 3    50   ~ 0
PSU_5V_STANDBY
Text Label 4200 3850 3    50   ~ 0
PSU_NEG_12V
Text Label 4100 3850 3    50   ~ 0
PSU_COM
Text Label 4000 3850 3    50   ~ 0
PSU_COM
Text Label 3900 3850 3    50   ~ 0
PSU_COM
Text Label 3800 3850 3    50   ~ 0
PSU_COM
Text Label 4000 3200 1    50   ~ 0
PSU_12V
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 60CEAB5B
P 1000 1000
F 0 "J1" V 1062 1144 50  0000 L CNN
F 1 "Fan Header" V 1153 1144 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1000 1000 50  0001 C CNN
F 3 "~" H 1000 1000 50  0001 C CNN
F 4 "WM19538-ND" V 1000 1000 50  0001 C CNN "DigiKey"
	1    1000 1000
	0    1    1    0   
$EndComp
Text Label 1100 1200 3    50   ~ 0
PSU_COM
NoConn ~ 900  1200
Text Notes 1150 1300 0    50   ~ 0
Tacho is unused
$Comp
L 74xx:74LS04 U1
U 1 1 60CED166
P 10150 3850
F 0 "U1" H 10150 4167 50  0000 C CNN
F 1 "74LS04" H 10150 4076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10150 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10150 3850 50  0001 C CNN
	1    10150 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 60CEE495
P 9750 5250
F 0 "U1" H 9980 5296 50  0000 L CNN
F 1 "74LS04" H 9980 5205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9750 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9750 5250 50  0001 C CNN
	7    9750 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 60CEF939
P 10525 5250
F 0 "C1" H 10617 5296 50  0000 L CNN
F 1 "0.1µF" H 10617 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10525 5250 50  0001 C CNN
F 3 "~" H 10525 5250 50  0001 C CNN
	1    10525 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10525 5350 10525 5750
Wire Wire Line
	10525 5750 9750 5750
Wire Wire Line
	10525 5150 10525 4750
Wire Wire Line
	10525 4750 9750 4750
Text Label 9750 5750 2    50   ~ 0
PSU_COM
Text Label 9750 4750 2    50   ~ 0
PSU_5V_STANDBY
Text Label 10650 3850 0    50   ~ 0
~PS_ON
$Comp
L Device:R_Small_US R3
U 1 1 60CF16FD
P 9100 3275
F 0 "R3" H 9168 3321 50  0000 L CNN
F 1 "4.7kΩ" H 9168 3230 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9100 3275 50  0001 C CNN
F 3 "~" H 9100 3275 50  0001 C CNN
	1    9100 3275
	1    0    0    -1  
$EndComp
Text Label 9100 3000 0    50   ~ 0
PSU_5V_STANDBY
Text Label 4400 3850 3    50   ~ 0
POWER_ON_REQUEST
Text Label 9850 3850 2    50   ~ 0
POWER_ON_REQUEST
Text Label 1000 1200 3    50   ~ 0
PSU_12V
Text Label 4100 3200 1    50   ~ 0
PSU_5V
Text Label 4200 3200 1    50   ~ 0
PSU_5V
Text Label 4300 3200 1    50   ~ 0
PSU_5V
Text Label 4400 3200 1    50   ~ 0
PSU_5V
Text Label 7925 4175 0    50   ~ 0
PSU_5V
Text Label 7925 4075 0    50   ~ 0
PSU_5V
Text Label 7925 3975 0    50   ~ 0
PSU_5V
Text Label 7075 3675 2    50   ~ 0
PSU_5V
Text Label 7075 3475 2    50   ~ 0
PSU_5V
Text Label 3800 3200 1    50   ~ 0
PSU_12V
Text Label 3900 3200 1    50   ~ 0
PSU_12V
$Comp
L Connector:TestPoint TP3
U 1 1 60D056FF
P 9850 3150
F 0 "TP3" H 9908 3268 50  0000 L CNN
F 1 "TestPoint" H 9908 3177 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 10050 3150 50  0001 C CNN
F 3 "~" H 10050 3150 50  0001 C CNN
	1    9850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3150 9850 3550
$Comp
L Connector:TestPoint CONV_1
U 1 1 60D10132
P 3600 1525
F 0 "CONV_1" H 3658 1643 50  0000 L CNN
F 1 "AC/DC Converter" H 3658 1552 50  0000 L CNN
F 2 "OffboardACDC:3x2_4x2" H 3800 1525 50  0001 C CNN
F 3 "~" H 3800 1525 50  0001 C CNN
	1    3600 1525
	1    0    0    -1  
$EndComp
Text Label 3600 1525 3    50   ~ 0
PSU_COM
$Comp
L 74xx:74LS04 U1
U 2 1 60F00BF1
P 5525 5175
F 0 "U1" H 5525 5492 50  0000 C CNN
F 1 "74LS04" H 5525 5401 50  0000 C CNN
F 2 "" H 5525 5175 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5525 5175 50  0001 C CNN
	2    5525 5175
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 60F01EF7
P 5525 5675
F 0 "U1" H 5525 5992 50  0000 C CNN
F 1 "74LS04" H 5525 5901 50  0000 C CNN
F 2 "" H 5525 5675 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5525 5675 50  0001 C CNN
	3    5525 5675
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 4 1 60F037CF
P 5525 6175
F 0 "U1" H 5525 6492 50  0000 C CNN
F 1 "74LS04" H 5525 6401 50  0000 C CNN
F 2 "" H 5525 6175 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5525 6175 50  0001 C CNN
	4    5525 6175
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 60F04B0C
P 5525 6700
F 0 "U1" H 5525 7017 50  0000 C CNN
F 1 "74LS04" H 5525 6926 50  0000 C CNN
F 2 "" H 5525 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5525 6700 50  0001 C CNN
	5    5525 6700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 60F056E7
P 5525 7225
F 0 "U1" H 5525 7542 50  0000 C CNN
F 1 "74LS04" H 5525 7451 50  0000 C CNN
F 2 "" H 5525 7225 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5525 7225 50  0001 C CNN
	6    5525 7225
	1    0    0    -1  
$EndComp
Text Notes 4500 7675 0    50   ~ 0
As per datasheet, "All unused inputs of the [74LS04] \nmust be held at VCC or GND to ensure proper device\noperation."
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 60F13E00
P 4925 7225
F 0 "JP5" H 4925 7437 50  0000 C CNN
F 1 "N/C" H 4925 7346 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4925 7225 50  0001 C CNN
F 3 "~" H 4925 7225 50  0001 C CNN
	1    4925 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 7225 4825 7225
Wire Wire Line
	5025 7225 5225 7225
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 60F15A8E
P 4925 6700
F 0 "JP4" H 4925 6912 50  0000 C CNN
F 1 "N/C" H 4925 6821 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4925 6700 50  0001 C CNN
F 3 "~" H 4925 6700 50  0001 C CNN
	1    4925 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 60F161E9
P 4925 6175
F 0 "JP3" H 4925 6387 50  0000 C CNN
F 1 "N/C" H 4925 6296 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4925 6175 50  0001 C CNN
F 3 "~" H 4925 6175 50  0001 C CNN
	1    4925 6175
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 60F166B8
P 4925 5675
F 0 "JP2" H 4925 5887 50  0000 C CNN
F 1 "N/C" H 4925 5796 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4925 5675 50  0001 C CNN
F 3 "~" H 4925 5675 50  0001 C CNN
	1    4925 5675
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 60F16AD8
P 4925 5175
F 0 "JP1" H 4925 5387 50  0000 C CNN
F 1 "N/C" H 4925 5296 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4925 5175 50  0001 C CNN
F 3 "~" H 4925 5175 50  0001 C CNN
	1    4925 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 5675 5025 5675
Wire Wire Line
	5225 5175 5025 5175
Wire Wire Line
	5225 6175 5025 6175
Wire Wire Line
	5225 6700 5025 6700
Wire Wire Line
	4825 5175 4625 5175
Wire Wire Line
	4625 5175 4625 5675
Wire Wire Line
	4825 6700 4625 6700
Connection ~ 4625 6700
Wire Wire Line
	4625 6700 4625 7225
Wire Wire Line
	4825 6175 4625 6175
Connection ~ 4625 6175
Wire Wire Line
	4625 6175 4625 6700
Wire Wire Line
	4825 5675 4625 5675
Connection ~ 4625 5675
Wire Wire Line
	4625 5675 4625 6175
NoConn ~ 5825 7225
NoConn ~ 5825 6700
NoConn ~ 5825 6175
NoConn ~ 5825 5675
NoConn ~ 5825 5175
Text Label 4625 7225 2    50   ~ 0
PSU_COM
Wire Wire Line
	9100 3000 9100 3175
Wire Wire Line
	9100 3375 9100 3550
Wire Wire Line
	9100 3550 9850 3550
Connection ~ 9850 3550
Wire Wire Line
	9850 3550 9850 3850
Wire Wire Line
	10450 3850 10650 3850
$EndSCHEMATC
