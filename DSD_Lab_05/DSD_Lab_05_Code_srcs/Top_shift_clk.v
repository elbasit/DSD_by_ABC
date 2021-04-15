`timescale 1ns / 1ps
////////////////////////////////////////////////
// Name : Abdul Basit
// CMS: 041-18-0014
// DSD Lab-05 Shift Register and clock driver 
////////////////////////////////////////////////
module Top_shift_clk(clkIn, In, q0, q1, q2, q3);
input clkIn, In;
output q0, q1, q2, q3;
wire clkout;

Clock_divider inst0(clkIn, clkout);
Shift_reg inst1(q0, q1, q2, q3, In, clkout);

endmodule
