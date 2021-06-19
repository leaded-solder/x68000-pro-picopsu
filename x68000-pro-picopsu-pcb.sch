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
F 2 "LegacyFootprints:Molex_MiniFit-JR-5556-20A_2x10x4.20mm_Straight" H 7525 4375 60  0001 C CNN
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
F 2 "" H 6675 3875 50  0001 C CNN
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
Text Label 7925 3975 0    50   ~ 0
PSU_5V
Text Label 7925 4075 0    50   ~ 0
PSU_5V
Text Label 7925 4175 0    50   ~ 0
PSU_5V
Text Label 7075 4075 2    50   ~ 0
PSU_12V1
Text Label 7075 4175 2    50   ~ 0
PSU_12V1
Text Label 7925 3275 0    50   ~ 0
PSU_NEG_12V
Text Label 7925 3375 0    50   ~ 0
PSU_COM
Text Label 7075 3375 2    50   ~ 0
PSU_COM
Text Label 7075 3475 2    50   ~ 0
PSU_5V
Text Label 7075 3575 2    50   ~ 0
PSU_COM
Text Label 7075 3675 2    50   ~ 0
PSU_5V
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
F 2 "" H 6225 1375 50  0001 C CNN
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
F 2 "" H 8275 1500 50  0001 C CNN
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
F 2 "" H 9925 1500 50  0001 C CNN
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
F 2 "" H 9275 1500 50  0001 C CNN
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
F 2 "" H 7800 1500 50  0001 C CNN
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
F 2 "" H 4100 3400 50  0001 C CNN
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
F 2 "" H 4100 3650 50  0001 C CNN
F 3 "~" H 4100 3650 50  0001 C CNN
	1    4100 3650
	0    -1   -1   0   
$EndComp
Text Label 4300 3850 3    50   ~ 0
PSU_5V_STANDBY
Text Label 4400 3850 3    50   ~ 0
~PS_ON
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
Text Label 4400 3200 1    50   ~ 0
PSU_5V
Text Label 4300 3200 1    50   ~ 0
PSU_5V
Text Label 4200 3200 1    50   ~ 0
PSU_5V
Text Label 4000 3200 1    50   ~ 0
PSU_12V
Text Label 3900 3200 1    50   ~ 0
PSU_12V
Text Label 4100 3200 1    50   ~ 0
PSU_5V
Text Label 3800 3200 1    50   ~ 0
PSU_12V
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 60CEAB5B
P 1000 1000
F 0 "J1" V 1062 1144 50  0000 L CNN
F 1 "Fan Header" V 1153 1144 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1000 1000 50  0001 C CNN
F 3 "~" H 1000 1000 50  0001 C CNN
	1    1000 1000
	0    1    1    0   
$EndComp
Text Label 1100 1200 3    50   ~ 0
PSU_COM
Text Label 1000 1200 3    50   ~ 0
PSU_12V
NoConn ~ 900  1200
Text Notes 1150 1300 0    50   ~ 0
Tacho is unused
$EndSCHEMATC
