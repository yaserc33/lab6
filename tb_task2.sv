`timescale 1ns / 1ps
   
   module tb_FixedPointAdder;

   parameter n1 = 3, m1 = 5;
   parameter n2 = 5, m2 = 3;

    logic [(n1 + m1) - 1:0] A;
    logic [(n2 + m2) - 1:0] B;
    logic [(RESULT_N + RESULT_M) - 1:0] sum;

    localparam RESULT_N = (n1 > n2 ? n1 : n2) + 1;
    localparam RESULT_M = (m1 > m2 ? m1 : m2);

    FixedPointAdder #(n1, m1, n2, m2) uut (
        .A(A),
        .B(B),
        .sum(sum)
    );



    initial begin
    
    #10;
    A= 'b01110111;
    B= 'b00101010;
    


    #10;
    $finish;
    end
endmodule
