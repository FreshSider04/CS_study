module cnt(clk,outclk);
input clk;
output outclk;

wire [3:0] wclk;

cnt8 U0(clk,wclk[0]);
cnt8 U1(wclk[0],wclk[1]);
cnt8 U2(wclk[1],wclk[2]);
cnt8 U3(wclk[2],wclk[3]);
cnt8 U4(wclk[3],outclk);

endmodule 
