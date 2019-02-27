module contador_tb();

	logic clk, rst, ena;
	//logic [1:0] q1;
	//logic [3:0] q2;
	 q4: std_ulogic_vector(3 downto 0) ;
	//logic [5:0] q3;
	//logic [9:0] q5;
	

	//contador#2 dut1(clk, rst, ena, q1);
	//contador#4 dut2(clk, rst, ena, q2);
	//contador#6 dut3(clk, rst, ena, q3);
	contador#3 dut4(clk, rst, ena, q4);
	//contador#10 dut5(clk, rst, ena, q5);
	 display: std_ulogic_vector(6 downto 0) ;
	Decodificador#1 dut5(q4,display);
	
	
	initial begin
	clk = 0; rst=1;
	#10;
	rst =0; ena=1;
	

end
	
	always
	#10 clk = ~clk;


	
	
endmodule


