library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Este programa faz o interfaceamento entre o Comparador e o circuito Condicionador (rede R2R).

entity interfaceCC is
port(
	S                                   :  out bit_vector (6 downto 0);
	displayUnidade, displayDezena     :  out bit_vector (6 downto 0);
	-- saidaComparador eh A SAIDA do comparador
	saidaComparador , clk    :  in bit
);
end entity;

architecture trabalho of interfaceCC is
begin

process (clk)
	variable cont        : natural range 0 to 15;
	-- divisor de freq para diminuir a freq do FPGA
	variable div_cont    : integer range 0 to 6250000;
	-- saida e saida2 sao variaveis auxiliares para jogar no display pra diferenciar da saida real que sera enviada para o R2R
	variable saida, saida2       : bit_vector (6 downto 0);
	
begin
if (clk'event and clk='1') then
   case cont is
		-- comecando pela metade! 
        when 0 => S <= "1000000"; saida := "0000000"; cont := cont + 1;
		  
		  -- cont agora eh incrementado e vai tentar 1100 000
        when 1 => case saidaComparador is
							  -- atribuimos o valor enviado de S para atualizar o valor de saida()!
							  -- saida eh o que vai de fato sai pro display
										-- Valor testado foi 1000 000, se o comparador retornar verdadeiro (maior), entao mandamos 1100 000
										-- como proximo valor a ser testado. Caso seja 0 (menor), atualizamos de 1000 000 para 0100 000
                              when '1' => saida(6) := '1'; S(5)<= '1'; cont := cont+1;
                              when '0' => S(6) <='0'; S(5) <='1'; cont := cont+1;
                              end case;
        when 2 =>  case saidaComparador is
										-- Se 1100 000 retornar 1, ou seja, o valor real eh maior, entao ele ira jogar para o comparador 1110 000
                              when '1' => saida(5) := '1'; S(4)<= '1'; cont :=cont+1;
										-- Caso 1100 000 retorne 0, ou seja, valor real eh menor, entao o comparador recebe 1010 000
                              when '0' => S(5) <='0'; S(4) <='1'; cont := cont+1;
                              end case;
        when 3 =>  case saidaComparador is
										-- Se 1110 000 retornar 1, ou seja, o valor real AINDA maior, entao joga p comparador 1111 0000
                              when '1' => saida(4) := '1'; S(3)<= '1'; cont :=cont+1;
										-- Se 1110 000 retornar 0, valor real menor, o comparador recebe 1101 000
                              when '0' => S(4) <='0'; S(3) <='1'; cont := cont+1;
                              end case;
        when 4 =>  case saidaComparador is
                              when '1' => saida(3) := '1'; S(2)<= '1'; cont :=cont+1;
                              when '0' => S(3) <='0'; S(2) <='1'; cont := cont +1;
                              end case;
        when 5 =>  case saidaComparador is
                              when '1' => saida(2) := '1'; S(1)<= '1'; cont :=cont+1;
                              when '0' => S(2) <='0'; S(1) <='1'; cont := cont+1;
                              end case;
        when 6 =>  case saidaComparador is
                              when '1' => saida(1) := '1'; S(0)<= '1'; cont :=cont+1;
                              when '0' => S(1) <='0'; S(0) <='1'; cont := cont+1;
                              end case;
        when 7 =>  case saidaComparador is
                              when '1' => saida(0) := '1'; cont := cont+1; saida2:= saida;
                              when others=> cont := cont+1;
                              end case;
		  
		  -- Voltar para o inicio!
        when others => if (cont=8 and div_cont=3) then
							  S <= "1000000"; saida := "0000000"; cont := 1; div_cont := 0;
							  else S <= "1000000"; saida := "0000000"; cont := 1; 
							  end if;
							  
        end case;
		 div_cont := div_cont + 1;
		
end if;

	-- 7 SEGMENTOS segmento eh acionado com nivel baixo.
	--  a
	-- f b   "g" no centro, o numero 0 eh 0000 001
	-- e c
	--  d
	
if    (saida2 >="1011010") then displayDezena <="0001100"; 
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --90
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--99
		end if;

elsif (saida2 >="1010000") then displayDezena<="0000000"; 
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --80
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--89
		end if;

elsif (saida2 >="1000110") then displayDezena<="0001111"; 
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --70
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--79
		end if;

elsif (saida2 >="0111100") then displayDezena<="0100000";
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --60
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--69
		end if;
elsif (saida2 >="0110010") then displayDezena<="0100100"; --50 
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --0
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--59
		end if;

elsif (saida2 >="0101000") then displayDezena<="1001100";
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --40
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--49
		end if;

elsif (saida2 >="0011110") then displayDezena<="0000110";
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --30
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--39
		end if;

elsif (saida2 >="0010100") then displayDezena<="0010010";   --20
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --0
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--29
		end if;

elsif (saida2 >="0001010") then displayDezena<="1001111";
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --0
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--9
		end if;

else displayDezena <= "0000001";
		if    (saida2 ="0000000") then displayUnidade <= "0000001"; --0
		elsif (saida2 ="0000001") then displayUnidade <= "1001111"; 
		elsif (saida2 ="0000010") then displayUnidade <= "0010010";
		elsif (saida2 ="0000011") then displayUnidade <= "0000110"; 
		elsif (saida2 ="0000100") then displayUnidade <= "1001100";
		elsif (saida2 ="0000101") then displayUnidade <= "0100100";
		elsif (saida2 ="0000110") then displayUnidade <= "0100000";
		elsif (saida2 ="0000111") then displayUnidade <= "0001111";
		elsif (saida2 ="0001000") then displayUnidade <= "0000000";
		elsif (saida2 ="0001001") then displayUnidade <= "0001100";--9
		end if;
end if; 

end process;


end architecture;
