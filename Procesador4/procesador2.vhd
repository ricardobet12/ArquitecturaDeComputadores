library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity procesador2 is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           resultadoProcesador : OUT  STD_LOGIC_VECTOR (31 downto 0));
end procesador2;

architecture arq_procesador2 of procesador2 is

COMPONENT Suma
	PORT(
		entrada2 : IN std_logic_vector(31 downto 0);
		entrada1 : IN std_logic_vector(31 downto 0);          
		salida1 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT nPc
	PORT(
		entrada_nPC : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;
		clk : IN std_logic;          
		salida_nPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT IM
PORT(
	address : IN std_logic_vector(31 downto 0);
	reset : IN std_logic;          
	outInstruction : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT Control_Unit
PORT(
	Op3 : IN std_logic_vector(5 downto 0);
	Op : IN std_logic_vector(1 downto 0);          
	ALUOP : OUT std_logic_vector(5 downto 0)
	);
END COMPONENT;

COMPONENT RF
PORT(
	Rs1 : IN std_logic_vector(5 downto 0);
	Rs2 : IN std_logic_vector(5 downto 0);
	Rd : IN std_logic_vector(5 downto 0);
	Reset : IN std_logic;
	DWR : IN std_logic_vector(31 downto 0);          
	CRs1 : OUT std_logic_vector(31 downto 0);
	CRs2 : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT MUX
PORT(
	entrada1 : IN std_logic_vector(31 downto 0);
	imm : IN std_logic_vector(31 downto 0);
	senal_1 : IN std_logic;          
	salida : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

	COMPONENT SEV
	PORT(
		imm : IN std_logic_vector(12 downto 0);          
		salidaImm : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT ALU
	PORT(
		Op1 : IN std_logic_vector(31 downto 0);
		Op2 : IN std_logic_vector(31 downto 0);
		ALUOP : IN std_logic_vector(5 downto 0);
	CARRY : IN std_logic;		
		ALUResult : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	--PSR
		COMPONENT PSR
	PORT(
		NZVC : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;
		cwp: out STD_LOGIC_VECTOR (1 downto 0);
		ncwp: in STD_LOGIC_VECTOR (1 downto 0);		
		psrOutToAlu : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT PSR_Modifier
	PORT(
		muxOut : IN std_logic_vector(31 downto 0);
		UcOut : IN std_logic_vector(5 downto 0);
		aluOut : IN std_logic_vector(31 downto 0);
		rfOut1 : IN std_logic_vector(31 downto 0);          
		nzvc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	
	COMPONENT WindowsManager
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);
		cwp : IN std_logic_vector(1 downto 0);          
		nrs1 : OUT std_logic_vector(5 downto 0);
		nrs2 : OUT std_logic_vector(5 downto 0);
		nrd : OUT std_logic_vector(5 downto 0);
		ncwp : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

signal sumadorToNpc, npcToPc, pcToIm, imToURS, aluResult, rfToAlu1, rfToMux, seuToMux, muxToAlu:STD_LOGIC_VECTOR (31 downto 0);
signal aluop1,wdsTors1, wdsTors2, wdsTord: STD_LOGIC_VECTOR (5 downto 0);
signal psrModifier:STD_LOGIC_VECTOR (3 downto 0);
signal carry:  STD_LOGIC;
signal wdstopsr,psrtowds:STD_LOGIC_VECTOR (1 downto 0);

begin
Inst_Suma: Suma PORT MAP(
		entrada2 => x"00000001",
		entrada1 => npcToPc,
		salida1 => sumadorToNpc
	);

Inst_nPc: nPc PORT MAP(
	entrada_nPC => sumadorToNpc,
	reset => reset,
	clk => clk,
	salida_nPC => npcToPc
	);
	
Inst_Pc: nPc PORT MAP(
	entrada_nPC => npcToPc,
	reset => reset,
	clk => clk,
	salida_nPC => pcToIm
	);

Inst_IM: IM PORT MAP(
	address => pcToIm,
	reset => reset,
	outInstruction => imToURS
	);
	
Inst_Control_Unit: Control_Unit PORT MAP(
	Op3 => imToURS(24 downto 19),
	Op => imToURS(31 downto 30),
	ALUOP => aluop1 
	);

Inst_RF: RF PORT MAP(
	Rs1 => wdsTors1,
	Rs2 => wdsTors2,
	Rd => wdsTord,
	Reset => reset,
	DWR => aluResult,
	CRs1 => rfToAlu1,
	CRs2 => rfToMux
	);

Inst_MUX: MUX PORT MAP(
	entrada1 => rfToMux,
	imm => seuToMux,
	senal_1 => imToURS(13),
	salida => muxToAlu
	);
	
Inst_SEV: SEV PORT MAP(
	imm => imToURS(12 downto 0),
	salidaImm => seuToMux
	);
	
Inst_ALU: ALU PORT MAP(
	Op1 => rfToAlu1,
	Op2 => muxToAlu,
	ALUOP => aluop1,
	CARRY => carry,
	ALUResult => aluResult
	);
	
Inst_PSR: PSR PORT MAP(
	NZVC => psrModifier,
	psrOutToAlu => carry,
	clk => clk,
	cwp => psrTowds,
	ncwp=> wdsTopsr,
	reset => reset
);

Inst_PSR_Modifier: PSR_Modifier PORT MAP(
	muxOut => muxToAlu,
	UcOut => aluop1,
	aluOut => aluResult,
	rfOut1 => rfToAlu1,
	nzvc => psrModifier
);

Inst_WindowsManager: WindowsManager PORT MAP(
	rs1 =>imToURS(18 downto 14) ,
	rs2 =>imToURS(4 downto 0) ,
	rd =>imToURS(29 downto 25) ,
	op =>imToURS(31 downto 30) ,
	op3 =>imToURS(24 downto 19) ,
	cwp => psrtowds ,
	nrs1 => wdsTors1,
	nrs2 => wdsTors2,
	nrd => wdsTord,
	ncwp => wdstopsr
	);

	resultadoProcesador <= aluResult;

end arq_procesador2;