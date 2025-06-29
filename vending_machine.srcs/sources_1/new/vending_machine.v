`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 12:15:10
// Design Name: 
// Module Name: vending_machine
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


module vending_machine(
    input clk,rst,t,f,
    output reg open

    );
    parameter s0=2'b00;
    parameter s5=2'b01;
    parameter s10=2'b10;
    parameter s15=2'b11;
    reg [1:0] current_state,next_state;
    
    always @(*) begin
    case(current_state)
    s0:begin
    if(f)
    next_state=s5;
    else if(t)
    next_state=s10;
    else
    next_state=s0;
    end
    s5:begin
    if(f)
    next_state=s10;
    else if(t)
    next_state=s15;
    else
    next_state=s5;
    end
    s10:begin
    if(f)
    next_state=s15;
    else if(t)
    next_state=s15;
    else
    next_state=s10;
    end
    s15:next_state=s0;
    default:next_state=s0;
    endcase
    end
    always @(posedge clk or posedge rst)
    begin
    if(rst)
    current_state<=s0;
    else
    current_state<=next_state;
    end
    
    always @(*)
    begin
    if(current_state==s15)
    open=1;
    else
    open=0;
    end
endmodule
