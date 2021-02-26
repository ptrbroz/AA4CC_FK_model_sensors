library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;


entity uart_spammer IS
port(
		clock : in std_logic;
		position : in std_logic_vector(15 downto 0);
		uart_ready : in std_logic;
		send : out std_logic;
		byte_out : out std_logic_vector(7 downto 0)
		);
end uart_spammer;

architecture arch1 of uart_spammer is


type states_t is (spammer_ready, await_1, sent_1, await_2, sent_2);  




begin




	spam : process(clock) is
		
		variable state : states_t := spammer_ready;
		
		variable prevPos : std_logic_vector(15 downto 0) := (others => '0');
		

	begin
	

	if rising_edge(clock) then
	
		send <= '0';
	
		case state is
        
			when spammer_ready =>
				if or_reduce(position xor prevPos) = '1' then
					prevPos := position;
					state := await_1;
				end if;
			when await_1 =>
				if uart_ready = '1' then
					byte_out <= prevPos(15 downto 8);
					send <= '1';
					state := sent_1;
				end if;
			when sent_1 =>
				byte_out <= prevPos(15 downto 8);
				send <= '1';
				state := await_2;
				
			when await_2 =>
				if uart_ready = '1' then
					byte_out <= prevPos(7 downto 0);
					send <= '1';
					state := sent_2;
				end if;
			when sent_2 =>
				byte_out <= prevPos(7 downto 0);
				send <= '1';
				state := spammer_ready;

		end case;

	
	
	end if;

	
	
	end process spam;




	
	
	
	
	
	
	
	
	
	
	end arch1;