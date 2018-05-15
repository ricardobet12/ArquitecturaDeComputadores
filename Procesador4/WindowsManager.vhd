library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

entity WindowsManager is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           cwp : in  STD_LOGIC_VECTOR (1 downto 0);
           nrs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrd : out  STD_LOGIC_VECTOR (5 downto 0);
           ncwp : out  STD_LOGIC_VECTOR (1 downto 0):="00");--Valor por defecto
end WindowsManager;

architecture Behavioral of WindowsManager is

signal Rs1intr,Rs2intr,Rdintr: integer range 0 to 39:=0;

begin
process(cwp,op,op3,rs1,rs2,rd)
	begin
		if(op = "10") then
			if(op3 = "111100")then--SAVE
				ncwp<=conv_std_logic_vector(conv_integer(cwp) - 1,2);
			elsif(op3 = "111101")then--RESTORE
				ncwp<=conv_std_logic_vector(conv_integer(cwp)+ 1,2);
			else
				ncwp<=cwp;
			end if;
		else
			ncwp<=cwp;
		end if;
		if(rs1>="11000" or rs1<="11111") then--Si es un registro de entrada (r[24] - r[31])
				Rs1intr<= conv_integer(rs1)-(conv_integer(cwp)*16);

		elsif(rs1>="10000" or rs1<="10111") then--Si es un registro de local (r[16] - r[23])
				Rs1intr <= conv_integer(rs1)+(conv_integer(cwp)*16);

		elsif(rs1>="01000" or rs1<="01111") then--Si es un registro de salida (r[8] - r[15])
				Rs1intr <= conv_integer(rs1)+ (conv_integer(cwp)*16);

		elsif(rs1>="00000" or rs1<="00111") then--Si es un registro global (r[0] - r[7])
				Rs1intr <= conv_integer(rs1);
		end if;

		if(rs2>="11000" and rs2<="11111") then--Si es un registro de entrada (r[24] - r[31])
				Rs2intr <= conv_integer(rs2)-(conv_integer(cwp)*16);

		elsif(rs2>="10000" and rs2<="10111") then--Si es un registro de local (r[16] - r[23])
				Rs2intr <= conv_integer(rs2)+(conv_integer(cwp)*16);

		elsif(rs2>="01000" and rs2<="01111") then--Si es un registro de salida (r[8] - r[15])
				Rs2intr <= conv_integer(rs2)+ (conv_integer(cwp)*16);

		elsif(rs2>="00000" and rs2<="00111") then--Si es un registro global (r[0] - r[7])
				Rs2intr <= conv_integer(rs2);

		end if;

		if(rd>="11000" and rd<="11111") then--Si es un registro de entrada (r[24] - r[31])
				Rdintr<= conv_integer(rd)-(conv_integer(cwp)*16);

		elsif(rd>="10000" and rd<="10111") then--Si es un registro de local (r[16] - r[23])
				Rdintr<= conv_integer(rd)+(conv_integer(cwp)*16);

		elsif(rd>="01000" and rd<="01111") then--Si es un registro de salida (r[8] - r[15])
				Rdintr <= conv_integer(rd)+ (conv_integer(cwp)*16);

		elsif(rd>="00000" and rd<="00111") then--Si es un registro global (r[0] - r[7])
				Rdintr <= conv_integer(rd);

		end if;
end process;

nrs1 <= conv_std_logic_vector(Rs1intr, 6);
nrs2 <= conv_std_logic_vector(Rs2intr, 6);
nrd <= conv_std_logic_vector(Rdintr, 6);

end Behavioral;