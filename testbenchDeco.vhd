library IEEE; use IEEE.STD_LOGIC_1164.all;

entity testbenchDeco is
end;
architecture sim of testbenchDeco is

component Decodificador
port(
	data: in STD_Logic_Vector(3 downto 0);
	segments: out STD_Logic_Vector(6 downto 0)
);
end component;

signal data: STD_Logic_Vector(3 downto 0);
signal segments: STD_Logic_Vector(6 downto 0);
begin

dut: Decodificador port map(data,segments);

process begin
data <= "0000"; wait for 10 ns;
assert segments="0000001" report "0000 failed.";
data <= "0001"; wait for 10 ns;
assert segments="1001111" report "0001 failed.";
data <= "0010"; wait for 10 ns;
assert segments="0010010" report "0010 failed.";
data <= "0011"; wait for 10 ns;
assert segments="0000110" report "0011 failed.";
data <= "0100"; wait for 10 ns;
assert segments="1001100" report "0100 failed.";

data <= "0101"; wait for 10 ns;
assert segments="0100100" report "0101 failed.";

data <= "0110"; wait for 10 ns;
assert segments="0100000" report "0110 failed.";
data <= "0111"; wait for 10 ns;
assert segments="0001110" report "0111 failed.";


data <= "1000"; wait for 10 ns;
assert segments="0000000" report "1000 failed.";
data <= "1001"; wait for 10 ns;
assert segments="0010010" report "1001 failed.";
data <= "1010"; wait for 10 ns;
assert segments="0001000" report "1010 failed.";
data <= "1011"; wait for 10 ns;
assert segments="1100000" report "1011 failed.";
data <= "1100"; wait for 10 ns;
assert segments="0110001" report "1100 failed.";
data <= "1101"; wait for 10 ns;
assert segments="1000010" report "1101 failed.";
data <= "1110"; wait for 10 ns;
assert segments="0110000" report "1110 failed.";
data <= "1111"; wait for 10 ns;
assert segments="0111000" report "1111 failed.";

wait; 
end process;
end;