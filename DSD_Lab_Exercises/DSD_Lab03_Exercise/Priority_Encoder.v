`timescale 1ns / 1ps
///////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-03 task 02
// Priority Encoder Source Code
///////////////////////////////////////
module Priority_Encoder(Out,SW);
input wire [8:0] SW;
output reg [3:0] Out;
    
    //Logic Description
    always@(*)
    begin
    // Using Don't care terms in casex
    // to avoid conflict
        casex(SW)
        9'b000000001 : Out = 4'b0001;
        9'b00000001x : Out = 4'b0010;
        9'b0000001xx : Out = 4'b0011;
        9'b000001xxx : Out = 4'b0100;
        9'b00001xxxx : Out = 4'b0101;
        9'b0001xxxxx : Out = 4'b0110;
        9'b001xxxxxx : Out = 4'b0111;
        9'b01xxxxxxx : Out = 4'b1000;
        9'b1xxxxxxxx : Out = 4'b1001;
        
        default : Out = 4'bzzzz;
        endcase
    end    
    
endmodule
