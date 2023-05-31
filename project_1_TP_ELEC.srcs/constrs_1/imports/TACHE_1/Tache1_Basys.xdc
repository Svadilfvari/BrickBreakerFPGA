## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports Clk100]
	set_property IOSTANDARD LVCMOS33 [get_ports Clk100]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports Clk100]

## Switches
set_property PACKAGE_PIN V17 [get_ports {Blue[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Blue[0]}]
set_property PACKAGE_PIN V16 [get_ports {Blue[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Blue[1]}]
set_property PACKAGE_PIN W16 [get_ports {Blue[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Blue[2]}]
set_property PACKAGE_PIN W17 [get_ports {Blue[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Blue[3]}]
set_property PACKAGE_PIN W15 [get_ports {Green[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Green[0]}]
set_property PACKAGE_PIN V15 [get_ports {Green[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Green[1]}]
set_property PACKAGE_PIN W14 [get_ports {Green[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Green[2]}]
set_property PACKAGE_PIN W13 [get_ports {Green[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Green[3]}]
set_property PACKAGE_PIN V2 [get_ports {Red[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Red[0]}]
set_property PACKAGE_PIN T3 [get_ports {Red[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Red[1]}]
set_property PACKAGE_PIN T2 [get_ports {Red[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Red[2]}]
set_property PACKAGE_PIN R3 [get_ports {Red[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Red[3]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[13]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
#set_property PACKAGE_PIN T1 [get_ports {sw[14]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
set_property PACKAGE_PIN R2 [get_ports {S15}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S15}]


##Buttons
#set_property PACKAGE_PIN U18 [get_ports centre]
	#set_property IOSTANDARD LVCMOS33 [get_ports centre]
#set_property PACKAGE_PIN T18 [get_ports nord]
	#set_property IOSTANDARD LVCMOS33 [get_ports nord]
set_property PACKAGE_PIN W19 [get_ports Reset]
	set_property IOSTANDARD LVCMOS33 [get_ports Reset]
#set_property PACKAGE_PIN T17 [get_ports est]
	#set_property IOSTANDARD LVCMOS33 [get_ports est]
#set_property PACKAGE_PIN U17 [get_ports sud]
	#set_property IOSTANDARD LVCMOS33 [get_ports sud]


##VGA Connector
set_property PACKAGE_PIN G19 [get_ports {VGA_Red[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Red[0]}]
set_property PACKAGE_PIN H19 [get_ports {VGA_Red[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Red[1]}]
set_property PACKAGE_PIN J19 [get_ports {VGA_Red[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Red[2]}]
set_property PACKAGE_PIN N19 [get_ports {VGA_Red[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Red[3]}]
set_property PACKAGE_PIN N18 [get_ports {VGA_Blue[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Blue[0]}]
set_property PACKAGE_PIN L18 [get_ports {VGA_Blue[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Blue[1]}]
set_property PACKAGE_PIN K18 [get_ports {VGA_Blue[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Blue[2]}]
set_property PACKAGE_PIN J18 [get_ports {VGA_Blue[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Blue[3]}]
set_property PACKAGE_PIN J17 [get_ports {VGA_Green[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Green[0]}]
set_property PACKAGE_PIN H17 [get_ports {VGA_Green[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Green[1]}]
set_property PACKAGE_PIN G17 [get_ports {VGA_Green[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Green[2]}]
set_property PACKAGE_PIN D17 [get_ports {VGA_Green[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {VGA_Green[3]}]
set_property PACKAGE_PIN P19 [get_ports Hsync]
	set_property IOSTANDARD LVCMOS33 [get_ports Hsync]
set_property PACKAGE_PIN R19 [get_ports Vsync]
	set_property IOSTANDARD LVCMOS33 [get_ports Vsync]

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]