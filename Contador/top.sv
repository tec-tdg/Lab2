module top(
	input logic clk_i, rst_i, ena_i,
	//input logic [3:0] dec_i,
	output logic[6:0] dec_o);
	
	logic[3:0] cont_o;
	contador#3(clk_i, rst_i, ena_i, cont_o);
	//cont_o <= dec_i;
	Decodificador(cont_o, dec_o);
	
endmodule
