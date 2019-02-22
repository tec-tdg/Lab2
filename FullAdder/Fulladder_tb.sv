module Fulladder_tb();

logic a,b,c_in, sum, c_out;

//instanciate modules
//Fulladder(fsum, fcarry_out, a, b, c); 

Fulladder dut(sum,c_out,a,b,c_in);

initial begin
	a=0; b=0; c_in=0; #10;
	assert(sum===0 && c_out===0 ) $display ("000 ok"); else $error("000 failed");
	a=0; b=0; c_in=1; #10;
	assert(sum===1 && c_out===0 ) $display ("001 ok"); else $error("001 failed");
	a=0; b=1; c_in=0; #10;
	assert(sum===1 && c_out===0 ) $display ("010 ok"); else $error("010 failed");
	a=0; b=1; c_in=1; #10;
	assert(sum===0 && c_out===1 ) $display ("011 ok"); else $error("011 failed");
	a=1; b=0; c_in=0; #10;
	assert(sum===1 && c_out===0 ) $display ("100 ok"); else $error("100 failed");
	a=1; b=0; c_in=1; #10;
	assert(sum===0 && c_out===1 ) $display ("101 ok"); else $error("101 failed");
	a=1; b=1; c_in=0; #10;
	assert(sum===0 && c_out===1 ) $display ("110 ok"); else $error("110 failed");
	a=1; b=1; c_in=1; #10;
	assert(sum===1 && c_out===1 ) $display ("111 ok"); else $error("111 failed");
end

endmodule
