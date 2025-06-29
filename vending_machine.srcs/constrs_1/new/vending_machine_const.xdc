set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports f]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports rst]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports open]
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]



set_property PACKAGE_PIN U2 [get_ports t]
set_property IOSTANDARD LVCMOS33 [get_ports t]
