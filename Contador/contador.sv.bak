module contador #(parameter N = 4)
(
	input logic clk_i, rst_i, ena_i,
   output logic [N-1:0] q_o
);
    always_ff @(posedge clk_i, posedge rst_i)
             if(rst_i) q_o <= 0;
        else if(ena_i) q_o <= q_o + 1;

endmodule
