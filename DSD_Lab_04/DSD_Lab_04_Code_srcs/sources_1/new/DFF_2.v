`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:30:27 PM
// Design Name: 
// Module Name: DFF_2
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


module DFF_2(q,clk,d,reset);
input clk, d, reset;
output reg q;

// reset is asynchronous
always@(posedge clk, posedge reset)
begin
    if (reset == 1)
    q <= 1'b0;
    
    else
        q <= d;

end


endmodule
