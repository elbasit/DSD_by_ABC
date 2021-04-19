`timescale 1ns / 1ps
///////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-03 task 01
// BCD to Decimal Rncoder Source Code
///////////////////////////////////////
module Dec_to_BCD_encoder(Out,SW);
input wire [8:0] SW;
output reg [3:0] Out;
    
    //Logic Description
    always@(*)
    begin
    
        case(SW)
        4'd1: Out = 4'b0001;
        4'd2 : Out = 4'b0010;
        4'd3: Out = 4'b0011;
        4'd4 : Out = 4'b0100;
        4'd5 : Out = 4'b0101;
        4'd6 : Out = 4'b0110;
        4'd7 : Out = 4'b0111;
        4'd8 : Out = 4'b1000;
        4'd9 : Out = 4'b1001;
        
        default : Out = 4'bzzzz;
        endcase
    end    
    
endmodule


