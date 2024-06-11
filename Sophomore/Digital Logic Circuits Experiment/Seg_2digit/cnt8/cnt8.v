module cnt8(clock_c, outclock_c);

input clock_c;
output outclock_c;

reg [2:0] count;
reg wclock;

always@(posedge clock_c)
	count = count + 3'b001;
	
always@(count)
begin
wclock = 1'b0;
if (count >= 3'b100)
	wclock = ~wclock;
else
	wclock = wclock;

end

assign outclock_c = wclock;

endmodule 