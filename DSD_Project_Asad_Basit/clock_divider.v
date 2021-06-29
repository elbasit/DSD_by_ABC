`timescale 1ns / 1ps
////////////////////////////////////////
// Name : Abdul Basit and Asad Majeed
// CMS: 041-18-0014 | 041-18-0037
// Subjet : DSD Lab project
// Title: Clock divider code
////////////////////////////////////////

module clock_divider(clkin, clkout);
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
    counter <= 0;   // non-blocking assignment 
    clkout <= ~ clkout; end
    else
    counter <= counter + 1;
end

endmodule 