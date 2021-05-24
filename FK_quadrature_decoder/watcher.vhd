library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity watcher IS
generic(
			MAX_ENCODERS : integer := 35;
			DATA_MAX_BYTES : integer := 59;
			CLK_IN_FREQ : integer := 50000000
			);
port(
		clock : in std_logic;
		areset : in std_logic;
		gpio_a_channels : in std_logic_vector(MAX_ENCODERS-1 downto 0);
		gpio_b_channels : in std_logic_vector(MAX_ENCODERS-1 downto 0);
		--todo settings
		data_out : out std_logic_vector(DATA_MAX_BYTES*8 - 1 downto 0);
		data_out_len : out integer range DATA_MAX_BYTES to 0;
		data_out_ready : out std_logic;
		data_out_ack : in std_logic
		);
end watcher;

architecture arch1 of watcher is

	component quadrature_decoder_pb IS
	generic(
		DEBOUNCE_COUNT : integer := 1000;
		RESOLUTION : integer := 8192
		);
	port(
		clock : in std_logic;
		areset : in std_logic;
		Ain : in std_logic;
		Bin : in std_logic;
		position : out std_logic_vector(12 downto 0)
		);
	end component;
	
	type position_array_t is array (MAX_ENCODERS-1 downto 0) of std_logic_vector(12 downto 0);
	
	type watcher_fsm_state_t is ( w_wait_for_timer,
											--w_check_for_change, todo
											w_save_positions,
											w_assemble_header, 
											w_assemble_message,
											w_prepare_len,
											w_ready_message,
											w_wait_for_ack
											);
											
	signal inPositions : position_array_t;
	signal timer_alarm : std_logic;
	
begin


	GENERATE_DECODERS: for I in 0 to MAX_ENCODERS - 1 generate
	
			decoderx : quadrature_decoder_pb 
				generic map(
				1000, 
				8192
				)
				port map(
				clock,
				areset,
				gpio_a_channels(I),
				gpio_b_channels(I),
				inPositions(I)
				);
	
	end generate GENERATE_DECODERS;

	
	
	watcher_timer : process(clock, areset) is
		variable counter : integer range 0 to 3000000 := 0;
		constant clocksMax : integer := 2500000;
	begin
	
	if areset = '1' then
		counter := 0; --todo change
	else
		if rising_edge(clock) then
			if counter >= clocksMax then
				timer_alarm <= '1';
				counter := 0;
			else
				timer_alarm <= '0';
				counter := counter + 1;
			end if;
		end if;
	end if;
	
	end process watcher_timer;
	
	
	
	watcher_fsm : process(clock, areset) is
		variable state : watcher_fsm_state_t := w_wait_for_timer;
		variable encoderIndex : integer range 0 to MAX_ENCODERS - 1 := 0;
		variable dataIndex : integer range 0 to data_out'length	- 1 := 0;
		constant encoderEnableVector : std_logic_vector(MAX_ENCODERS - 1 downto 0) := (others => '1');
		variable savedPositions : position_array_t;
		variable resolutionBits : integer range 2 to 13 := 10;
		
	begin
	
	if areset = '1' then
		state := w_wait_for_timer; 
		encoderIndex := 0;
		dataIndex := 0;
		--encoderEnableVector := (1 => '1', 3 => '1', 4 => '1', 7 => '1', others => '0');
	else
		if rising_edge(clock) then
		
			data_out_ready <= '0';
		
			case state is
			
				when w_wait_for_timer =>
					
					if timer_alarm = '1' then
						state := w_save_positions;
					end if;
				
				when w_save_positions =>
					savedPositions := inPositions;
					state := w_assemble_header;
				
				when w_assemble_header =>
					data_out(15 downto 0) <= (others => '1'); --0xff 0xff header to identify data message
					encoderIndex := 0;
					dataIndex := 16;
					state := w_assemble_message;
					
				when w_assemble_message =>
					if encoderIndex >= MAX_ENCODERS - 1 then
						state := w_prepare_len;
					else
						if encoderEnableVector(encoderIndex) = '1' then 
							data_out(dataIndex + resolutionBits downto dataIndex) <= savedPositions(encoderIndex)(12 downto 12-resolutionBits);
							data_out(dataIndex + resolutionBits + 1) <= '0'; --separator
							dataIndex := dataIndex + resolutionBits + 1;
						end if;
						encoderIndex := encoderIndex + 1;
					end if;
					
				when w_prepare_len =>
					data_out_len <= dataIndex/8;
					state := w_ready_message;
				
				when w_ready_message =>
					data_out_ready <= '1';
					state := w_wait_for_ack;
					
				when w_wait_for_ack =>
					data_out_ready <= '1';
					if data_out_ack = '1' then
						state := w_wait_for_timer;
					elsif timer_alarm = '1' then
						--if uart manager is taking too long and timer run out again, prepare fresh batch of data
						state := w_assemble_header;
					end if;
			end case;
			
		end if;
	end if;
		
	end process watcher_fsm;







end arch1;

