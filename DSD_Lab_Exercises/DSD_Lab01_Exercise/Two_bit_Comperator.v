`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-01 task 01
//////////////////////////////////////////////////////////////////////////////////


module Two_Bit_comparator(output A_LT_B, A_GT_B, A_EQ_B, input A0,A1,B0,B1);
wire notA0, notA1, notB0,notB1;
wire [7:0] wr;

// Inverting Inputs for Diagram
not not0(notA0,A0);
not not1(notA1,A1);
not not2(notB0,B0);
not not3(notB1,B1);

or or0(A_GT_B,wr[0],wr[1],wr[2]);
and and0(wr[0],A1,notB1);
and and1(wr[1],A0,notB1,notB0);
and and3(wr[2],A1,A0,notB0);

and and4(A_EQ_B,wr[3],wr[4]);
xor xor0(wr[3],A0,B0);
xor xor1(wr[4],A1,B1);


or or1(A_LT_B,wr[5],wr[6],wr[7]);
and and5(wr[5],notA1,B0);
and and6(wr[6],notA1,notA0,B0);
and and7(wr[7],notA0,B0,B1);

endmodule