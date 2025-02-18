module halfsub(
    input A,B,
    output Y,W
   );
   
   assign Y = 
    (A & ~B) | (~A & B);
   
   assign W = 
   (~A & B);
   
endmodule
    






