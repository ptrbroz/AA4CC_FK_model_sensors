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
		data_out : buffer std_logic_vector(DATA_MAX_BYTES*8 - 1 downto 0);
		data_out_len : out std_logic_vector(5 downto 0); 
		data_out_ready : out std_logic;
		data_out_ack : in std_logic;
		set_encoder_vector : in std_logic_vector(MAX_ENCODERS - 1 downto 0) := (others => '1');
		set_encoder_resolution : in integer range 0 to 13;
		set_encoder_miliseconds : in integer range 0 to 255;
		set_enabled : in std_logic
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
											w_assemble_header_ones,
											w_assemble_header_calc_encoders,
											w_assemble_header_append_encoders,
											w_assemble_header_append_resolution,
											w_prep_encoder,
											w_append_bits_to_message,
											w_fin_encoder,
											w_calc_len,
											w_align_message,
											w_ready_message,
											w_wait_for_ack
											);
											
	signal inPositions : position_array_t;
	signal timer_alarm : std_logic;
	
	signal timer_consume : std_logic := '0';
	
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
		
		variable clockCounter : integer range 0 to 50000 := 0;
		variable msCounter : integer range 0 to 255 		 := 0;
		variable targetMs : integer range 0 to 255 		 := 10;
	
		constant clocksMax : integer :=    500000;
		--constant clocksMax : integer := 100000000;
		variable counter : integer range 0 to clocksMax+1 := 0;

	begin
	
	if areset = '1' then
		counter := 0; --todo change
	else
		if rising_edge(clock) then
			if msCounter >= targetMs then
				timer_alarm <= '1';
				if timer_consume then
					targetMs := set_encoder_miliseconds;
					msCounter := 0;
					clockCounter := 0;
				end if;
			else
				timer_alarm <= '0';
				clockCounter := clockCounter + 1;
				if clockCounter = 50000 then
					msCounter := msCounter + 1;
					clockCounter := 0;
				end if;
			end if;
		end if;
	end if;
	
	end process watcher_timer;
	
	
	
	watcher_fsm : process(clock, areset) is
		variable state : watcher_fsm_state_t := w_wait_for_timer;
		variable encoderIndex : integer range 0 to MAX_ENCODERS := 0;
		variable encoderEnableVector : std_logic_vector(MAX_ENCODERS - 1 downto 0) := (others => '1');
		variable savedPositions : position_array_t;
		variable bitResolution : integer range 0 to 13 := 10	;
		variable totalBitCounter : integer range 0 to data_out'length := 0;
		variable tempBitCounter  : integer range 0 to 31 := 0;
		variable tempPosition : std_logic_vector(12 downto 0);
		variable encoderCount : integer range 0 to MAX_ENCODERS := 0;
		variable encoderCountArray : std_logic_vector(5 downto 0) := (others => '0');
		variable resolutionArray : std_logic_vector(3 downto 0) := (others => '0');
		
		
	begin
	
	if areset = '1' then
		state := w_wait_for_timer; 
		encoderIndex := 0;
		--encoderEnableVector := (1 => '1', 3 => '1', 4 => '1', 7 => '1', others => '1');
	else
		if rising_edge(clock) then
		
			data_out_ready <= '0';
			timer_consume <= '0';
		
			case state is
			
				when w_wait_for_timer =>
					if set_enabled = '1' and timer_alarm = '1' then
						state := w_save_positions;
						timer_consume <= '1';
					end if;
					
				when w_save_positions =>
					savedPositions := inPositions;
					encoderEnableVector := set_encoder_vector;
					bitResolution := set_encoder_resolution;
					state := w_assemble_header_ones;
					encoderIndex := 0;
					totalBitCounter := 0;
					tempBitCounter := 0;
				
				when w_assemble_header_ones =>
					data_out <= data_out(data_out'length - 2 downto 0) & '1' ;
					totalBitCounter := totalBitCounter + 1;
					tempBitCounter := tempBitCounter + 1;
					if tempBitCounter = 14 then
						state := w_assemble_header_calc_encoders;
						tempBitCounter := 0;
						encoderIndex := 0;
						encoderCount := 0;
					end if;
									
				when w_assemble_header_calc_encoders =>
					if encoderEnableVector(encoderIndex) = '1' then
						encoderCount := encoderCount + 1;
					end if;
					
					if encoderIndex = MAX_ENCODERS - 1 then
						encoderIndex := 0;
						state := w_assemble_header_append_encoders;
						encoderCountArray := std_logic_vector(to_unsigned(encoderCount, 6));
						tempBitCounter := 0;
					else
						encoderIndex := encoderIndex + 1;
					end if;
									
				when w_assemble_header_append_encoders =>
					data_out <= data_out(data_out'length - 2 downto 0) & encoderCountArray(encoderCountArray'length - 1);
					encoderCountArray := encoderCountArray(encoderCountArray'length - 2 downto 0) & '0';
					totalBitCounter := totalBitCounter + 1;
					tempBitCounter := tempBitCounter + 1;
					if tempBitCounter = encoderCountArray'length then
						tempBitCounter := 0;
						resolutionArray := std_logic_vector(to_unsigned(bitResolution, 4));
						state := w_assemble_header_append_resolution;
					end if;
					
				when w_assemble_header_append_resolution =>
					data_out <= data_out(data_out'length - 2 downto 0) & resolutionArray(resolutionArray'length - 1);
					resolutionArray := resolutionArray(resolutionArray'length - 2 downto 0) & '0';
					totalBitCounter := totalBitCounter + 1;
					tempBitCounter := tempBitCounter + 1;
					if tempBitCounter = resolutionArray'length then
						tempBitCounter := 0;
						state := w_prep_encoder;
					end if;
				
				when w_prep_encoder =>
					if encoderEnableVector(encoderIndex) = '0' then
						if encoderIndex = MAX_ENCODERS - 1 then
							state := w_calc_len;
						else 
							encoderIndex := encoderIndex + 1;
						end if;
					else
						tempPosition := savedPositions(encoderIndex);
						tempBitCounter := 0;
						data_out <= data_out(data_out'length - 2 downto 0) & '0'; --separator
						totalBitCounter := totalBitCounter + 1;
						state := w_append_bits_to_message;
					end if;
									
				when w_append_bits_to_message =>
					data_out <= data_out(data_out'length - 2 downto 0) & tempPosition(tempPosition'length - 1);
					tempPosition := tempPosition(tempPosition'length - 2 downto 0) & '0';
					tempBitCounter := tempBitCounter + 1;
					totalBitCounter := totalBitCounter + 1;
					if tempBitCounter = bitResolution then
						state := w_fin_encoder;
					end if;
					
				when w_fin_encoder =>
					tempBitCounter := 0;
					if encoderIndex = MAX_ENCODERS - 1 then
						state := w_calc_len;
					else
						encoderIndex := encoderIndex + 1;
						state := w_prep_encoder;
					end if;
					
				when w_calc_len =>
					if totalBitCounter mod 8 = 0 then
						data_out_len <= std_logic_vector(to_unsigned(totalBitCounter/8, data_out_len'length));
					else
						data_out_len <= std_logic_vector(to_unsigned(totalBitCounter/8 + 1, data_out_len'length));
					end if;
					state := w_align_message;
					
				when w_align_message =>
					if totalBitCounter = data_out'length then
						state := w_ready_message;
					else
						data_out <= data_out(data_out'length - 2 downto 0) & '0';
						totalBitCounter := totalBitCounter + 1;
					end if;
									
				when w_ready_message =>
					if set_enabled = '0' then
						state := w_wait_for_timer;
					else
						data_out_ready <= '1';
						state := w_wait_for_ack;
					end if;
					
				when w_wait_for_ack =>
					if set_enabled = '0' then
						state := w_wait_for_timer;
					else
						data_out_ready <= '1';
						if data_out_ack = '1' then
							state := w_wait_for_timer;
						end if;
					end if;
			end case;
			
		end if;
	end if;
		
	end process watcher_fsm;







end arch1;

