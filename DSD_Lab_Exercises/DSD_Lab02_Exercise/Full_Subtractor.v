`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-02 task 03
// Full Subtractor Source Code
///////////////////////////////////////////////////////

module Full_Subtractor(output D,Bot, 
                        input A, B, Bin);
// D = Difference
// Bout = Borrow out
// Bin = Borrow in

assign D = A ^ (B ^ Bin);
assign Bout  = ((~A & ( Bin | B ) )
                     | (B & Bin) );

endmodule

