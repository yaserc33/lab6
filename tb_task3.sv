`timescale 1ns / 1ps
module tb_FixedPointMultiplier;

    parameter n1 = 8, m1 = 4;
    parameter n2 = 8, m2 = 4;

    logic [(n1 + m1) - 1:0] A;
    logic [(n2 + m2) - 1:0] B;
    logic [(n1 + n2 + m1 + m2) - 1:0] mul;

    FixedPointMultiplier #(n1, m1, n2, m2) uut (
        .A(A),
        .B(B),
        .mul(mul)
    );

    initial begin

        #10 A = 8'b10011000; // 9.5 in Q4.4
            B = 8'b00100110; // 2.4 in Q4.4
        #10 $finish;
    end
endmodule
