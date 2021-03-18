`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 03:07:35 PM
// Design Name: 
// Module Name: SSD_Driver
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

// Abdul Basit | 041-18-0014
module SSD_Driver(sw, Outt,AN,LED);
input wire [9:0] sw;
//input wire Inn;
output [6:0] Outt;
output reg [5:0] LED;
output reg [7:1] AN;

reg [6:0] Out;

//Logic Description
always@(*)
begin

AN[0] = 1'b0;
AN[1] = 1'b1;
AN[2] = 1'b1;
AN[3] = 1'b1;
AN[4] = 1'b1;
AN[5] = 1'b1;
AN[6] = 1'b1;
AN[7] = 1'b1;

// a is LSB in Seven Segment Display
// g is MSB in Seven Segment Display
    case(sw)
    4'b0000 : Out = 7'b0111111;
    4'b0001 : Out = 7'b0000110;
    4'b0010 : Out = 7'b1011011;
    4'b0011 : Out = 7'b1001111;
    4'b0100 : Out = 7'b1100110;
    4'b0101 : Out = 7'b1101101;
    4'b0110 : Out = 7'b1111101;
    4'b0111 : Out = 7'b0000111;
    4'b1000 : Out = 7'b1111111;
    4'b1001 : Out = 7'b1101111;
    
    default : Out = 7'bzzzzzzz;
    endcase
    
    LED = sw;

// Logic for 1 LED
//    case(Inn)
//    1'b0 : LED16_B = 1'b0;
//    1'b1 : LED16_B = 1'b1;
//    default : LED16_B = 1'bz;
//    endcase
    

end

assign Outt = ~(Out);
//assign Outt = {~Out[6]~Out[5],~Out[4],~Out[3],~Out[2],~Out[1],~Out[0]};
endmodule
