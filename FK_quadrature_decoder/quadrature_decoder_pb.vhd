library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity quadrature_decoder_pb IS
generic(
		DEBOUNCE_COUNT : integer := 1000;
		RESOLUTION_POS : integer := 8192;
		RESOLUTION_REV : integer := 256
		);
port(
		clock : in std_logic;
		areset : in std_logic;
		Ain : in std_logic;
		Bin : in std_logic;
		position : out std_logic_vector(12 downto 0);
		revolution : out std_logic_vector(7 downto 0)
		);
end quadrature_decoder_pb;

architecture arch1 of quadrature_decoder_pb is

signal counterSignal : integer range 0 to RESOLUTION_POS := 0; 
signal revolutionSignal : integer range 0 to RESOLUTION_REV := 0;
constant MIN_POS : integer := 0;
constant MAX_POS : integer := RESOLUTION_POS-1;
constant MIN_REV : integer := 0;
constant MAX_REV : integer := RESOLUTION_REV-1;


begin


	position <= std_logic_vector(to_signed(counterSignal, position'length)); 
	revolution <= std_logic_vector(to_signed(revolutionSignal, revolution'length)); 

	decode : process(clock, areset) is
		
		variable positionCounter : integer range MIN_POS to MAX_POS := RESOLUTION_POS/2;
		variable revolutionCounter : integer range MIN_REV to MAX_REV := RESOLUTION_REV/2;
		variable Aprev : std_logic := '0';
		variable Anew : std_logic := '0';
		variable Bprev : std_logic := '0';
		variable Bnew : std_logic := '0';
		
		variable Adebounce : integer range -1 to DEBOUNCE_COUNT := -1;
		variable Bdebounce : integer range -1 to DEBOUNCE_COUNT := -1;
		
		variable tempIncrement : std_logic := '0';

	begin
	
	if areset = '1' then
	
		positionCounter := RESOLUTION_POS/2;
		revolutionCounter := RESOLUTION_REV/2;
		--Aprev := Ain;
		--Bprev := Bin;
		Adebounce := -1;
		Bdebounce := -1;
	
	else
	
		if rising_edge(clock) then
		
		
			--Debounce inputs
			if Adebounce > 0 then
				if Ain = Anew then 
					Adebounce := Adebounce - 1;
				else
					Adebounce := -1;
				end if;
			else
				--not currently debouncing
				if Ain /= Aprev then
					Anew := Ain;
					Adebounce := DEBOUNCE_COUNT;
				end if;
			end if;

			if Bdebounce > 0 then
				if Bin = Bnew then 
					Bdebounce := Bdebounce - 1;
				else
					Bdebounce := -1;
				end if;
			else
				--not currently debouncing B
				if Bin /= Bprev then
					Bnew := Bin;
					Bdebounce := DEBOUNCE_COUNT;
				end if;
			end if;
			
			--End of inputs debouncing logic
			--=================================
			
			
			--If either input achieved debounce, manage transition now
			if Adebounce = 0 or Bdebounce = 0 then
				if    Adebounce = 0 then
					Bnew := Bprev;
					--keep Anew as is
					Adebounce := -1;
				elsif Bdebounce = 0 then
					Anew := Aprev;
					--keep Bnew as is
					Bdebounce := -1;
				end if;
				
				-- increment/decrement position
				if (Bprev='1' xor Anew='1') then
					--increment
					if positionCounter = MAX_POS then
						positionCounter := MIN_POS;
						revolutionCounter := revolutionCounter + 1; --Maybe todo: handle overflow/saturation explicitly?
					else
						positionCounter := positionCounter + 1;
					end if;
				else
					--decrement
					if positionCounter = MIN_POS then
						positionCounter := MAX_POS;
						revolutionCounter := revolutionCounter - 1; --Maybe todo: handle overflow/saturation explicitly?
					else
						positionCounter := positionCounter - 1;
					end if;
				end if;
				
				Aprev := Anew;
				Bprev := Bnew;
					
			end if;
			--end of transition management logic
			
			counterSignal <= positionCounter;
			revolutionSignal <= revolutionCounter;
		
		
		end if;
	
	end if;
	
	
	end process decode;




	
	
	
	
	
	
	
	
	
	
	end arch1;