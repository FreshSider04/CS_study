module fourBitParallelAdder(A, B, clock, data_out, com, p);

input [3:0] A, B;
input clock;

output [3:0] com;
output [6:0] data_out;

output p; assign p = 1'b0;

wire [3:0] s;
wire v,cout;
wire [3:0] ten_seg, one_seg;

parallel_adder PA (A[3], A[2], A[1], A[0], B[3], B[2], B[1], B[0], s[0], s[1], s[2], s[3], cout, v);
converter CV (cout, s[0], s[1], s[2], s[3], ten_seg, one_seg);
seg_2digit DS (ten_seg, one_seg, clock, com, data_out);


endmodule 





