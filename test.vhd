
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
 
    COMPONENT regFile
    PORT(
         write_Data : IN  std_logic_vector(7 downto 0);
         write_sel : IN  std_logic_vector(1 downto 0);
         wr_en : IN  std_logic;
         read1 : OUT  std_logic_vector(7 downto 0);
         read1_sel : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    
	 
   --Inputs
   signal write_Data : std_logic_vector(7 downto 0) := (others => '0');
   signal write_sel : std_logic_vector(1 downto 0) := (others => '0');
   signal wr_en : std_logic := '0';
   signal read1_sel : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal read1 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regFile PORT MAP (
          write_Data => write_Data,
          write_sel => write_sel,
          wr_en => wr_en,
          read1 => read1,
          read1_sel => read1_sel,
          clk => clk,
          rst => rst
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
   rst <= '1'; wait for 100 ns;
	rst<='0';
	wr_en<='1';
	write_sel <= "01";
	write_data <= "00000101";
	wait for 100 ns;
	wr_en <='0';
	read1_sel <= "01";
	wait;
   end process;
	

END;
