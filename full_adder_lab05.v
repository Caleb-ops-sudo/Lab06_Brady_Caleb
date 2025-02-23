module fulladder(
    input A,B,C,
    output Y,O
   );
   
   assign Y = 
   (~A & ~B & C) | (~A & B & ~C) | (A & B & C) | (A & ~B & ~C) ;
   
   assign O = 
   (A & B) | (B & C) | (A & C);
   
endmodule
