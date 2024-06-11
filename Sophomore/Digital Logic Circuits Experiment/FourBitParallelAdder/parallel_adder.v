module parallel_adder(A3, A2, A1, A0, B3, B2, B1, B0, S3, S2, S1, S0, C4, overflow);

input A3, A2, A1, A0;
input B3, B2, B1, B0;

output S3, S2, S1, S0, C4, overflow;
wire C3, C2, C1, C0, Wire1, Wire2;

assign C0 = 0;

full_adder FA1 (A0,B0,C0,S0,C1);
full_adder FA2 (A1,B1,C1,S1,C2);
full_adder FA3 (A2,B2,C2,S2,C3);
full_adder FA4 (A3,B3,C3,S3,C4);

and andGate1 (Wire1,~A3, ~B3, S3);
and andGate2 (Wire2, A3, B3, ~S3);
or orGate1 (overflow, Wire1, Wire2);

endmodule