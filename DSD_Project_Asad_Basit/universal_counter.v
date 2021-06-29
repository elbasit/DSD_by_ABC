`timescale 1ns / 1ps
////////////////////////////////////////
// Name : Abdul Basit and Asad Majeed
// CMS: 041-18-0014 | 041-18-0037
// Subjet : DSD Lab project
// Title: Universal counter code
////////////////////////////////////////

module universal_counter(
    input clk,reset,
    input up,
    output [3:0] count
    );
    
    reg [3:0] counter;
    
    always @(posedge clk or posedge reset)
    begin
    if(reset)
     counter <= 4'd0;
    else if(up)
     counter <= counter + 4'd1;
    else if(~up)
        counter <= counter - 4'd1;
    end

    assign count = counter;
    
endmodule