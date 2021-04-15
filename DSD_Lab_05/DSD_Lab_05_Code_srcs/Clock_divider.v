`timescale 1ns / 1ps
////////////////////////////////////////
// Name : Abdul Basit
// CMS: 041-18-0014
// DSD Lab-05 Clock Divider Simulation
////////////////////////////////////////

module Clock_divider(clkin, clkout);
input clkin;
output reg clkout;

reg [31:0] counter;

initial
begin 
clkout = 1'b0; // blocking assignment 
counter = 0;
end

always@(posedge clkin)
begin
    if (counter >= 100000000)begin
    counter <= 1'b0;   // non-blocking assignment 
    clkout <= ~ clkout; end
    else
    counter <= counter + 1;
end

endmodule 

//module TB;
//reg clkin;
//wire clkout;

//parameter T = 10; // 10 ns

//initial
//clkin = 0;
//always 
//#(T/2) clkin = ~ clkin;

//Clock_divider inst0(clkin, clkout);

//endmodule

