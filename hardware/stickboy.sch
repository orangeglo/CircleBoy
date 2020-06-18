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
L power:GND #PWR0101
U 1 1 5E264496
P 3700 4750
F 0 "#PWR0101" H 3700 4500 50  0001 C CNN
F 1 "GND" H 3705 4577 50  0000 C CNN
F 2 "" H 3700 4750 50  0001 C CNN
F 3 "" H 3700 4750 50  0001 C CNN
	1    3700 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5E26461D
P 3700 3400
F 0 "#PWR0102" H 3700 3250 50  0001 C CNN
F 1 "VCC" H 3700 3550 50  0000 C CNN
F 2 "" H 3700 3400 50  0001 C CNN
F 3 "" H 3700 3400 50  0001 C CNN
	1    3700 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E265CB8
P 4100 3450
F 0 "#PWR0103" H 4100 3200 50  0001 C CNN
F 1 "GND" V 4105 3322 50  0000 R CNN
F 2 "" H 4100 3450 50  0001 C CNN
F 3 "" H 4100 3450 50  0001 C CNN
	1    4100 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E266C82
P 3950 3450
F 0 "C1" V 4202 3450 50  0000 C CNN
F 1 "0.1 uF" V 4111 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3988 3300 50  0001 C CNN
F 3 "~" H 3950 3450 50  0001 C CNN
	1    3950 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 3400 3700 3450
Wire Wire Line
	3800 3450 3700 3450
Connection ~ 3700 3450
Wire Wire Line
	3700 3450 3700 3550
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5E26CBAB
P 2850 3550
F 0 "J1" H 2742 3225 50  0000 C CNN
F 1 "power" H 2742 3316 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 2850 3550 50  0001 C CNN
F 3 "~" H 2850 3550 50  0001 C CNN
	1    2850 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 3450 3050 3450
$Comp
L power:GND #PWR0104
U 1 1 5E2711F2
P 3050 3550
F 0 "#PWR0104" H 3050 3300 50  0001 C CNN
F 1 "GND" H 3055 3377 50  0000 C CNN
F 2 "" H 3050 3550 50  0001 C CNN
F 3 "" H 3050 3550 50  0001 C CNN
	1    3050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E272980
P 4550 3150
F 0 "#FLG0101" H 4550 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 3323 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "~" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5E274A9F
P 4550 3150
F 0 "#PWR0105" H 4550 3000 50  0001 C CNN
F 1 "VCC" H 4568 3323 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E27511E
P 4950 3150
F 0 "#FLG0102" H 4950 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 3323 50  0000 C CNN
F 2 "" H 4950 3150 50  0001 C CNN
F 3 "~" H 4950 3150 50  0001 C CNN
	1    4950 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E275917
P 4950 3150
F 0 "#PWR0106" H 4950 2900 50  0001 C CNN
F 1 "GND" H 4955 2977 50  0000 C CNN
F 2 "" H 4950 3150 50  0001 C CNN
F 3 "" H 4950 3150 50  0001 C CNN
	1    4950 3150
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U1
U 1 1 5E260C77
P 3700 4150
F 0 "U1" H 3171 4196 50  0000 R CNN
F 1 "ATtiny85-20SU" H 3171 4105 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 3700 4150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 3700 4150 50  0001 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5E289833
P 4850 4250
F 0 "J2" H 4930 4242 50  0000 L CNN
F 1 "pins" H 4930 4151 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 4850 4250 50  0001 C CNN
F 3 "~" H 4850 4250 50  0001 C CNN
	1    4850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3750 4450 4150
Wire Wire Line
	4450 4150 4300 4150
Wire Wire Line
	4300 4250 4500 4250
Wire Wire Line
	4500 4250 4500 3950
Wire Wire Line
	4300 3850 4650 3850
Wire Wire Line
	4650 3850 4650 4050
Wire Wire Line
	4300 3950 4400 3950
Wire Wire Line
	4400 3950 4400 4000
Wire Wire Line
	4400 4000 4600 4000
Wire Wire Line
	4600 4000 4600 4150
Wire Wire Line
	4600 4150 4650 4150
Wire Wire Line
	4300 4050 4550 4050
Wire Wire Line
	4550 4050 4550 4250
Wire Wire Line
	4550 4250 4650 4250
$Comp
L FPC4-59453-041110EDHLF:59453-041110EDHLF J3
U 1 1 5E3702BC
P 6400 4050
F 0 "J3" H 6850 3485 50  0000 C CNN
F 1 "59453-041110EDHLF" H 6850 3576 50  0000 C CNN
F 2 "59453041110EDHLF" H 7150 4150 50  0001 L CNN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/59453-0_1110edhlf.pdf" H 7150 4050 50  0001 L CNN
F 4 "4w FFC SMT header bottom contact 0.5mm" H 7150 3950 50  0001 L CNN "Description"
F 5 "1" H 7150 3850 50  0001 L CNN "Height"
F 6 "Amphenol" H 7150 3750 50  0001 L CNN "Manufacturer_Name"
F 7 "59453-041110EDHLF" H 7150 3650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "649-59453041110EDHLF" H 7150 3550 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=649-59453041110EDHLF" H 7150 3450 50  0001 L CNN "Mouser Price/Stock"
F 10 "7710293" H 7150 3350 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/7710293" H 7150 3250 50  0001 L CNN "RS Price/Stock"
	1    6400 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E37274E
P 6400 4050
F 0 "#PWR03" H 6400 3800 50  0001 C CNN
F 1 "GND" H 6405 3877 50  0000 C CNN
F 2 "" H 6400 4050 50  0001 C CNN
F 3 "" H 6400 4050 50  0001 C CNN
	1    6400 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E372CB0
P 5500 4050
F 0 "#PWR02" H 5500 3800 50  0001 C CNN
F 1 "GND" H 5505 3877 50  0000 C CNN
F 2 "" H 5500 4050 50  0001 C CNN
F 3 "" H 5500 4050 50  0001 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5E3732D5
P 5500 3850
F 0 "#PWR01" H 5500 3700 50  0001 C CNN
F 1 "VCC" V 5518 3977 50  0000 L CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3950 6400 4050
Connection ~ 6400 4050
Wire Wire Line
	5500 3750 4450 3750
Wire Wire Line
	4500 3950 5500 3950
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5E37A910
P 2550 3850
F 0 "J4" H 2442 3525 50  0000 C CNN
F 1 "power" H 2442 3616 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 2550 3850 50  0001 C CNN
F 3 "~" H 2550 3850 50  0001 C CNN
	1    2550 3850
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5E37E86D
P 2750 3750
F 0 "#PWR04" H 2750 3600 50  0001 C CNN
F 1 "VCC" H 2750 3900 50  0000 C CNN
F 2 "" H 2750 3750 50  0001 C CNN
F 3 "" H 2750 3750 50  0001 C CNN
	1    2750 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E37FB95
P 2750 3850
F 0 "#PWR05" H 2750 3600 50  0001 C CNN
F 1 "GND" H 2755 3677 50  0000 C CNN
F 2 "" H 2750 3850 50  0001 C CNN
F 3 "" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
Connection ~ 4450 4150
Wire Wire Line
	4450 4550 4650 4550
Wire Wire Line
	4450 4150 4450 4550
Wire Wire Line
	4650 4450 4500 4450
Wire Wire Line
	4500 4450 4500 4250
Connection ~ 4500 4250
Wire Wire Line
	4650 4350 4300 4350
$EndSCHEMATC