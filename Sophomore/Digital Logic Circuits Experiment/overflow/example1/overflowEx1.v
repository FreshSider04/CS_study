module overflowEx1(A0, A1, A2, A3, B0, B1, B2, B3, S0, S1, S2, S3, C4, Overflow, p);

input A0, A1, A2, A3;
input B0, B1, B2, B3;

assign C0 = 0;

output S0, S1, S2, S3;
output C4;
output Overflow;
output p;

assign p = 1'b0;

wire C1, C2, C3;
wire NotA3, NotB3, NotS3;
wire nA3nB3S3, A3B3nS3;


full_adder FA0 (A0, B0, C0, S0, C1);
full_adder FA1 (A1, B1, C1, S1, C2);
full_adder FA2 (A2, B2, C2, S2, C3);
full_adder FA3 (A3, B3, C3, S3, C4);



not (NotA3, A3);
not (NotB3, B3);
not (NotS3, S3);

and (nA3nB3S3, NotA3, NotB3, S3);
and (A3B3nS3, A3, B3, NotS3);
or(Overflow, nA3nB3S3, A3B3nS3);

endmodule 