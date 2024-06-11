module mux2to1(a,i0,i1,z);
input a, i0,i1;
output z;

assign z = (~a&i0)|(a&i1);

endmodule