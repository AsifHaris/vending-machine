`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 12:38:28
// Design Name: 
// Module Name: vending_machine_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vending_machine_tb;
reg clk,rst,t,f;
wire open;
mealy uut(.clk(clk),.rst(rst),.t(t),.f(f),.open(open));
initial clk=0;
always #5 clk=~clk;
initial begin
$monitor("time=%0t ,t=%b,f=%b,open=%b,rst=%b",$time,t,f,open,rst);
rst=0;t=0;f=0;#10;
rst=0;t=0;f=1;#10;
rst=0;t=1;f=0;#10;
rst=0;t=1;f=1;#10;
rst=1;t=0;f=0;#10;
rst=1;t=0;f=1;#10;
rst=1;t=1;f=0;#10;
rst=1;t=1;f=1;#10;
$finish;
end
endmodule
