library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use IEEE.numeric_std.all;

entity shifter is
  port (
     S    : in std_logic_vector(1 downto 0);
     B    : in std_logic_vector(15 downto 0);
     G    : out std_logic_vector(15 downto 0)
       );

end shifter;

architecture behavior of shifter is

  signal input : std_logic_vector(1 downto 0) := S;
  signal res : std_logic_vector(15 downto 0) := "0000000000000000";
 
begin
  input <= s;
  with input select
    res <= B                 when "00",
    '0' & B(15 downto 1)     when "01",
    B(14 downto 0) & '0'     when "10",
    "XXXXXXXXXXXXXXXX"       when others;

    G <= res(15 downto 0);
    
end behavior;

