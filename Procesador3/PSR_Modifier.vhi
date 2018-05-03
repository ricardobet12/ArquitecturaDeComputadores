
	COMPONENT PSR_Modifier
	PORT(
		muxOut : IN std_logic_vector(31 downto 0);
		UcOut : IN std_logic_vector(5 downto 0);
		aluOut : IN std_logic_vector(31 downto 0);
		rfOut1 : IN std_logic_vector(31 downto 0);          
		nzvc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_PSR_Modifier: PSR_Modifier PORT MAP(
		muxOut => ,
		UcOut => ,
		aluOut => ,
		rfOut1 => ,
		nzvc => 
	);


