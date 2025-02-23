module twoscompliment(
    input [7:0] A, // SW
    output [7:0] Y // LED
);

    wire [7:0] ones_comp;
    wire[6:0] carrynum;
  
    assign ones_comp = ~A;
    
    
    fulladder FAD0(
    .A(ones_comp[0]),
    .B(1'b1),
    .C(1'b0),
    .Y(Y[0]),
    .Cout(carrynum[0])
    );
    
    fulladder FAD1(
    .A(ones_comp[1]),
    .B(1'b0),
    .C(carrynum[0]),
    .Y(Y[1]),
    .Cout(carrynum[1])
    );
    
    fulladder FAD2(
    .A(ones_comp[2]),
    .B(1'b0),
    .C(carrynum[1]),
    .Y(Y[2]),
    .Cout(carrynum[2])
    );
    
    fulladder FAD3(
    .A(ones_comp[3]),
    .B(1'b0),
    .C(carrynum[2]),
    .Y(Y[3]),
    .Cout(carrynum[3])
    );
    
    fulladder FAD4(
    .A(ones_comp[4]),
    .B(1'b0),
    .C(carrynum[3]),
    .Y(Y[4]),
    .Cout(carrynum[4])
    );
    
    fulladder FAD5(
    .A(ones_comp[5]),
    .B(1'b0),
    .C(carrynum[4]),
    .Y(Y[5]),
    .Cout(carrynum[5])
    );
    
    fulladder FAD6(
    .A(ones_comp[6]),
    .B(1'b0),
    .C(carrynum[5]),
    .Y(Y[6]),
    .Cout(carrynum[6])
    );
    
    fulladder FAD7(
    .A(ones_comp[7]),
    .B(1'b0),
    .C(carrynum[6]),
    .Y(Y[7]),
    .Cout()
    );

    


endmodule
