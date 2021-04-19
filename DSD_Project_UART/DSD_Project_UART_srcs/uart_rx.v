`timescale 1ns / 1ps
////////////////////////////////////////////////
// Name : Abdul Basit
// CMS: 041-18-0014
// DSD Project URAT_RX 
////////////////////////////////////////////////

module uart_rx#(parameter DBIT = 4'd8, SB_TICK = 5'd16)
//parameter DBIT = 8, # data bits 
// SB-TICK = 16 # ticks for stop bits 5 1
// (clk, reset,rx, s_tick, rx_done_tick, dout);
//(
//input wire clk, reset;
//input wire rx, s_tick;
//output reg rx_done_tick;
//output wire [7:0] dout;
//);
//
(
input wire clk, reset,
input wire rx, s_tick,
output reg rx_done_tick,
output wire [7:0] dout
);

// symbolic state declaration
localparam [1 : 0]
    idle = 2'b00,
    start = 2'b01,
    data = 2'b10,
    stop = 2'b11;
     
// signal declaration 
reg [1: 0] state_reg ,state_next ; 
reg [3:0] s_reg , s_next ; 
reg [2:0] n_reg , n_next ; 
reg [7:0] b_reg , b_next ;
// bod,v // FSMD state & data registers

always @( posedge clk , posedge reset)
   if (reset)
    begin
        state_reg <= idle;
        s_reg <= 0;
        n_reg <= 0; 
        b_reg <= 0;
    end 

   else
       begin
       state_reg <= state_next;
       s_reg <= s_next;
       n_reg <= n_next; 
       b_reg <= b_next;
   end

// FSMD next-state Logic
always @(*)
begin
    state_next = state_reg ; 
    rx_done_tick = 1'b0;
    s_next = s_reg;
    n_next = n_reg;
    b_next = b_reg; 
    
case (state_reg) 
idle : 
    if (~rx)
        begin
            state_next = start;
            s_next = 0;
        end
    
start : 
    if (s_tick)
        if (s_reg==7) 
            begin 
                state_next = data; 
                s_next = 0; 
                n_next = 0; 
            end        
    else 
        s_next = s_reg + 1; 
        
        
data :
    if (s_tick)
    begin
        if (s_reg==15)
            begin 
                    s_next = 0; 
                    b_next = {rx , b_reg [7 : 1] }; 
                    if (n_reg==(DBIT-1))
                        state_next = stop ;
            end            
                        
                    else 
                        n_next = n_reg + 1; 
    end 
                       
       else
        s_next = s_reg + 1; 
      
stop: 
                        if (s_tick) 
                            if (s_reg==(SB_TICK-1)) 
                                begin 
                                    state_next = idle; 
                                    rx_done_tick =1'b1;
                                  end 
                              else
                              s_next = s_reg + 1; 
endcase 
end 
// output 
  assign dout = b_reg; 

endmodule