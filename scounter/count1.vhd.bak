library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity count1 is
	port(
		CLK	: in std_logic;
		nRST	: in std_logic;
		COUNT	: out std_logic_vector(3 downto 0)
	);
end count1;
architecture RTL of count1 is
	component scounter is
		port(
			CLK	: in std_logic;
			nRST: in std_logic;
			CNT	: out std_logic_vector(24 downto 0);
			CO	: out std_logic
		);
	end component;
	
	component cnt1 is
		port(
			CLK	: in std_logic;
			nRST: in std_logic;
			CNT	: out std_logic_vector(3 downto 0);
			CO	: out std_logic
		);
	end component;

	signal co_sig : std_logic;
	signal count_sig : std_logic_vector(3 downto 0);

	begin
		U0: scounter port map (CLK=>CLK, nRST=>nRST, CNT=>open, CO=>co_sig);
		U1: cnt1   port map (CLK=>co_sig, nRST=>nRST, CNT=>count_sig, CO=>open);
	
		COUNT <= not count_sig;
end RTL;