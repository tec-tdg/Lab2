module Halfadder(sum, carry, a, b); 
input logic a, b; 
output logic sum, carry; 
xor sum1(sum, a, b); 
and carry1(carry, a, b); 
endmodule



module Fulladder(fsum, fcarry_out, a, b, c); 
input logic a, b, c; 
output logic fsum, fcarry_out; 

logic half_sum_1, half_carry_1, half_carry_2; 
Halfadder HA1(half_sum_1, half_carry_1, a, b); 
Halfadder HA2(fsum, half_carry_2, half_sum_1, c); 
or or1(fcarry_out, half_carry_2, half_carry_1);
 
endmodule
