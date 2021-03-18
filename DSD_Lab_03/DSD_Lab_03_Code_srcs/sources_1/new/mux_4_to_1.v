`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 01:21:23 PM
// Design Name: 
// Module Name: mux_4_to_1
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



module mux_4_to_1(input wire [3:0] D,
                        input wire s0,
                        input wire s1,
                        output reg out);

always@(s0,s1,D[0],D[1],D[2],D[3])
begin
    if(s1 == 1'b0 && s0 == 1'b0)
        out = D[0];
    else if(s1 == 1'b0 && s0 == 1'b1)
        out = D[1];    
    else if(s1 == 1'b1 && s0 == 1'b0)
         out = D[2];
     else (s1 == 1'b1 && s0 == 1'b1)
          out = D[3];
end                      

endmodule
