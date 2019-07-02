library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Este programa faz o interfaceamento entre o Comparador e o circuito Condicionador.

entity interfaceCC is
port(
	S                                   :  out bit_vector (6 downto 0);
	display_unidade, display_dezena     :  out bit_vector (6 downto 0);
	-- entrada eh A SAIDA do comparador
	entrada , clk    :  in bit
);
end entity;

architecture trabalho of interfaceCC is
begin

process (clk)
	variable cont        : natural range 0 to 15;
	-- divisor de freq para diminuir a freq do FPGA
	variable div_cont    : integer range 0 to 6250000;
	-- saida e saida2 sao variaveis auxiliares para jogar no display pra diferenciar da saida real que sera enviada para o R2R
	variable saida,saida2       : bit_vector (6 downto 0);
begin
if (clk'event and clk='1') then
   case cont is
		-- comecando pela metade!
        when 0 => S <= "1000000"; saida := "0000000"; cont :=cont+1;
        when 1 => case entrada is
							  -- atribuimos o valor enviado de S para atualizar o valor de saida()!
                              when '1' => saida(6) := '1'; S(5)<= '1'; cont := cont+1;
                              when '0' => S(6) <='0'; S(5) <='1'; cont := cont+1;
                              end case;
        when 2 =>  case entrada is
                              when '1' => saida(5) := '1'; S(4)<= '1'; cont :=cont+1;
                              when '0' => S(5) <='0'; S(4) <='1'; cont := cont+1;
                              end case;
        when 3 =>  case entrada is
                              when '1' => saida(4) := '1'; S(3)<= '1'; cont :=cont+1;
                              when '0' => S(4) <='0'; S(3) <='1'; cont := cont+1;
                              end case;
        when 4 =>  case entrada is
                              when '1' => saida(3) := '1'; S(2)<= '1'; cont :=cont+1;
                              when '0' => S(3) <='0'; S(2) <='1'; cont := cont +1;
                              end case;
        when 5 =>  case entrada is
                              when '1' => saida(2) := '1'; S(1)<= '1'; cont :=cont+1;
                              when '0' => S(2) <='0'; S(1) <='1'; cont := cont+1;
                              end case;
        when 6 =>  case entrada is
                              when '1' => saida(1) := '1'; S(0)<= '1'; cont :=cont+1;
                              when '0' => S(1) <='0'; S(0) <='1'; cont := cont+1;
                              end case;
        when 7 =>  case entrada is
                              when '1' => saida(0) := '1'; cont := cont+1; saida2:= saida;
                              when others=> cont := cont+1;
                              end case;
        when others => if (cont=8 and div_cont=3) then
							  S <= "1000000"; saida := "0000000"; cont := 1; div_cont := 0;
							  else S <= "1000000"; saida := "0000000"; cont := 1; 
							  end if;
							  
        end case;
		 div_cont := div_cont + 1;
		
end if;

	-- 7 SEGMENTOS
if    (saida2 >="1011010") then display_dezena<="1110011"; 
		if    (saida2 ="1011010") then display_unidade <= "1111110"; --90
		elsif (saida2 ="1011011") then display_unidade <= "0110000"; 
		elsif (saida2 ="1011100") then display_unidade <= "1101101";
		elsif (saida2 ="1011101") then display_unidade <= "1111001"; 
		elsif (saida2 ="1011110") then display_unidade <= "0110011";
		elsif (saida2 ="1011111") then display_unidade <= "1011011";
		elsif (saida2 ="1100000") then display_unidade <= "0011111";
		elsif (saida2 ="1100001") then display_unidade <= "1110000";
		elsif (saida2 ="1100010") then display_unidade <= "1111111";
		elsif (saida2 >="1100011") then display_unidade <= "1110011"; --99
		end if;

elsif (saida2 >="1010000") then display_dezena<="1111111"; 
		if    (saida2 ="1010000") then display_unidade <= "1111110"; --80
		elsif (saida2 ="1010001") then display_unidade <= "0110000"; 
		elsif (saida2 ="1010010") then display_unidade <= "1101101";
		elsif (saida2 ="1010011") then display_unidade <= "1111001"; 
		elsif (saida2 ="1010100") then display_unidade <= "0110011";
		elsif (saida2 ="1010101") then display_unidade <= "1011011";
		elsif (saida2 ="1010110") then display_unidade <= "0011111";
		elsif (saida2 ="1010111") then display_unidade <= "1110000";
		elsif (saida2 ="1101000") then display_unidade <= "1111111";
		elsif (saida2 ="1101001") then display_unidade <= "1110011"; --89
		end if;

elsif (saida2 >="1000110") then display_dezena<="1110000";
		if    (saida2 ="1000110") then display_unidade <= "1111110"; --70
		elsif (saida2 ="1000111") then display_unidade <= "0110000"; 
		elsif (saida2 ="1001000") then display_unidade <= "1101101";
		elsif (saida2 ="1001001") then display_unidade <= "1111001"; 
		elsif (saida2 ="1001010") then display_unidade <= "0110011";
		elsif (saida2 ="1001011") then display_unidade <= "1011011";
		elsif (saida2 ="1001100") then display_unidade <= "0011111";
		elsif (saida2 ="1001101") then display_unidade <= "1110000";
		elsif (saida2 ="1001110") then display_unidade <= "1111111";
		elsif (saida2 ="1001111") then display_unidade <= "1110011"; --79
		end if;

elsif (saida2 >="0111100") then display_dezena<="0011111";
		if    (saida2 ="0111100") then display_unidade <= "1111110"; --60
		elsif (saida2 ="0111101") then display_unidade <= "0110000"; 
		elsif (saida2 ="0111110") then display_unidade <= "1101101";
		elsif (saida2 ="0111111") then display_unidade <= "1111001"; 
		elsif (saida2 ="1000000") then display_unidade <= "0110011";
		elsif (saida2 ="1000001") then display_unidade <= "1011011";
		elsif (saida2 ="1000010") then display_unidade <= "0011111";
		elsif (saida2 ="1000011") then display_unidade <= "1110000";
		elsif (saida2 ="1000100") then display_unidade <= "1111111";
		elsif (saida2 ="1000101") then display_unidade <= "1110011"; --69
		end if;

elsif (saida2 >="0110010") then display_dezena<="1011011"; --50 
		if    (saida2 ="0110010") then display_unidade <= "1111110";
		elsif (saida2 ="0110011") then display_unidade <= "0110000"; 
		elsif (saida2 ="0110100") then display_unidade <= "1101101";
		elsif (saida2 ="0110101") then display_unidade <= "1111001"; 
		elsif (saida2 ="0110110") then display_unidade <= "0110011";
		elsif (saida2 ="0110111") then display_unidade <= "1011011";
		elsif (saida2 ="0111000") then display_unidade <= "0011111";
		elsif (saida2 ="0111001") then display_unidade <= "1110000";
		elsif (saida2 ="0111010") then display_unidade <= "1111111";
		elsif (saida2 ="0111011") then display_unidade <= "1110011"; --59
		end if;

elsif (saida2 >="0101000") then display_dezena<="0110011";
		if    (saida2 ="0101000") then display_unidade <= "1111110";  --40
		elsif (saida2 ="0101001") then display_unidade <= "0110000"; 
		elsif (saida2 ="0101010") then display_unidade <= "1101101";
		elsif (saida2 ="0101011") then display_unidade <= "1111001"; 
		elsif (saida2 ="0101100") then display_unidade <= "0110011";
		elsif (saida2 ="0101101") then display_unidade <= "1011011";
		elsif (saida2 ="0101110") then display_unidade <= "0011111";
		elsif (saida2 ="0101111") then display_unidade <= "1110000";
		elsif (saida2 ="0110000") then display_unidade <= "1111111";
		elsif (saida2 ="0110001") then display_unidade <= "1110011";  --49
		end if;

elsif (saida2 >="0011110") then display_dezena<="1111001";
		if    (saida2 ="0011110") then display_unidade <= "1111110";  --30
		elsif (saida2 ="0011111") then display_unidade <= "0110000"; 
		elsif (saida2 ="0100000") then display_unidade <= "1101101";
		elsif (saida2 ="0100001") then display_unidade <= "1111001"; 
		elsif (saida2 ="0100010") then display_unidade <= "0110011";
		elsif (saida2 ="0100011") then display_unidade <= "1011011";
		elsif (saida2 ="0100100") then display_unidade <= "0011111";
		elsif (saida2 ="0100101") then display_unidade <= "1110000";
		elsif (saida2 ="0100110") then display_unidade <= "1111111";
		elsif (saida2 ="0100111") then display_unidade <= "1110011"; --39
		end if;

elsif (saida2 >="0010100") then display_dezena<="1101101";   --20
		if    (saida2 ="0010100") then display_unidade <= "1111110";
		elsif (saida2 ="0010101") then display_unidade <= "0110000"; 
		elsif (saida2 ="0010110") then display_unidade <= "1101101";
		elsif (saida2 ="0010111") then display_unidade <= "1111001"; 
		elsif (saida2 ="0011000") then display_unidade <= "0110011";
		elsif (saida2 ="0011001") then display_unidade <= "1011011";
		elsif (saida2 ="0011010") then display_unidade <= "0011111";
		elsif (saida2 ="0011011") then display_unidade <= "1110000";
		elsif (saida2 ="0011100") then display_unidade <= "1111111";
		elsif (saida2 ="0011101") then display_unidade <= "1110011"; --29
		end if;

elsif (saida2 >="0001010") then display_dezena<="0110000";
		if    (saida2 ="0001010") then display_unidade <= "1111110"; --10
		elsif (saida2 ="0001011") then display_unidade <= "0110000"; 
		elsif (saida2 ="0001100") then display_unidade <= "1101101";
		elsif (saida2 ="0001101") then display_unidade <= "1111001"; 
		elsif (saida2 ="0001110") then display_unidade <= "0110011";
		elsif (saida2 ="0001111") then display_unidade <= "1011011";
		elsif (saida2 ="0010000") then display_unidade <= "0011111";
		elsif (saida2 ="0010001") then display_unidade <= "1110000";
		elsif (saida2 ="0010010") then display_unidade <= "1111111";
		elsif (saida2 ="0010011") then display_unidade <= "1110011"; --19
		end if;

else display_dezena <= "1111110";
		if    (saida2 ="0000000") then display_unidade <= "1111110"; --0
		elsif (saida2 ="0000001") then display_unidade <= "0110000"; 
		elsif (saida2 ="0000010") then display_unidade <= "1101101";
		elsif (saida2 ="0000011") then display_unidade <= "1111001"; 
		elsif (saida2 ="0000100") then display_unidade <= "0110011";
		elsif (saida2 ="0000101") then display_unidade <= "1011011";
		elsif (saida2 ="0000110") then display_unidade <= "0011111";
		elsif (saida2 ="0000111") then display_unidade <= "1110000";
		elsif (saida2 ="0001000") then display_unidade <= "1111111";
		elsif (saida2 ="0001001") then display_unidade <= "1110011";--9
		end if;
end if; 

end process;


end architecture;