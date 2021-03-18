`timescale 1ns / 1ps
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-01 task 02
///////////////////////////////////////////////////////

module Four_to_One_Mux(output Out, input S0,S1, [3:0] In);
wire [3:0] wr;
wire invS0, invS1;

not not1(invS0,S0);
not not2(invS1,S1);

or or1(Out, wr[0], wr[1], wr[2], wr[3]);
and and1(wr[3],S1,S0,In[3]);
and and2(wr[2],S1,invS0,In[2]);
and and3(wr[1],S0,invS1,In[1]);
and and4(wr[0],invS0,invS1,In[0]);

endmodule

