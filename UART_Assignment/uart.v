`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD project
// Code : UART 
///////////////////////////////////////////////////////

module uart(input wire [7:0] din,
	    input wire wr_en,
	    input wire clk_50m,
	    output wire tx,
	    output wire tx_busy,
	    input wire rx,
	    output wire rdy,
	    input wire rdy_clr,
	    output wire [7:0] dout);

wire rxclk_en, txclk_en;

baud_rate uart_baud(.clk_50m(clk_50m),
			.rxclk_en(rxclk_en),
			.txclk_en(txclk_en));
uart_trx uart_tx(.din(din),
		    .wr_en(wr_en),
		    .clk_50m(clk_50m),
		    .clken(txclk_en),
		    .tx(tx),
		    .tx_busy(tx_busy));
		    
uart_rx uart_rx1(.rx(rx),
		 .rdy(rdy),
		 .rdy_clr(rdy_clr),
		 .clk_50m(clk_50m),
		 .clken(rxclk_en),
		 .data(dout));

endmodule
