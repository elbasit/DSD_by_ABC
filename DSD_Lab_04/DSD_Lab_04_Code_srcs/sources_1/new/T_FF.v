`timescale 1ns / 1ps

// Abdul Basit | 041-18-0014
// This program is for JK_Flip_Flop
module T_FF(q,clk,j,k,reset,en);
input clk, j,k, reset, en;
output reg q;

// reset is asynchronous
always@(posedge clk, posedge reset)
begin
    if (reset)
        q <= 1'b0;
    
    else if(en == 0)
        q <= q;
        
    else if(j == 0 && k == 0)
        q <= q;
        
    else if(j == 0 && k == 1)
        q <= 0;
                
    else if(j == 1 && k == 0)
        q <= q;
                                              
    else if(j == 1 && k == 1)
        q <= ~q;
    
    else
        q <= q;
end

endmodule
