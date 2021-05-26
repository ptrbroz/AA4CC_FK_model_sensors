-- megafunction wizard: %LPM_CONSTANT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CONSTANT 

-- ============================================================
-- File Name: constant64.vhd
-- Megafunction Name(s):
-- 			LPM_CONSTANT
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


--lpm_constant CBX_AUTO_BLACKBOX="ALL" ENABLE_RUNTIME_MOD="NO" LPM_CVALUE=0000000000000000 LPM_WIDTH=64 result
--VERSION_BEGIN 13.0 cbx_lpm_constant 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  constant64_lpm_constant_0d9 IS 
	 PORT 
	 ( 
		 result	:	OUT  STD_LOGIC_VECTOR (63 DOWNTO 0)
	 ); 
 END constant64_lpm_constant_0d9;

 ARCHITECTURE RTL OF constant64_lpm_constant_0d9 IS

 BEGIN

	result <= (OTHERS => '0');

 END RTL; --constant64_lpm_constant_0d9
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY constant64 IS
	PORT
	(
		result		: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
END constant64;


ARCHITECTURE RTL OF constant64 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (63 DOWNTO 0);



	COMPONENT constant64_lpm_constant_0d9
	PORT (
			result	: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(63 DOWNTO 0);

	constant64_lpm_constant_0d9_component : constant64_lpm_constant_0d9
	PORT MAP (
		result => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: Radix NUMERIC "10"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: Value NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "64"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_CVALUE NUMERIC "0"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=NO"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CONSTANT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "64"
-- Retrieval info: USED_PORT: result 0 0 64 0 OUTPUT NODEFVAL "result[63..0]"
-- Retrieval info: CONNECT: result 0 0 64 0 @result 0 0 64 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL constant64.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL constant64.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL constant64.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL constant64.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL constant64_inst.vhd FALSE