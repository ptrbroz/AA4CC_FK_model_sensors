library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity uart_out_manager IS
generic(
			DATA_MAX_BYTES : integer := 59;
			DATA_SMALL_BYTES : integer := 10
		);
port(
		clock : in std_logic;
		tx_send : out std_logic;
		tx_byte : out std_logic_vector(7 downto 0);
		tx_is_ready : in std_logic;
		watcher_data : in std_logic_vector(DATA_MAX_BYTES*8-1 downto 0); 
		watcher_data_len : in std_logic_vector(6 downto 0); 
		watcher_data_valid : in std_logic;
		watcher_data_ack : out std_logic;
		boss_data : in std_logic_vector(DATA_SMALL_BYTES*8-1 downto 0); 
		boss_data_len : in std_logic_vector(5 downto 0); 
		boss_data_valid : in std_logic;
		boss_data_ack : out std_logic;
		boss_select : in std_logic
		);
end uart_out_manager;

architecture arch1 of uart_out_manager is

	type manager_state_t is (	m_idle,
										m_ack,
										m_wait_for_ready,
										m_prep_byte,
										m_send,
										m_wait_for_unready
										);  
										
		signal data : std_logic_vector(DATA_MAX_BYTES*8-1 downto 0) := (others => '0');
		signal data_len : integer range 0 to DATA_MAX_BYTES := 0;
		signal data_valid : std_logic := '0';
		signal data_ack : std_logic := '0';
		

begin

	data 					<= watcher_data			when (boss_select = '0') else (boss_data(DATA_SMALL_BYTES*8-1 downto 0) & (watcher_data((DATA_MAX_BYTES-DATA_SMALL_BYTES)*8 - 1 downto 0)));
	data_len 			<= to_integer(unsigned(watcher_data_len)) 		when (boss_select = '0') else to_integer(unsigned(boss_data_len));
	data_valid 			<= watcher_data_valid 	when (boss_select = '0') else boss_data_valid;
	watcher_data_ack 	<= data_ack				   when (boss_select = '0') else '0';
	boss_data_ack 		<= data_ack 				when (boss_select = '1') else '0';

	manager_fsm : process(clock) is
		variable state : manager_state_t := m_idle;
		variable savedData : std_logic_vector(DATA_MAX_BYTES*8-1 downto 0) := (others => '0');
		variable savedDataLen : integer range 0 to DATA_MAX_BYTES := 0;
		variable savedDataIndex : integer range 0 to DATA_MAX_BYTES := 0;
	begin
			
		if rising_edge(clock) then
			
			data_ack <= '0';
			tx_send <= '0';
			
			case state is
			
				when m_idle =>
					if data_valid = '1' then
						savedData := data;
						savedDataLen := data_len;
						savedDataIndex := 0;
						state := m_ack;
						data_ack <= '1';
					end if;
					
				when m_ack =>
					data_ack <= '1';
					state := m_wait_for_ready;
				
				when m_wait_for_ready =>
					if tx_is_ready = '1' then
						state := m_prep_byte;
					end if;

				when m_prep_byte =>
					tx_byte <= savedData(savedData'length - 1 downto savedData'length - 8);
					savedData := savedData(savedData'length - 9 downto 0) & "00000000";
					savedDataIndex := savedDataIndex + 1;
					state := m_send;
				
				when m_send =>
					tx_send <= '1';
					state := m_wait_for_unready;
				
				when m_wait_for_unready =>
					tx_send <= '1';
					if tx_is_ready = '0' then
						if savedDataIndex >= savedDataLen then
							state := m_idle;
						else
							state := m_wait_for_ready;
						end if;
					end if;
					
				
			end case;
			
			
		end if;
		
	end process manager_fsm;
	
	end arch1;
			
	

