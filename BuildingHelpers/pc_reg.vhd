library ieee;
use ieee.std_logic_1164.all;

entity pc_reg is
generic (WIDTH : positive := 32);
Port (
    clk : in std_logic;
    rst : in std_logic;
    en  : in std_logic;
    pc_next: in std_logic_vector(WIDTH-1 downto 0);
    pc: out std_logic_vector(WIDTH-1 downto 0)
);
end pc_reg;

architecture behavior of pc_reg is
begin
process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                pc <= (others => '0');
            elsif en = '1' then
                pc <= pc_next;
            end if;
        end if;
    end process;
        
        

end behavior;