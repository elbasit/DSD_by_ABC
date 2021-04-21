`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-02 task 01
// Four bit Magnitude_Comperator Test Bench
///////////////////////////////////////////////////////

module Four_bit_Mag_Comperator_TB();
reg [3:0] A, B;
wire A_GT_B, A_LT_B, A_EQ_B;

initial
begin
    #00 A = 4'd5; B = 4'd5;
    #10 A = 4'd7; B = 4'd5;
    #10 A = 4'd5; B = 4'd7;
    #10 A = 4'd9; B = 4'd10;
    #10 A = 4'd15; B = 4'd14;
end

initial
begin
$display ("Abdul Basit | 041-18-0014 \n");
$monitor ($time,"ns A=%d, B=%d, (A>B) =%b, (A<B)=%b, (A=B)=%b", A,B, A_GT_B, A_LT_B, A_EQ_B);
end

// Instantiating the module
Four_bit_Mag_Comperator inst0(A_LT_B, A_GT_B, A_EQ_B, A, B);

endmodule
