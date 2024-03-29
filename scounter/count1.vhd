library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity count1 is
	port(
		CLK :	in std_logic;
		nRST:	in std_logic;		
		CO:	out std_logic;
		COUNT:out std_logic_vector(24 downto 0)
	);
end count1;
architecture RTL of count1 is
	signal cnt_tmp: std_logic_vector(24 downto 0);
	begin
		process(nRST, CLK, cnt_tmp)
		begin
			if nRST = '0' then
				CO <= '0';
				cnt_tmp <= "0000000000000000000000000";
			elsif CLK'event and CLK = '1' then
				if cnt_tmp < "1011111010111100001000000" then
					cnt_tmp <= cnt_tmp + "0000000000000000000000001";
					CO <= '0';
				else
					cnt_tmp <= "0000000000000000000000000";
					CO <= '1';
				end if;
			end if;
		end process;
end RTL;