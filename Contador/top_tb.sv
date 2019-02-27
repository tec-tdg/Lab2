module top_tb();
	logic clk_i, rst_i, ena_i;
	logic[3:0] cont_o, dec_i;
	logic[6:0] dec_o;
	
	top dut(clk_i, rst_i, dec_o);
	initial begin 
		clk_i = 0; rst_i =0; ena_i =0; dec_i = 3'b000; 
		#30;
		rst_i =1; 
		#10;
		rst_i =0; ena_i =1;
	end
	
	always
	#10 clk_i = ~clk_i;
endmodule
		