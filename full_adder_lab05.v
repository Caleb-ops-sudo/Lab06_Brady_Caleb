module fulladder(
    input A,B,C,
    output Y,Cout
   );
   
   assign Y = 
   (~A & ~B & C) | (~A & B & ~C) | (A & B & C) | (A & ~B & ~C) ;
   
   assign Cout = 
   (A & B) | (B & C) | (A & C);
   
endmodule
