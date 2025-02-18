module top(
    input [9:0]sw,
    output [13:0] led
);

    halfsub half(
    
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .W(led[1])
     );
     
     onescompliment ones(
        .A(sw[5:2]),
        .B(sw[9:6]),
        .Y(led[5:2])
     );
     
    
     
  endmodule