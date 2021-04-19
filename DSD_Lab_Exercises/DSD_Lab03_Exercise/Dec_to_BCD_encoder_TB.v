`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-03 task 01
// BCD to Decimal Rncoder Test Bench
///////////////////////////////////////////////////////
module Dec_to_BCD_encoder_TB();
reg [8:0] SW;
wire [3:0] Out;

initial
begin
#00 SW = 1;
#10 SW = 2;
#10 SW = 3;
#10 SW = 5;
#10 SW = 7;
#10 SW = 9;
end

initial
begin
$display("Author : Abdul Basit | 041-18-0014 \n");
$monitor($time, " ns -- SW = %d, Out = %b ", SW, Out);
end

// instantiating the module
Dec_to_BCD_encoder inst0(Out,SW);

endmodule