module FixedPointAdder #(parameter n1 = 5, parameter m1 = 2,
                         parameter n2 = 5, parameter m2 = 2)
(
    input logic [(n1 + m1) - 1:0] A,
    input logic [(n2 + m2) - 1:0] B,
    output logic [(RESULT_N + M) - 1:0] sum
);
    localparam RESULT_N = (n1 > n2 ? n1 : n2) + 1;
    localparam M = (m1 > m2 ? m1 : m2);

    logic [(RESULT_N + M) - 1:0] A_aligned, B_aligned;

    assign A_aligned = A << (M - m1);
    assign B_aligned = B << (M - m2);
    assign sum = A_aligned + B_aligned;

endmodule
