module contador_tb();

	logic clk, rst, ena;
	logic [1:0] q1;
	logic [3:0] q2;
	logic [5:0] q3;
	
	contador#2 dut1(clk, rst, ena, q1);
	contador#4 dut2(clk, rst, ena, q2);
	contador#6 dut3(clk, rst, ena, q3);
	
	initial begin
	clk = 0; rst=1;
	#10;
	rst =0; ena=1;
	end
	
	always
	#10 clk = ~clk;
	
endmodule
