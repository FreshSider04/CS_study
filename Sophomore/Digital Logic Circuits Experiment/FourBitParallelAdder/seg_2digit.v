module seg_2digit(a, b, clock, com, data_out);
input [3:0] a, b;
input clock;
output [3:0] com;
output [6:0] data_out;

wire [6:0] data_w1, data_w2;
wire wclock;

cnt C1(clock, wclock);

segment7 LSD(a,data_w1[0], data_w1[1], data_w1[2], data_w1[3], data_w1[4], data_w1[5], data_w1[6]);
segment7 MSD(b,data_w2[0], data_w2[1], data_w2[2], data_w2[3], data_w2[4], data_w2[5], data_w2[6]);

mux2to1 M1 (wclock,data_w1[0],data_w2[0],data_out[0]);
mux2to1 M2 (wclock,data_w1[1],data_w2[1],data_out[1]);
mux2to1 M3 (wclock,data_w1[2],data_w2[2],data_out[2]);
mux2to1 M4 (wclock,data_w1[3],data_w2[3],data_out[3]);
mux2to1 M5 (wclock,data_w1[4],data_w2[4],data_out[4]);
mux2to1 M6 (wclock,data_w1[5],data_w2[5],data_out[5]);
mux2to1 M7 (wclock,data_w1[6],data_w2[6],data_out[6]);
mux2to1 M8 (wclock,1'b1,1'b0,com[3]);
mux2to1 M9 (wclock,1'b0,1'b1,com[2]);

assign com[1:0] = 2'b00;

endmodule