module half_adder(a,b,s,c);
input a,b;
output s,c;

and u1 (c,a,b);
xor u2 (s,a,b);

endmodule