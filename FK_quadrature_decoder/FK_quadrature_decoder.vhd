-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed May 26 16:45:58 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY FK_quadrature_decoder IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		GPIO_0_IN0 :  IN  STD_LOGIC;
		GPIO_0_IN1 :  IN  STD_LOGIC;
		GPIO_1_IN0 :  IN  STD_LOGIC;
		GPIO_1_IN1 :  IN  STD_LOGIC;
		GPIO_0_0 :  IN  STD_LOGIC;
		GPIO_0_1 :  IN  STD_LOGIC;
		GPIO_0_2 :  IN  STD_LOGIC;
		GPIO_0_3 :  IN  STD_LOGIC;
		GPIO_0_4 :  IN  STD_LOGIC;
		GPIO_0_5 :  IN  STD_LOGIC;
		GPIO_0_6 :  IN  STD_LOGIC;
		GPIO_0_7 :  IN  STD_LOGIC;
		GPIO_0_8 :  IN  STD_LOGIC;
		GPIO_0_9 :  IN  STD_LOGIC;
		GPIO_0_10 :  IN  STD_LOGIC;
		GPIO_0_11 :  IN  STD_LOGIC;
		GPIO_0_12 :  IN  STD_LOGIC;
		GPIO_0_13 :  IN  STD_LOGIC;
		GPIO_0_14 :  IN  STD_LOGIC;
		GPIO_0_15 :  IN  STD_LOGIC;
		GPIO_0_16 :  IN  STD_LOGIC;
		GPIO_0_17 :  IN  STD_LOGIC;
		GPIO_0_18 :  IN  STD_LOGIC;
		GPIO_0_19 :  IN  STD_LOGIC;
		GPIO_0_20 :  IN  STD_LOGIC;
		GPIO_0_21 :  IN  STD_LOGIC;
		GPIO_0_22 :  IN  STD_LOGIC;
		GPIO_0_23 :  IN  STD_LOGIC;
		GPIO_0_24 :  IN  STD_LOGIC;
		GPIO_0_25 :  IN  STD_LOGIC;
		GPIO_0_26 :  IN  STD_LOGIC;
		GPIO_0_27 :  IN  STD_LOGIC;
		GPIO_0_28 :  IN  STD_LOGIC;
		GPIO_0_29 :  IN  STD_LOGIC;
		GPIO_0_30 :  IN  STD_LOGIC;
		GPIO_0_31 :  IN  STD_LOGIC;
		GPIO_0_32 :  IN  STD_LOGIC;
		GPIO_0_33 :  IN  STD_LOGIC;
		GPIO_1_0 :  IN  STD_LOGIC;
		GPIO_1_1 :  IN  STD_LOGIC;
		GPIO_1_2 :  IN  STD_LOGIC;
		GPIO_1_3 :  IN  STD_LOGIC;
		GPIO_1_4 :  IN  STD_LOGIC;
		GPIO_1_5 :  IN  STD_LOGIC;
		GPIO_1_6 :  IN  STD_LOGIC;
		GPIO_1_7 :  IN  STD_LOGIC;
		GPIO_1_8 :  IN  STD_LOGIC;
		GPIO_1_9 :  IN  STD_LOGIC;
		GPIO_1_10 :  IN  STD_LOGIC;
		GPIO_1_11 :  IN  STD_LOGIC;
		GPIO_1_12 :  IN  STD_LOGIC;
		GPIO_1_13 :  IN  STD_LOGIC;
		GPIO_1_14 :  IN  STD_LOGIC;
		GPIO_1_15 :  IN  STD_LOGIC;
		GPIO_1_16 :  IN  STD_LOGIC;
		GPIO_1_17 :  IN  STD_LOGIC;
		GPIO_1_18 :  IN  STD_LOGIC;
		GPIO_1_19 :  IN  STD_LOGIC;
		GPIO_1_20 :  IN  STD_LOGIC;
		GPIO_1_21 :  IN  STD_LOGIC;
		GPIO_1_22 :  OUT  STD_LOGIC;
		GPIO_1_23 :  IN  STD_LOGIC;
		GPIO_1_24 :  IN  STD_LOGIC;
		GPIO_1_25 :  IN  STD_LOGIC;
		GPIO_1_26 :  IN  STD_LOGIC;
		GPIO_1_27 :  IN  STD_LOGIC;
		GPIO_1_28 :  IN  STD_LOGIC;
		GPIO_1_29 :  IN  STD_LOGIC;
		GPIO_1_30 :  IN  STD_LOGIC;
		GPIO_1_31 :  IN  STD_LOGIC;
		GPIO_1_32 :  IN  STD_LOGIC;
		GPIO_1_33 :  IN  STD_LOGIC;
		GPIO_2_1  :  OUT STD_LOGIC
	);
