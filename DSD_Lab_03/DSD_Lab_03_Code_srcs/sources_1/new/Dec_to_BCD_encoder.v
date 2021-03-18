`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:54:56 PM
// Design Name: 
// Module Name: Dec_to_BCD_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Dec_to_BCD_encoder(SW, Out);
input wire [8:0] SW;
output reg [3:0] Out;

//Logic Description
always@(*)
begin

    case(SW)
    9'b000000001 : Out = 4'b0001;
    9'b000000010 : Out = 4'b0010;
    9'b000000100 : Out = 4'b0011;
    9'b000001000 : Out = 4'b0100;
    9'b000010000 : Out = 4'b0101;
    9'b000100000 : Out = 4'b0110;
    9'b001000000 : Out = 4'b0111;
    9'b010000000 : Out = 4'b1000;
    9'b100000000 : Out = 4'b1001;

    
    default : Out = 4'bzzzz;
    endcase
end    

endmodule



//module TB;
//reg [8:0] SW;
//wire [3:0] Out;

//initial
//SW = 1;

// Dec_to_BCD_encoder inst0(SW, Out);





//endmodule
