`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-02 task 01
// Four bit Magnitude_Comperator Source Code
///////////////////////////////////////////////////////

module Four_bit_Mag_Comperator(output A_LT_B, A_GT_B, A_EQ_B,
                               input [3:0] A, [3:0] B);
    
                            
assign  A_EQ_B   = ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (A[0] ~^ B[0]));
assign  A_GT_B = ((A[3] & (~B[3])) | (A[3] & B[3]) & (A[2] & ~B[2]) 
           | ((A[3] & B[3]) & (A[2] & B[2]) & (A[1] & (~B[1])) 
           | (A[3] & B[3]) & (A[2] & B[2]) & A[1] & B[1]) & (A[0] & ( ~B[0])) );
assign  A_LT_B  = ((~A[3] & B[3]) | (A[3] & B[3]) & (~A[2] & B[2]) | 
        (A[3] & B[3]) & (A[2] & B[2]) & (~A[1] & B[1])  |
        (A[3] & B[3]) & (A[2] & B[2]) & (A[1] & B[1]) & (~A[0] & (~B[0])) );
                    
endmodule

