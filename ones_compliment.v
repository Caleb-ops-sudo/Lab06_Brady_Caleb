module onescompliment(
    input [3:0] A, // Four bits of A: 3, 2, 1, 0
    input [3:0] B, // Same for B
    output [3:0] Y // and for Y
);
    
    wire around;
    wire [3:0] carry ;
    wire [3:0] second_carry;
    wire [3:0] realcarries ;
    wire [3:0] intersum;
    
    //firstaddittion
    
    full_adder lsb_1(
    .A(A[0]),
    .B(~B[0]),
    .Y(intersum[0]),
    .Cin(1'b0),
    .Cout(carry[0])
    );
    
    full_adder msb_1(
    .A(A[1]),
    .B(~B[1]),
    .Y(intersum[1]),
    .Cin(carry[0]),
    .Cout(carry[1])
    );
    
    full_adder lsb_2(
    .A(A[2]),
    .B(~B[2]),
    .Y(intersum[2]),
    .Cin(carry[1]),
    .Cout(carry[2])
    );
    
    full_adder msb_2(
    .A(A[3]),
    .B(~B[3]),
    .Y(intersum[3]),
    .Cin(carry[2]),
    .Cout(around)
    );
    
    //second addition 
    
    full_adder lsb_a(
    .A(intersum[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(around),
    .Cout(second_carry[0])
    );
    
    full_adder msb_b(
    .A(intersum[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(second_carry[0]),
    .Cout(second_carry[1])
    );
    
     full_adder lsb_c(
    .A(intersum[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(second_carry[1]),
    .Cout(second_carry[2])
    );
    
    full_adder lsb_d(
    .A(intersum[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(second_carry[2])
    );




endmodule
