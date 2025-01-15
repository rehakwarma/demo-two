module mux4x1_gate_level(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output y
);

    wire n1, n2, n3, n4, n5, n6;

    not (n1, s1);
    not (n2, s0);
    and (n3, a, n1, n2);
    and (n4, b, n1, s0);
    and (n5, c, s1, n2);
    and (n6, d, s1, s0);
    or (y, n3, n4, n5, n6);

endmodule
