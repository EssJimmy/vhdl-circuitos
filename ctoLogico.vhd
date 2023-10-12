library ieee;
use iee.std_logic_1164.all;

entity ctoLogico is
  port(
     S  :  in std_logic_vector(1 downto 0);
     A  :  in std_logic_vector(15 downto 0);
     B  :  in std_logic_vector(15 downto 0);
     G  :  in std_logic_vector(15 downto 0)
      );
end ctoLogico;

architecture behavior of ctoLogico is
  
begin
  with S select 
    G <= A AND B when "00",
         A OR B  when "01",
         A XOR B when "10",
         NOT(A)  when "11",
         "XXXXXXXXXXXXXXXX" when others;
  
  
end behavior;
