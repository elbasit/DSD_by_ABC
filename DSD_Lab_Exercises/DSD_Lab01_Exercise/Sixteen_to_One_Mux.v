`timescale 1ns / 1ps                             
///////////////////////////////////////////////////////
// Author : Abdul Basit
// CMS : 041-18-0014
// Title : DSD Lab-01 task 02
///////////////////////////////////////////////////////


//This is a sixteen to one bit MUX in gate level Modeling. The Lab required Hirerical modeling.
module Sixteen_to_One_Mux(output Out, input S0,S1,S2,S3, [15:0] In);
wire [23:0] wr;
wire invS0, invS1,invS2,invS3;

not not1(invS0,S0);
not not2(invS1,S1);
not not3(invS2,S2);
not not4(invS3,S3);

or or0(wr[20], wr[0], wr[1], wr[2], wr[3]);
and and1(wr[3],S1,S0,invS2,invS3,In[3]);
and and2(wr[2],invS0,S1,invS2,invS3, In[2]);
and and3(wr[1],S0,invS1,invS2,invS3,In[1]);
and and4(wr[0],invS0,invS1,invS2,invS3, In[0]);

or or1(wr[21], wr[4], wr[5], wr[6], wr[7]);
and and5(wr[7],S1,S0,S2,invS3,In[7]);
and and6(wr[6],invS0,S1,S2,invS3, In[6]);
and and7(wr[5],S0,invS1,S2,invS3,In[5]);
and and8(wr[4],invS0,invS1,S2,invS3, In[4]);

or or2(wr[22], wr[8], wr[9], wr[10], wr[11]);
and and9(wr[11],S1,S0,invS2,S3,In[11]);
and and10(wr[10],invS0,S1,invS2,S3, In[10]);
and an11(wr[9],S0,invS1,invS2,S3,In[9]);
and and12(wr[8],invS0,invS1,invS2,S3, In[8]);

or or3(wr[23], wr[12], wr[13], wr[14], wr[15]);
and and13(wr[15],S1,S0,S2,S3,In[15]);
and and14(wr[14],invS0,S1,S2,S3, In[14]);
and and15(wr[13],S0,invS1,S2,S3,In[13]);
and and16(wr[12],invS0,invS1,S2,S3, In[12]);

or or4(Out, wr[16], wr[17], wr[18], wr[19]);
and and17(wr[19],S2,S3,wr[23]);
and and18(wr[18],invS2,S3,wr[22]);
and and19(wr[17],S2,invS3,wr[21]);
and and20(wr[16],invS2,invS3,wr[20]);


endmodule