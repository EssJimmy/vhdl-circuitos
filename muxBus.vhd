library iee;
use ieee.std_logic_1164.all;

entity muxBus is
  port(
     S  :  in std_logic;
     I0 :  in std_logic_vector(15 downto 0);
     I1 :  in std_logic_vector(15 downto 0);
     Y  :  in std_logic_vector(15 downto 0);
      );
      
end muxBus;

architecture behavior of muxBus is
  
begin
  with S select
    Y <= I0 when '0',
         I1 when '1',
         "XXXXXXXXXXXXXXXX" when others;
  
  
end behavior;
