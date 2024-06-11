module overflowEx2(A1, A2, A3, A4, B1, B2, B3, B4, S1, S2, S3, S4, C1, C5, Overflow);

input A1, A2, A3, A4;
input B1, B2, B3, B4;
input C1;

output S1, S2, S3, S4;
output C5;
output Overflow;

wire nB1,nB2, nB3, nB4; 
wire C2, C3, C4;

not (nB1, B1);
not (nB2, B2);
not (nB3, B3);
not (nB4, B4);

full_adder FA0 (A1, nB1, C1, S1, C2);
full_adder FA1 (A2, nB2, C2, S2, C3);
full_adder FA2 (A3, nB3, C3, S3, C4);
full_adder FA3 (A4, nB4, C4, S4, C5);

xor (Overflow, C4, C5);

endmodule 