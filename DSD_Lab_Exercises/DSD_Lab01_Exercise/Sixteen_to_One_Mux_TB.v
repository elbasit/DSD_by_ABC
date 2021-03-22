`timescale 1ns / 1ps

module Sixteen_to_One_Mux_TB();
wire Out;
reg S0,S1,S2,S3; 
reg [15:0] In;

initial
begin
    #00 S0 = 1'b1; S1 = 1'b0; S2 = 1'b0; S3 = 1'b0; In = 16'b0000000000000000;
     #10 S0 = 1'b1; S1 = 1'b1; S2 = 1'b1; S3 = 1'b0; In = 16'b0000000010000000;

    #10 $finish;
end

initial
$monitor($time,"ns, S = %b, Out = %b", {S0,S1,S2,S3} ,Out);

Sixteen_to_One_Mux stom(Out,S0,S1,S2,S3,In);
endmodule
