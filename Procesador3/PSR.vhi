

	COMPONENT PSR
	PORT(
		NZVC : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		psrOutToAlu : OUT std_logic
		);
	END COMPONENT;

	Inst_PSR: PSR PORT MAP(
		NZVC => ,
		psrOutToAlu => ,
		clk => ,
		reset => 
	);


