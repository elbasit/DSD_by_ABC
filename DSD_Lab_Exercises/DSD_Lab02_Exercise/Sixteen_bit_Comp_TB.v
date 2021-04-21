`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-02 task 02
// Sixteen bit Magnitude_Comperator Test Bench
///////////////////////////////////////////////////////
module Sixteen_bit_Comp_TB();
reg [15:0] A;
reg [15:0] B;
wire A_GT_B, A_LT_B, A_EQ_B;

initial
begin
    #00 A = 16'd32767; B = 16'd32767;
    #10 A = 16'd546; B = 16'd984;
    #10 A = 16'd5473; B = 16'd3357;
    #10 A = 16'd3300; B = 16'd3300;
    #10 A = 16'd143; B = 16'd144;
end

initial
begin
$display ("Abdul Basit | 041-18-0014 \n");
$monitor ($time,"ns A=%d, B=%d, (A>B) =%b, (A<B)=%b, (A=B)=%b", 
                    A,B, A_GT_B, A_LT_B, A_EQ_B);
end
// Instantiating the module
Sixteen_bit_Comp inst0(A_LT_B, A_GT_B, A_EQ_B, A, B);
endmodule
