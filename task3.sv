module FixedPointMultiplier #(parameter n1 = 8, parameter m1 = 4, 
                              parameter n2 = 8, parameter m2 = 4)
(
    input logic [(n1 + m1) - 1:0] A,
    input logic [(n2 + m2) - 1:0] B,
    output logic [(n1 + n2 + m1 + m2) - 1:0] mul
);

    assign mul = A * B;

endmodule
