`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-02 task 02
// Sixteen bit Magnitude_Comperator Source Code
///////////////////////////////////////////////////////

module Sixteen_bit_Comp(output A_LT_B, A_GT_B, A_EQ_B, input [3:0] A, [3:0]B);
wire A_LT_B1, A_GT_B1, A_EQ_B1,
    A_LT_B2, A_GT_B2, A_EQ_B2,
    A_LT_B3, A_GT_B3, A_EQ_B3,
    A_LT_B4, A_GT_B4, A_EQ_B4;

// instantiating four bit Magnitude Comperator modules
Four_bit_Mag_Comperator FBC0(A_LT_B1, A_GT_B1, A_EQ_B1, A[3:0], B[3:0]);
Four_bit_Mag_Comperator FBC1( A_LT_B2, A_GT_B2, A_EQ_B2, A[7:4], B[7:4]); 
Four_bit_Mag_Comperator FBC2( A_LT_B3, A_GT_B3, A_EQ_B3, A[11:8], B[11:8]); 
Four_bit_Mag_Comperator FBC3( A_LT_B4, A_GT_B4, A_EQ_B4, A[15:12], B[15:12]);

assign A_EQ_B = (A_EQ_B1 & A_EQ_B2 & A_EQ_B3 & A_EQ_B4);

assign A_LT_B = A_LT_B4 | (A_EQ_B4 & A_LT_B3) 
                | (A_EQ_B4 & A_EQ_B3 & A_LT_B2) 
                | (A_EQ_B2 & A_EQ_B3 & A_EQ_B4 & A_LT_B1);  

assign A_GT_B  = A_GT_B4 | (A_EQ_B4 & A_GT_B3) 
                | (A_EQ_B4 & A_EQ_B3 & A_GT_B2) 
                | (A_EQ_B4 & A_EQ_B3 & A_EQ_B2 & A_GT_B1); 
endmodule

