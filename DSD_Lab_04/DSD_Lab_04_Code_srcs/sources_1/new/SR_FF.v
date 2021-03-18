`timescale 1ns / 1ps

// Abdul Basit | 041-18-0014
// This program is for SR_Flip_Flop
module SR_FF(q,clk,s,r,reset,en);
input clk, s,r, reset, en;
output reg q;

// reset is asynchronous
always@(posedge clk, posedge reset)
begin
    if (reset)
        q <= 1'b0;
    
    else if(en == 0)
        q <= q;
        
    else if(s == 0 && r == 0)
        q <= q;
        
    else if(s == 0 && r == 1)
        q <= 0;
                
    else if(s == 1 && r == 0)
        q <= q;
                                              
    else if(s == 1 && r == 1)
        q <= 1'bx;
    
    else
        q <= q;
end

endmodule

