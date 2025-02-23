module onescompliment(
    input [3:0] A, // Four bits of A: 3, 2, 1, 0
    input [3:0] B, // Same for B
    output [3:0] sum // and for Y
);
    
    
    wire carry0;
    wire carry1;
    wire carry2;
    wire carry3;
    wire [3:0] intersum;
    
    //firstaddittion
    
    fulladder A0(
    .A(A[0]),
    .B(~B[0]),
    .Y(intersum[0]),
    .C(1'b0),
    .Cout(carry0)
    );
    
    fulladder A1(
    .A(A[1]),
    .B(~B[1]),
    .Y(intersum[1]),
    .C(carry0),
    .Cout(carry1)
    );
    
    fulladder A2(
    .A(A[2]),
    .B(~B[2]),
    .Y(intersum[2]),
    .C(carry1),
    .Cout(carry2)
    );
    
    fulladder A3(
    .A(A[3]),
    .B(~B[3]),
    .Y(intersum[3]),
    .C(carry2),
    .Cout(carry3)
    );
    
    //second addition 
    
    wire [3:0] carrysum;
    wire carry000;
    wire carry001;
    wire carry010;
    wire carry011;
    
    fulladder A4(
    .A(intersum[0]),
    .B(carry3),
    .Y(sum[0]),
    .C(1'b0),
    .Cout(carry000)
    );
    
    fulladder A5(
    .A(intersum[1]),
    .B(1'b0),
    .Y(sum[1]),
    .C(carry000),
    .Cout(carry001)
    );
    
    fulladder A6(
    .A(intersum[2]),
    .B(1'b0),
    .Y(sum[2]),
    .C(carry001),
    .Cout(carry010)
    );
    
    fulladder A7(
    .A(intersum[3]),
    .B(1'b0),
    .Y(sum[3]),
    .C(carry010),
    .Cout(carry011)
    );


endmodule
