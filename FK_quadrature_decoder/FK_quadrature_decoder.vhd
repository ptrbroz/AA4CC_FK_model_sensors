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
		KEY0 :  IN  STD_LOGIC;
		LED0 :  OUT  STD_LOGIC;
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
		GPIO_1_22 :  IN  STD_LOGIC;
		GPIO_1_23 :  IN  STD_LOGIC;
		GPIO_1_24 :  OUT  STD_LOGIC;
		GPIO_1_25 :  IN  STD_LOGIC;
		GPIO_1_26 :  IN  STD_LOGIC;
		GPIO_1_27 :  IN  STD_LOGIC;
		GPIO_1_28 :  IN  STD_LOGIC;
		GPIO_1_29 :  IN  STD_LOGIC;
		GPIO_1_30 :  IN  STD_LOGIC;
		GPIO_1_31 :  IN  STD_LOGIC;
		GPIO_1_32 :  IN  STD_LOGIC;
		GPIO_1_33 :  IN  STD_LOGIC
	);
END FK_quadrature_decoder;

ARCHITECTURE bdf_type OF FK_quadrature_decoder IS 

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
		 data_out : OUT STD_LOGIC_VECTOR(471 DOWNTO 0);
		 data_out_len : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT uart_out_manager
GENERIC (DATA_MAX_BYTES : INTEGER;
			DATA_SMALL_BYTES : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 tx_is_ready : IN STD_LOGIC;
		 watcher_data_valid : IN STD_LOGIC;
		 boss_data_valid : IN STD_LOGIC;
		 boss_select : IN STD_LOGIC;
		 boss_data : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
		 boss_data_len : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 watcher_data : IN STD_LOGIC_VECTOR(471 DOWNTO 0);
		 watcher_data_len : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
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

COMPONENT constant64
	PORT(		 result : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	achans :  STD_LOGIC_VECTOR(34 DOWNTO 0);
SIGNAL	bchans :  STD_LOGIC_VECTOR(34 DOWNTO 0);
SIGNAL	zeroconst :  STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(471 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
LED0 <= KEY0;



b2v_inst : watcher
GENERIC MAP(CLK_IN_FREQ => 50000000,
			DATA_MAX_BYTES => 59,
			MAX_ENCODERS => 35
			)
PORT MAP(clock => CLOCK_50,
		 areset => SYNTHESIZED_WIRE_11,
		 data_out_ack => SYNTHESIZED_WIRE_1,
		 gpio_a_channels => achans,
		 gpio_b_channels => bchans,
		 data_out_ready => SYNTHESIZED_WIRE_4,
		 data_out => SYNTHESIZED_WIRE_7,
		 data_out_len => SYNTHESIZED_WIRE_8);


b2v_inst2 : uart_out_manager
GENERIC MAP(DATA_MAX_BYTES => 59,
			DATA_SMALL_BYTES => 5
			)
PORT MAP(clock => CLOCK_50,
		 areset => SYNTHESIZED_WIRE_11,
		 tx_is_ready => SYNTHESIZED_WIRE_3,
		 watcher_data_valid => SYNTHESIZED_WIRE_4,
		 boss_data_valid => SYNTHESIZED_WIRE_12,
		 boss_select => SYNTHESIZED_WIRE_12,
		 boss_data => zeroconst(39 DOWNTO 0),
		 boss_data_len => zeroconst(5 DOWNTO 0),
		 watcher_data => SYNTHESIZED_WIRE_7,
		 watcher_data_len => SYNTHESIZED_WIRE_8,
		 tx_send => SYNTHESIZED_WIRE_9,
		 watcher_data_ack => SYNTHESIZED_WIRE_1,
		 tx_byte => SYNTHESIZED_WIRE_10);


b2v_inst3 : constant1
PORT MAP(		 result(0) => SYNTHESIZED_WIRE_12);


b2v_inst4 : uart_tx
GENERIC MAP(DATA_BITS => 8,
			STOP_BITS => 1,
			TARGET_MCLK => 50000000,
			UART_BAUD_RATE => 230400
			)
PORT MAP(clock => CLOCK_50,
		 start => SYNTHESIZED_WIRE_9,
		 data => SYNTHESIZED_WIRE_10,
		 trx => GPIO_1_24,
		 ready => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_11 <= NOT(KEY0);



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

--uart tx => GPIO_1_24 see uart_tx entity above
--uart rx todo to GPIO_1_22

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



END bdf_type;