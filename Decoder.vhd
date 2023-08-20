
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port ( I : in  STD_LOGIC_VECTOR (4 downto 0);
	        E: in STD_LOGIC; 
           OP : out  STD_LOGIC_VECTOR (31 downto 0));
end Decoder;

architecture Behavioral of Decoder is

begin
OP <= (OTHERS => 'Z') WHEN E= '0' ELSE 
"00000000000000000000000000000001" WHEN I= "00000" ELSE 
"00000000000000000000000000000010" WHEN I="00001" Else
"00000000000000000000000000000100" WHEN I="00010" ELse
"00000000000000000000000000001000" WHEN I="00011" Else
"00000000000000000000000000010000" WHEN I="00100" Else
"00000000000000000000000000100000" WHEN I="00101" Else
"00000000000000000000000001000000" WHEN I="00110" Else
"00000000000000000000000010000000" WHEN I="00111" Else
"00000000000000000000000100000000" WHEN I="01000" Else
"00000000000000000000001000000000" WHEN I="01001" Else
"00000000000000000000010000000000" WHEN I="01010" Else
"00000000000000000000100000000000" WHEN I="01011" Else
"00000000000000000001000000000000" WHEN I="01100" Else
"00000000000000000010000000000000" WHEN I="01101" Else
"00000000000000000100000000000000" WHEN I="01110" Else
"00000000000000001000000000000000" WHEN I="01111" Else
"00000000000000010000000000000000" WHEN I="10000" Else
"00000000000000100000000000000000" WHEN I="10001" Else
"00000000000001000000000000000000" WHEN I="10010" Else
"00000000000010000000000000000000" WHEN I="10011" Else
"00000000000100000000000000000000" WHEN I="10100" Else
"00000000001000000000000000000000" WHEN I="10101" Else
"00000000010000000000000000000000" WHEN I="10110" Else
"00000000100000000000000000000000" WHEN I="10111" Else
"00000001000000000000000000000000" WHEN I="11000" Else
"00000010000000000000000000000000" WHEN I="11001" Else
"00000100000000000000000000000000" WHEN I="11010" Else
"00001000000000000000000000000000" WHEN I="11011" Else
"00010000000000000000000000000000" WHEN I="11100" Else
"00100000000000000000000000000000" WHEN I="11101" Else
"01000000000000000000000000000000" WHEN I="11110" Else
"10000000000000000000000000000000" WHEN I="11111" Else
(OTHERS => 'Z');
 


end Behavioral;

