module full_adder(x, y, cin, sum, cout);
input x, y, cin;
output sum, cout;
wire w1, w2, w3;

half_adder ha1(x, y, w1, w2);
half_adder ha2(w1, cin, sum, w3);
or u3(cout, w2, w3);

endmodule