END FK_quadrature_decoder;

ARCHITECTURE bdf_type OF FK_quadrature_decoder IS 


COMPONENT boss IS
generic(
		MAX_ENCODERS : integer;
		DATA_SMALL_BYTES : integer
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
		set_encoder_miliseconds : out integer range 0 to 255;
		set_encoder_reset : out std_logic;
		set_encoder_enable : out std_logic
		);
end COMPONENT;


COMPONENT watcher
GENERIC (CLK_IN_FREQ : INTEGER;
			DATA_MAX_BYTES : INTEGER;
			MAX_ENCODERS : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 data_out_ack : IN STD_LOGIC;
		 gpio_a_channels : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
		 gpio_b_channels : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
		 data_out_ready : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(DATA_MAX_BYTES*8 - 1 DOWNTO 0);
		 data_out_len : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 set_encoder_vector : in std_logic_vector(MAX_ENCODERS - 1 downto 0) := (others => '1');
		 set_encoder_resolution : in integer range 0 to 15;
		 set_encoder_miliseconds : in integer range 0 to 255;
		 set_enabled : in std_logic
	);
END COMPONENT;

COMPONENT uart_out_manager
GENERIC (DATA_MAX_BYTES : INTEGER;
			DATA_SMALL_BYTES : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 tx_is_ready : IN STD_LOGIC;
		 watcher_data_valid : IN STD_LOGIC;
		 boss_data_valid : IN STD_LOGIC;
		 boss_select : IN STD_LOGIC;
		 boss_data : IN STD_LOGIC_VECTOR(DATA_SMALL_BYTES*8 - 1 DOWNTO 0);
		 boss_data_len : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 watcher_data : IN STD_LOGIC_VECTOR(DATA_MAX_BYTES*8 -1 DOWNTO 0);
		 watcher_data_len : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 tx_send : OUT STD_LOGIC;
		 watcher_data_ack : OUT STD_LOGIC;
		 boss_data_ack : OUT STD_LOGIC;
		 tx_byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT constant1
	PORT(		 result : OUT STD_LOGIC_VECTOR(0 TO 0)
	);
END COMPONENT;

COMPONENT uart_tx
GENERIC (DATA_BITS : INTEGER;
			STOP_BITS : INTEGER;
			TARGET_MCLK : INTEGER;
			UART_BAUD_RATE : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 start : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 trx : OUT STD_LOGIC;
		 ready : OUT STD_LOGIC
	);
END COMPONENT;

component uart_rx is
generic (
DATA_BITS : integer;
UART_BAUD_RATE : integer;
TARGET_MCLK : integer);
port (
     clock : in std_logic; 
      data : out std_logic_vector(DATA_BITS-1 downto 0); 
      data_valid : out std_logic; 
      rxd  : in std_logic
		);
end component;



COMPONENT constant64
	PORT(		 result : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	achans :  STD_LOGIC_VECTOR(34 DOWNTO 0);
SIGNAL	bchans :  STD_LOGIC_VECTOR(34 DOWNTO 0);
SIGNAL	zeroconst :  STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL	wire_watcher_ack :  STD_LOGIC;
SIGNAL	wire_tx_ready :  STD_LOGIC;
SIGNAL	wire_watcher_data_valid :  STD_LOGIC;
SIGNAL	wire_watcher_data :  STD_LOGIC_VECTOR(583 DOWNTO 0);
SIGNAL	wire_watcher_data_len :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	wire_tx_start :  STD_LOGIC;
SIGNAL	wire_tx_byte :  STD_LOGIC_VECTOR(7 DOWNTO 0);

signal wire_boss_data : std_logic_vector(10*8-1 downto 0); 
signal wire_boss_data_len : std_logic_vector(5 downto 0); 
signal wire_boss_data_valid : std_logic;
signal wire_boss_data_ack : std_logic;
signal wire_boss_select : std_logic;

signal wire_set_encoder_vector : std_logic_vector(35-1 downto 0);
signal wire_set_encoder_resolution : integer range 0 to 15;
signal wire_set_encoder_miliseconds : integer range 0 to 255;
signal wire_set_encoder_reset : std_logic;
signal wire_set_encoder_enabled : std_logic;

signal wire_rx_byte : std_logic_vector(7 downto 0);
signal wire_rx_valid : std_logic;

signal wire_uart_tx : std_logic;

BEGIN 

boss_inst : boss
generic map(
		MAX_ENCODERS => 35,
		DATA_SMALL_BYTES => 10
)
port map(
		clock => CLOCK_50,
		byte_in => wire_rx_byte,
		byte_in_valid => wire_rx_valid,
		boss_data => wire_boss_data,
		boss_data_len => wire_boss_data_len,
		boss_data_valid => wire_boss_data_valid,
		boss_data_ack  => wire_boss_data_ack,
		boss_select => wire_boss_select,
		set_encoder_vector => wire_set_encoder_vector,
		set_encoder_resolution => wire_set_encoder_resolution,
		set_encoder_miliseconds => wire_set_encoder_miliseconds,
		set_encoder_reset => wire_set_encoder_reset,
		set_encoder_enable => wire_set_encoder_enabled
		);



b2v_inst : watcher
GENERIC MAP(CLK_IN_FREQ => 50000000,
			DATA_MAX_BYTES => 73,
			MAX_ENCODERS => 35
			)
PORT MAP(clock => CLOCK_50,
		 areset => wire_set_encoder_reset,
		 data_out_ack => wire_watcher_ack,
		 gpio_a_channels => achans,
		 gpio_b_channels => bchans,
		 data_out_ready => wire_watcher_data_valid,
		 data_out => wire_watcher_data,
		 data_out_len => wire_watcher_data_len,
		 set_encoder_vector => wire_set_encoder_vector,
		 set_encoder_resolution => wire_set_encoder_resolution,
		 set_encoder_miliseconds => wire_set_encoder_miliseconds,
		 set_enabled => wire_set_encoder_enabled
		 );
		 


b2v_inst2 : uart_out_manager
GENERIC MAP(DATA_MAX_BYTES => 73,
			DATA_SMALL_BYTES => 10
			)
PORT MAP(clock => CLOCK_50,
		 tx_is_ready => wire_tx_ready,
		 watcher_data_valid => wire_watcher_data_valid,
		 boss_data_valid => wire_boss_data_valid,
		 boss_select => wire_boss_select,
		 boss_data => wire_boss_data,
		 boss_data_len => wire_boss_data_len,
		 watcher_data => wire_watcher_data,
		 watcher_data_len => wire_watcher_data_len,
		 tx_send => wire_tx_start,
		 watcher_data_ack => wire_watcher_ack,
		 boss_data_ack => wire_boss_data_ack,
		 tx_byte => wire_tx_byte);




b2v_inst4 : uart_tx
GENERIC MAP(DATA_BITS => 8,
			STOP_BITS => 1,
			TARGET_MCLK => 50000000,
			UART_BAUD_RATE => 230400
			)
PORT MAP(clock => CLOCK_50,
		 start => wire_tx_start,
		 data => wire_tx_byte,
		 trx => wire_uart_tx,
		 ready => wire_tx_ready);
		 
		 
rxcomp : uart_rx 
generic map(
DATA_BITS => 8,
UART_BAUD_RATE => 230400,
TARGET_MCLK => 50000000)
port map(
     clock => CLOCK_50,
      data => wire_rx_byte,
      data_valid => wire_rx_valid, 
      rxd  => GPIO_1_24
		);





b2v_inst6 : constant64
PORT MAP(		 result => zeroconst);

--note regarding channel pin assignments: I'm not drunk, channels are  assigned in
--non-monotonic fashion for pcb routing reasons.

--upper gpio header
achans(0) <= GPIO_0_0;
achans(1) <= GPIO_0_1;
achans(2) <= GPIO_0_3;
achans(3) <= GPIO_0_5;
achans(4) <= GPIO_0_7;
achans(5) <= GPIO_0_9;
achans(6) <= GPIO_0_11;
achans(7) <= GPIO_0_13;
achans(8) <= GPIO_0_15;
achans(9) <= GPIO_0_17;
achans(10) <= GPIO_0_19;
achans(11) <= GPIO_0_21;
achans(12) <= GPIO_0_23;
achans(13) <= GPIO_0_25;
achans(14) <= GPIO_0_27;
achans(17) <= GPIO_0_29;
achans(16) <= GPIO_0_31;
achans(15) <= GPIO_0_33;

bchans(0) <= GPIO_0_IN0;
bchans(1) <= GPIO_0_IN1;
bchans(2) <= GPIO_0_2;
bchans(3) <= GPIO_0_4;
bchans(4) <= GPIO_0_6;
bchans(5) <= GPIO_0_8;
bchans(6) <= GPIO_0_10;
bchans(7) <= GPIO_0_12;
bchans(8) <= GPIO_0_14;
bchans(9) <= GPIO_0_16;
bchans(10) <= GPIO_0_18;
bchans(11) <= GPIO_0_20;
bchans(12) <= GPIO_0_22;
bchans(13) <= GPIO_0_24;
bchans(14) <= GPIO_0_26;
bchans(17) <= GPIO_0_28;
bchans(16) <= GPIO_0_30;
bchans(15) <= GPIO_0_32;




--lower gpio header
bchans(19) <= GPIO_1_IN0;
bchans(18) <= GPIO_1_IN1;
bchans(20) <= GPIO_1_2;
bchans(21) <= GPIO_1_4;
bchans(22) <= GPIO_1_6;
bchans(23) <= GPIO_1_8;
bchans(24) <= GPIO_1_10;
bchans(25) <= GPIO_1_12;
bchans(26) <= GPIO_1_14;
bchans(27) <= GPIO_1_16;
bchans(28) <= GPIO_1_18;
bchans(29) <= GPIO_1_20;
bchans(31) <= GPIO_1_26;
bchans(32) <= GPIO_1_28;
bchans(33) <= GPIO_1_30;
bchans(34) <= GPIO_1_32;

achans(30) <= GPIO_1_25;
bchans(30) <= GPIO_1_23;

achans(19) <= GPIO_1_0;
achans(18) <= GPIO_1_1;
achans(20) <= GPIO_1_3;
achans(21) <= GPIO_1_5;
achans(22) <= GPIO_1_7;
achans(23) <= GPIO_1_9;
achans(24) <= GPIO_1_11;
achans(25) <= GPIO_1_13;
achans(26) <= GPIO_1_15;
achans(27) <= GPIO_1_17;
achans(28) <= GPIO_1_19;
achans(29) <= GPIO_1_21;
achans(31) <= GPIO_1_27;
achans(32) <= GPIO_1_29;
achans(33) <= GPIO_1_31;
achans(34) <= GPIO_1_33;

GPIO_2_1 <= wire_uart_tx; --lower gpio header pin - for inspection of uart output
GPIO_1_22 <= wire_uart_tx;

END bdf_type;