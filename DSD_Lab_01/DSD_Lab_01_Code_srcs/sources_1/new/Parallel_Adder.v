`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 05:58:47 PM
// Design Name: 
// Module Name: Parallel_Adder
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

// Abdul Basit | 041-18-0014
module Parallel_Adder(sum, c_out, a, b);
input [3:0] a, b;
output  [3:0]sum;
output c_out;

// wires
wires c1 , c2, c3;

// logic description/ instantaiting
Half_Adder HA0(sum[0],a[0],b[0]);
Full_adder FA0(a[1],b[1],c1,sum[1],c1);
Full_adder FA1(a[2],b[2],c2,sum[2],c3);
Full_adder FA2(a[3],b[3],c3,sum[3],c_out);


Full_adder FA0(a,b,c_in,sum,c_out);


endmodule
