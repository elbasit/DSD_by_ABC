`timescale 1ns / 1ps
////////////////////////////////////////
// Name : Abdul Basit
// CMS: 041-18-0014
// DSD Lab-05 Shift Register
////////////////////////////////////////
module Shift_reg(q0, q1, q2, out, in, clk);
input in, clk;
output reg q0, q1, q2, out; 


always@(posedge clk)
begin
    q0  <= in;
    q1  <= q0;
    q2  <= q1;
    out <= q2;
end 
endmodule

