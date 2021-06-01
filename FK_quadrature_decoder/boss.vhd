library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity boss IS
generic(
		MAX_ENCODERS : integer := 35;
		DATA_SMALL_BYTES : integer := 5
);
port(
		clock : in std_logic;
		areset : in std_logic;
		byte_in : in std_logic_vector(7 downto 0);
		byte_in_valid : in std_logic;
		boss_data : out std_logic_vector(DATA_SMALL_BYTES*8-1 downto 0); 
		boss_data_len : out std_logic_vector(5 downto 0); 
		boss_data_valid : out std_logic;
		boss_data_ack : in std_logic;
		boss_select : out std_logic;
		set_encoder_vector : out std_logic_vector(MAX_ENCODERS-1 downto 0);
		set_encoder_resolution : out integer range 0 to 13
		);
end boss;

architecture arch1 of boss is

type boss_fsm_state_t is ( b_idle,
									b_id_check,
									b_receive_bytes,
									b_receive_bytes_wait,
									b_config_update,
									b_
									b_

									);


constant ID_CONFIG : std_logic_vector (7 downto 0) := "00000001"

signal encoder_vector : out std_logic_vector(MAX_ENCODERS-1 downto 0) := (others => '0');
signal encoder_resolution : out integer range 0 to 13 := 11;

									
begin


set_encoder_vector <= encoder_vector;
set_encoder_resolution <= encoder_resolution;

	 


	boss_fsm : process(clock, areset) is
	
		variable state : boss_fsm_state_t := b_idle;
		variable afterState : boss_fsm_state_t := b_idle;
		variable idByte : std_logic_vector(7 downto 0) := (others => '0');
		variable bytesLeft : integer range 0 to 30 := 0;
		
		variable configData : std_logic_vector(39 downto 0) := (others => '0');
		
	begin
	
	if areset = '1' then
		
	else
		if rising_edge(clock) then
			
			case state is
			
				when b_idle =>
					if byte_in_valid = '1' then
						idByte := byte_in;
						state := b_id_check;
					end if;
				
				when b_id_check =>
					case idByte is
						when ID_CONFIG =>
							bytesLeft := 5;
							state := b_receive_bytes;
							afterState := b_config_update;
					end case;
					
				when b_receive_bytes =>
					if bytesLeft = 0 then
						state := afterState;
					else
						if byte_in_valid = '1' then
							configData := configData(39 downto 8) & byte_in;
							bytesLeft := bytesLeft - 1;
							state := b_receive_bytes_wait;
						end if;
					end if;
				
				when b_receive_bytes_wait =>
					if byte_in_valid = '0' then
						state := b_receive_bytes;
					end if;
					
				when b_config_update =>
					encoder_vector <= configData(39 downto 5);
					if unsigned(configData(3 downto 0) > 13 then
						encoder_resolution <= 13;
					else
						encoder_resolution <= to_integer(unsigned(configData(4 downto 1)));
					end if;
					if configData(0) = '1' then
						state := b_reset_encoders;
					else
						state := b_ #todo
					end if;
				
				when b_reset_encoders =>
					
					
					
			end case;
		end if;
	end if;

	
	end process boss_fsm;


































end arch1
