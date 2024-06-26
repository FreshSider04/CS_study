module converter(a, b, c, d, e, ten_seg, one_seg);
input a,b,c,d,e;
output [3:0] ten_seg;
output [3:0] one_seg;

assign ten_seg[3] = 0;
assign ten_seg[2] = 0;
assign ten_seg[1] = (a&c)|(a&b);
assign ten_seg[0] = (a&~b&~c)|(~a&b&c)|(b&c&d)|(~a&b&d);

assign one_seg[3] = (a&~b&~c&d)|(a&b&c&~d)|(~a&b&~d&~d);
assign one_seg[2] = (a&~c&~d)|(a&b&~c)|(~a&~b&c)|(~a&c&d);
assign one_seg[1] = (~a&~b&d)|(~b&c&d)|(a&~b&~c&~d)|(~a&b&c&~d)|(a&b&~c&d);
assign one_seg[0] = e;

endmodule





