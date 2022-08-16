library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity boss IS
generic(
		MAX_ENCODERS : integer := 35;
		DATA_SMALL_BYTES : integer := 10
);
port(
		clock : in std_logic;
		byte_in : in std_logic_vector(7 downto 0);
		byte_in_valid : in std_logic;
		boss_data : buffer std_logic_vector(DATA_SMALL_BYTES*8-1 downto 0); 
		boss_data_len : out std_logic_vector(5 downto 0); 
		boss_data_valid : out std_logic;
		boss_data_ack : in std_logic;
		boss_select : out std_logic;
		set_encoder_vector : out std_logic_vector(MAX_ENCODERS-1 downto 0);
		set_encoder_resolution : out integer range 0 to 15;
		set_encoder_rev_resolution : out integer range 0 to 8;
		set_encoder_miliseconds : out integer range 0 to 255;
		set_encoder_reset : out std_logic;
		set_encoder_enable : out std_logic
		);
end boss;

architecture arch1 of boss is

type boss_fsm_state_t is ( b_idle,
									b_id_check,
									b_receive_bytes,
									b_receive_bytes_wait,
									b_config_update,
									b_reset_encoders,
									b_assemble_reply_config_start,
									b_assemble_reply_config_header,
									b_assemble_reply_config_data,
									b_assemble_reply_align,
									b_send_reply,
									b_wait_for_ack
									);


constant ID_CONFIG   : std_logic_vector (7 downto 0) := "00000001";
constant ID_COMM_OFF : std_logic_vector (7 downto 0) := "00000010";
constant ID_COMM_ON  : std_logic_vector (7 downto 0) := "00000100";


signal encoder_vector : std_logic_vector(MAX_ENCODERS-1 downto 0) := "1111111111" & "000000000000000" & "1111111111";
signal encoder_resolution : integer range 0 to 15 := 10;
signal encoder_rev_resolution : integer range 0 to 8 := 0;
signal encoder_enable : std_logic := '0'; 
signal encoder_miliseconds : integer range 0 to 255 := 5;


									
begin


set_encoder_vector <= encoder_vector;
set_encoder_resolution <= encoder_resolution;
set_encoder_rev_resolution <= encoder_rev_resolution;
set_encoder_enable <= encoder_enable;
set_encoder_miliseconds <= encoder_miliseconds;





	boss_fsm : process(clock) is
	
		variable state : boss_fsm_state_t := b_idle;
		variable afterState : boss_fsm_state_t := b_idle;
		variable idByte : std_logic_vector(7 downto 0) := (others => '0');
		variable bytesLeft : integer range 0 to 30 := 0;
		
		variable configData : std_logic_vector(47 downto 0) := (others => '0');
		
		variable tempBitCounter : integer range 0 to 30 := 0;
		variable dataBitCounter : integer range 0 to 100 := 0;
		variable totalBitCounter : integer range 0 to 100 := 0;
		
		variable revResolution : integer range 0 to 15 := 0;
		constant maxRevResolution : integer := 8;
		
		variable enableAfterAck : std_logic := '0';
		
	begin
	
		if rising_edge(clock) then
			
			set_encoder_reset <= '0';
			boss_data_valid 	<= '0';
			boss_select 		<= '0';
			
			case state is
			
				when b_idle =>
					if byte_in_valid = '1' then
						idByte := byte_in;
						state := b_id_check;
					end if;
				
				when b_id_check =>
					enableAfterAck := encoder_enable;
					if idByte(0) = '1' and idByte(1) = '0' and idByte(2) = '0' and idByte(3) = '0' then
						bytesLeft := 6;
						afterState := b_config_update;
						enableAfterAck := '1';
						revResolution := to_integer(unsigned(idByte(7 downto 4)));
						if revResolution > 8 then
							revResolution := 8;
						end if;
						state := b_receive_bytes_wait;
					elsif idByte = ID_COMM_ON then
						encoder_enable <= '1';
						state := b_idle;
					elsif idByte = ID_COMM_OFF then
						encoder_enable <= '0';
						state := b_idle;
					else
						state := b_idle;
					end if;
					
				when b_receive_bytes =>
					if bytesLeft = 0 then
						state := afterState;
					else
						if byte_in_valid = '1' then
							configData := configData(39 downto 0) & byte_in;
							bytesLeft := bytesLeft - 1;
							state := b_receive_bytes_wait;
						end if;
					end if;
				
				when b_receive_bytes_wait =>
					if byte_in_valid = '0' then
						state := b_receive_bytes;
					end if;
					
				when b_config_update =>
					encoder_vector <= configData(47 downto 13);
					encoder_rev_resolution <= revResolution;
					if unsigned(configData(12 downto 9)) = 0 then
						encoder_resolution <= 1;
						configData(12 downto 9) := std_logic_vector(to_unsigned(1, 4));
					else
						encoder_resolution <= to_integer(unsigned(configData(12 downto 9)));
					end if;
					if configData(8) = '1' then
						state := b_reset_encoders;
					else
						state := b_assemble_reply_config_start;
					end if;
					encoder_miliseconds <= to_integer(unsigned(configData(7 downto 0)));
					
				
				when b_reset_encoders =>
					set_encoder_reset <= '1';
					state := b_assemble_reply_config_start;
					
				when b_assemble_reply_config_start =>
					tempBitCounter := 0;
					totalBitCounter := 0;
					state := b_assemble_reply_config_header;
					
				when b_assemble_reply_config_header =>
					if tempBitCounter < 20 then
						boss_data <= boss_data(boss_data'length - 2 downto 0) & '1';
					else
						boss_data <= boss_data(boss_data'length - 2 downto 0) & '0';
					end if;
					totalBitCounter := totalBitCounter + 1;
					tempBitCounter := tempBitCounter + 1;
					if tempBitCounter = 24 then
						tempBitCounter := 7;
						dataBitCounter := 0;
						state := b_assemble_reply_config_data;
					end if;
					
				when b_assemble_reply_config_data =>
					if tempBitCounter = 7 then
						boss_data <= boss_data(boss_data'length - 2 downto 0) & '0';
						tempBitCounter := 0;
						totalBitCounter := totalBitCounter + 1;
					else
						boss_data <= boss_data(boss_data'length - 2 downto 0) & configData(47);
						tempBitCounter := tempBitCounter + 1;
						dataBitCounter := dataBitCounter + 1;
						totalBitCounter := totalBitCounter + 1;
						configData := configData(46 downto 0) & '0';
						if dataBitCounter = 48 then
							state := b_assemble_reply_align;
							boss_data_len <= std_logic_vector(to_unsigned(10, boss_data_len'length));
						end if;
					end if;
				
				when b_assemble_reply_align =>
					if totalBitCounter = boss_data'length then
						state := b_send_reply;
					else
						boss_data <= boss_data(boss_data'length - 2 downto 0) & '0';
						totalBitCounter := totalBitCounter + 1;
					end if;
					
				when b_send_reply =>
					boss_data_valid <= '1';
					boss_select <= '1';
					state := b_wait_for_ack;
					
				when b_wait_for_ack =>
					boss_data_valid <= '1';
					boss_select <= '1';
					if boss_data_ack = '1' then
						state := b_idle;
						encoder_enable <= enableAfterAck;
					end if;
				
					
			end case;
		end if;

	
	end process boss_fsm;


































end arch1;
