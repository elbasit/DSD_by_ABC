`timescale 1ns / 1ps

// Abdul Basit | 041-18-0014
module Priority_Encoder(Out, SW);
output reg [3:0] Out;
input  wire [9:0] SW;

always@(*)
begin

    casex(SW)
    10'b0000000000 : Out = 4'b0000;
    10'b0000000001 : Out = 4'b0001;
    10'b000000001x : Out = 4'b0010;
    10'b00000001xx : Out = 4'b0011;
    10'b0000001xxx : Out = 4'b0100;
    10'b000001xxxx : Out = 4'b0101;
    10'b00001xxxxx : Out = 4'b0110;
    10'b0001xxxxxx : Out = 4'b0111;
    10'b001xxxxxxx : Out = 4'b1000;
    10'b01xxxxxxxx : Out = 4'b1001;
    10'b1xxxxxxxxx : Out = 4'b1010;
    
    default : Out = 4'bzzzz;
    endcase
end    

endmodule


//module TB;
// wire [3:0] Out;
//  reg [9:0] SW;

// Priority_Encoder inst0(Out, SW);

//initial begin
//SW = 1;
//#10 SW = 10'b000000_0010;
//end 
//endmodule 
