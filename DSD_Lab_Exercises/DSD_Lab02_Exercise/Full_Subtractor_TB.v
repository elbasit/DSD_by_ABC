`timescale 1ns / 1ps
//////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-02 task 03
// Full Subtractor Test Bench
//////////////////////////////////////
module Full_Subtractor_TB();
wire D, B;
reg X, Y, Z;
Full_Subtractor inst0(D,B, X, Y , Z);

initial begin
#00  X = 0; Y = 0; Z = 0;
#10  X = 0; Y = 0; Z = 1;
#10  X = 0; Y = 1; Z = 0;
#10  X = 0; Y = 1; Z = 1;
#10  X = 1; Y = 0; Z = 0;
#10  X = 1; Y = 0; Z = 1;
#10  X = 1; Y = 1; Z = 0;
#10  X = 1; Y = 1; Z = 1; 
end
initial begin
$monitor ("%t, X = %d| Y = %d| Z = %d| B = %b| D = %b",
 $time, X, Y, Z, B, D);
end
endmodule

