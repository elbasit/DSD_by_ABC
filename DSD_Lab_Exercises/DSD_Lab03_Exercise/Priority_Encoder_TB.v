`timescale 1ns / 1ps
///////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-03 task 02
// Priority_Encoder Test Bench
///////////////////////////////////////
module Priority_Encoder_TB();
reg [8:0] SW;
wire [3:0] Out;

initial
begin
#00 SW = 9'b000000001;
#10 SW = 9'b000100000;
#10 SW = 9'b111000000;
#10 SW = 9'b100000001;
#10 SW = 9'b011010011;
#10 SW = 9'b000010000;
end

initial
begin
$display("Author : Abdul Basit | 041-18-0014 \n");
$monitor($time, " ns -- SW = %b, Out = %b ", {SW}, Out);
end

// instantiating the module
Priority_Encoder inst0(Out,SW);
endmodule
