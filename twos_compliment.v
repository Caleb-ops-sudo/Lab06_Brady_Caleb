module twosscompliment(
    input [7:0] A, // SW
    output [7:0] Y // LED
);

    wire [7:0] ones_comp;
    wire[7:0] sum;
    wire carry_in = 1'b1;
    wire carry_out;
    
    assign ones_comp = ~A;
    
    full_adder_8bitFA (
        .A(ones_comp),
        .B(8'b00000001),
        .Cin(carry_in),
        .Sum(Y),
        .Cout(carry_out)
    );

    


endmodule
