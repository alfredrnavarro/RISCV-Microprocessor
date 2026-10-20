library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
generic (
    WIDTH : positive := 32
);
width = 32
port ( 
    d0, d1: in std_logic_vector(WIDTH-1 downto 0);
    sel: in std_logic_vector(1 downto 0);
    y: out std_logic_vector(WIDTH-1 downto 0)

);
end mux2x1;

architecture behavior of mux2x1 is
begin
    with sel select
        y <= d0 when "00", d1 when others;

end behavior;