----------------------------------------------------------------------------
--
--  Atmel AVR Register Array Test Bench
--
--  Because of the nature of the tests required, it was seen as a lot
--  simpler to create a C++ program to generate the tests.
--  This allows us to use smart data structures that prevent excessive
--  code duplication.
--  
--  The C++ generator code can be found in:
--      ../../test_gen/reg_test_generator.cpp
--  And the associated generated tests are in:
--      ../../test_gen/reg_test.txt
--
--  Revision History:
--      01/25/15    Peter Cuy       initial version
--      01/28/15    Albert Gural    added C++ generated tests
--
----------------------------------------------------------------------------
-- bring in the necessary packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;       --contains conversion functions

library opcodes;
use opcodes.opcodes.all;

library ALUCommands;
use ALUCommands.ALUCommands.all;

entity REG_TEST_TB is
end REG_TEST_TB;

architecture TB_ARCHITECTURE of REG_TEST_TB is 
    component REG_TEST
        port (
            IR       :  in  opcode_word;                        -- Instruction Register
            RegIn    :  in  std_logic_vector(7 downto 0);       -- input register bus
            clock    :  in  std_logic;                          -- system clock
            RegAOut  :  out std_logic_vector(7 downto 0);       -- register bus A out
            RegBOut  :  out std_logic_vector(7 downto 0)  
        );
    end component;
    
    signal IR           :   opcode_word;                        -- Instruction Register
    signal RegIn        :   std_logic_vector(7 downto 0);       -- input register bus
    signal clock        :   std_logic;                          -- system clock
    signal RegAOut      :   std_logic_vector(7 downto 0);       -- register bus A out
    signal RegBOut      :   std_logic_vector(7 downto 0);
    
    signal  END_SIM     :  BOOLEAN := FALSE;                   -- end simulation flag

begin
    UUT : REG_TEST
        port map(
            IR      =>  IR     , 
            RegIn   =>  RegIn  , 
            clock   =>  clock  , 
            RegAOut =>  RegAOut, 
            RegBOut =>  RegBOut 
        );
    
    -- Main testing procedure
    process
    begin
        wait for 25 ns;
        

        -- initialize all registers to 0
        IR <= "0000110000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110000010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110000100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110000110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110001000100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110001010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110001100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110001110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110010001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110010011001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110010101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110010111011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110011001100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110011011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110011101110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000110011111111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111100010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111100100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111100110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111101000100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111101010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111101100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111101110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111110001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111110011001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111110101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111110111011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111111001100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111111011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111111101110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "0000111111111111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        RegIn <= "00011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 3 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0000011000111110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000011"); -- Check that RegA is correct
        assert(RegBOut = "00011110"); -- Check that RegB is correct
        RegIn <= "10000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 12 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0001111011000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001100"); -- Check that RegA is correct
        assert(RegBOut = "00010110"); -- Check that RegB is correct
        RegIn <= "10101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 16 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0110000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010000"); -- Check that RegA is correct
        RegIn <= "11110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 27 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0000100110111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011011"); -- Check that RegA is correct
        assert(RegBOut = "00001001"); -- Check that RegB is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001001000";
        wait until (clock = '1');


        -- Testing: SUBI on inputs ra = 12 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0101000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011000"); -- Check that RegA is correct
        RegIn <= "00000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011001"); -- Check that RegA is correct
        RegIn <= "10110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 30 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0100000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 8 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0011000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000110"); -- Check that RegA is correct
        RegIn <= "10111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 6 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0000011001101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000110"); -- Check that RegA is correct
        assert(RegBOut = "00011111"); -- Check that RegB is correct
        RegIn <= "00000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000110"); -- Check that RegA is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110111"); -- Check that RegA is correct
        RegIn <= "00011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 20 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111100101000100";
        RegIn <= "10010110";
        wait until (clock = '1');
        assert(RegAOut = "00010100");


        -- Testing: INC on inputs ra = 5 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010001010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 9 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0001100010011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001001"); -- Check that RegA is correct
        assert(RegBOut = "00001010"); -- Check that RegB is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 14 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010011100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001110"); -- Check that RegA is correct
        RegIn <= "00100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 16 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0111000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110001"); -- Check that RegA is correct
        RegIn <= "01000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 22 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010101100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 18 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0000111100100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        assert(RegBOut = "00010010"); -- Check that RegB is correct
        RegIn <= "10011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 9 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0011000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        RegIn <= "10101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001001000";
        wait until (clock = '1');


        -- Testing: BSET on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000111000";
        wait until (clock = '1');


        -- Testing: ASR on inputs ra = 16 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010100000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000000"); -- Check that RegA is correct
        RegIn <= "00110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 1 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0011000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 17 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0000101100011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        assert(RegBOut = "00011101"); -- Check that RegB is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 31 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0101000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        RegIn <= "10110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 25 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0000010110010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "10111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 29 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0101000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011101"); -- Check that RegA is correct
        RegIn <= "00101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 30 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010111100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 9 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0001110010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "00000000"); -- Check that RegB is correct
        RegIn <= "10110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000111000";
        wait until (clock = '1');


        -- Testing: ADD on inputs ra = 7 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0000111001110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000111"); -- Check that RegA is correct
        assert(RegBOut = "00010010"); -- Check that RegB is correct
        RegIn <= "10111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 22 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010101100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        RegIn <= "00101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 14 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0010000011100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100000"); -- Check that RegA is correct
        assert(RegBOut = "00000110"); -- Check that RegB is correct
        RegIn <= "10000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 1 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000110000011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000001"); -- Check that RegA is correct
        assert(RegBOut = "00001101"); -- Check that RegB is correct
        RegIn <= "11010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 29 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010111011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101100"); -- Check that RegA is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011011000";
        wait until (clock = '1');


        -- Testing: SBC on inputs ra = 4 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0000100001001111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000100"); -- Check that RegA is correct
        assert(RegBOut = "00001111"); -- Check that RegB is correct
        RegIn <= "01001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100101"); -- Check that RegA is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        RegIn <= "00101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 11 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010010110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001011"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 19 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001010100110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010011"); -- Check that RegA is correct
        RegIn <= "10011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 20 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0001111101000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010110"); -- Check that RegA is correct
        assert(RegBOut = "00010101"); -- Check that RegB is correct
        RegIn <= "11010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 20 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001010101000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010100"); -- Check that RegA is correct
        RegIn <= "01011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 21 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111100101010010";
        RegIn <= "00100010";
        wait until (clock = '1');
        assert(RegAOut = "00010101");


        -- Testing: SUBI on inputs ra = 12 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0101000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011001"); -- Check that RegA is correct
        RegIn <= "11010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 13 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010011010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001101"); -- Check that RegA is correct
        RegIn <= "11010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 21 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0000110101010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100010"); -- Check that RegA is correct
        assert(RegBOut = "00000110"); -- Check that RegB is correct
        RegIn <= "11011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 10 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010010100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001010"); -- Check that RegA is correct
        RegIn <= "11000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 11 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0101000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        RegIn <= "10000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 4 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001110001001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        assert(RegBOut = "10000011"); -- Check that RegB is correct
        RegIn <= "01011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110001001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        assert(RegBOut = "10000011"); -- Check that RegB is correct
        RegIn <= "01010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 20 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010101000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011001"); -- Check that RegA is correct
        RegIn <= "10001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 27 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010110110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000001"); -- Check that RegA is correct
        RegIn <= "00010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 27 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010110110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010101"); -- Check that RegA is correct
        RegIn <= "10000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 24 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0010101110000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111001"); -- Check that RegA is correct
        assert(RegBOut = "00110010"); -- Check that RegB is correct
        RegIn <= "10010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011101000";
        wait until (clock = '1');


        -- Testing: SUBI on inputs ra = 5 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0101000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011001"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 24 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0011000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010011"); -- Check that RegA is correct
        RegIn <= "11011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 7 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010001111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111111"); -- Check that RegA is correct
        RegIn <= "11010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 10 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0101000010100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111111"); -- Check that RegA is correct
        RegIn <= "11010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 8 and rb = 22 (only the ones that are used for the instruction).
        IR <= "1001010010000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001000"); -- Check that RegA is correct
        RegIn <= "11111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 27 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010110111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        RegIn <= "10101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 4 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010001000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        RegIn <= "01111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 18 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0001011100101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011110"); -- Check that RegA is correct
        assert(RegBOut = "10101101"); -- Check that RegB is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 5 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0010011001011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010011"); -- Check that RegA is correct
        assert(RegBOut = "11011001"); -- Check that RegB is correct
        RegIn <= "11110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 19 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0001111100111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011110"); -- Check that RegA is correct
        assert(RegBOut = "10010010"); -- Check that RegB is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 11 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010010110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        RegIn <= "11000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 25 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010110011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101100"); -- Check that RegA is correct
        RegIn <= "10010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 10 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1111101010101110";
        wait until (clock = '1');
        assert(RegAOut = "11000000");


        -- Testing: NEG on inputs ra = 9 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010010010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110010"); -- Check that RegA is correct
        RegIn <= "01101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 9 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001110010011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101000"); -- Check that RegA is correct
        assert(RegBOut = "11000000"); -- Check that RegB is correct
        RegIn <= "01111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110010011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101000"); -- Check that RegA is correct
        assert(RegBOut = "11000000"); -- Check that RegB is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0100000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        RegIn <= "00010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 27 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0000100110111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101101"); -- Check that RegA is correct
        assert(RegBOut = "11000000"); -- Check that RegB is correct
        RegIn <= "10100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 8 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010010000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111010"); -- Check that RegA is correct
        RegIn <= "10001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 9 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0001100010011011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101000"); -- Check that RegA is correct
        assert(RegBOut = "11000101"); -- Check that RegB is correct
        RegIn <= "10000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 12 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001010011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101110"); -- Check that RegA is correct
        RegIn <= "11110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 29 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010111010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        RegIn <= "10010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 27 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010110110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100101"); -- Check that RegA is correct
        RegIn <= "11000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 9 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0001010010011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        assert(RegBOut = "10001100"); -- Check that RegB is correct
        RegIn <= "10011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 6 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1001010001101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000110"); -- Check that RegA is correct
        RegIn <= "10110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011001"); -- Check that RegA is correct
        RegIn <= "11011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110000"); -- Check that RegA is correct
        RegIn <= "00100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 21 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010101010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        RegIn <= "00111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 17 and rb = 25 (only the ones that are used for the instruction).
        IR <= "1001010100010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010100"); -- Check that RegA is correct
        RegIn <= "01101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 6 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010001100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110101"); -- Check that RegA is correct
        RegIn <= "01001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 16 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010100000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110010"); -- Check that RegA is correct
        RegIn <= "11111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 17 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0100000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101100"); -- Check that RegA is correct
        RegIn <= "11100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000111000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 7 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001110001110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010100"); -- Check that RegA is correct
        assert(RegBOut = "11110100"); -- Check that RegB is correct
        RegIn <= "00111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110001110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010100"); -- Check that RegA is correct
        assert(RegBOut = "11110100"); -- Check that RegB is correct
        RegIn <= "00101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 9 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010010010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        RegIn <= "10000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 26 and rb = 22 (only the ones that are used for the instruction).
        IR <= "1001010110100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "01111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 3 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001011000110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000011"); -- Check that RegA is correct
        assert(RegBOut = "11100010"); -- Check that RegB is correct
        RegIn <= "00100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111000"); -- Check that RegA is correct
        RegIn <= "00111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000000"); -- Check that RegA is correct
        RegIn <= "01100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 22 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010101101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101101"); -- Check that RegA is correct
        RegIn <= "00110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 25 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0111000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010111"); -- Check that RegA is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 30 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010111100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011001"); -- Check that RegA is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 3 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010000110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000011"); -- Check that RegA is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 30 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1111100111100101";
        RegIn <= "11001011";
        wait until (clock = '1');
        assert(RegAOut = "01101101");


        -- Testing: LSR on inputs ra = 3 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010000110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011001000";
        wait until (clock = '1');


        -- Testing: CP on inputs ra = 5 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0001011001011011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110100"); -- Check that RegA is correct
        assert(RegBOut = "01100010"); -- Check that RegB is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 9 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001110010010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        assert(RegBOut = "11110100"); -- Check that RegB is correct
        RegIn <= "11100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110010010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        assert(RegBOut = "11110100"); -- Check that RegB is correct
        RegIn <= "00101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 6 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0001101001100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001110"); -- Check that RegA is correct
        assert(RegBOut = "00110100"); -- Check that RegB is correct
        RegIn <= "00001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 19 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0000010100111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        assert(RegBOut = "10001100"); -- Check that RegB is correct
        RegIn <= "10001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001011"); -- Check that RegA is correct
        RegIn <= "01110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100011"); -- Check that RegA is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001011000";
        wait until (clock = '1');


        -- Testing: ROR on inputs ra = 12 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010011000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110001"); -- Check that RegA is correct
        RegIn <= "10000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 19 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010100110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        RegIn <= "11010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110001"); -- Check that RegA is correct
        RegIn <= "11000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111111"); -- Check that RegA is correct
        RegIn <= "01000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011001"); -- Check that RegA is correct
        RegIn <= "00110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010101"); -- Check that RegA is correct
        RegIn <= "01111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 16 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        RegIn <= "01010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 18 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0000011100100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011110"); -- Check that RegA is correct
        assert(RegBOut = "00111000"); -- Check that RegB is correct
        RegIn <= "10101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 8 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0010011010000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001100"); -- Check that RegA is correct
        assert(RegBOut = "11010000"); -- Check that RegB is correct
        RegIn <= "00001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 28 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010111000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110000"); -- Check that RegA is correct
        RegIn <= "11001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 29 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010111010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111111"); -- Check that RegA is correct
        RegIn <= "10001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 1 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010001000011011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101100"); -- Check that RegA is correct
        assert(RegBOut = "01100010"); -- Check that RegB is correct
        RegIn <= "11111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 15 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010011110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001111"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 27 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0101000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100010"); -- Check that RegA is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000001000";
        wait until (clock = '1');


        -- Testing: SBCI on inputs ra = 26 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0100000010100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111110"); -- Check that RegA is correct
        RegIn <= "10100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 19 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0001101100110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        assert(RegBOut = "11010000"); -- Check that RegB is correct
        RegIn <= "00001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 1 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0101000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100010"); -- Check that RegA is correct
        RegIn <= "01011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 12 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1001110011000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        assert(RegBOut = "01000001"); -- Check that RegB is correct
        RegIn <= "01001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110011000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        assert(RegBOut = "01000001"); -- Check that RegB is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 5 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0010011001010100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110100"); -- Check that RegA is correct
        assert(RegBOut = "10001101"); -- Check that RegB is correct
        RegIn <= "00110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 10 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0110000010100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100110"); -- Check that RegA is correct
        RegIn <= "11001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 16 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010100000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        RegIn <= "00100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 24 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0000011110001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        assert(RegBOut = "10001001"); -- Check that RegB is correct
        RegIn <= "00010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 20 and rb = 25 (only the ones that are used for the instruction).
        IR <= "1001010101000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001101"); -- Check that RegA is correct
        RegIn <= "00100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 2 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0000101000101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        assert(RegBOut = "11001010"); -- Check that RegB is correct
        RegIn <= "10011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 24 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000110110001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        assert(RegBOut = "11010011"); -- Check that RegB is correct
        RegIn <= "10001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 0 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0000100000000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001100"); -- Check that RegA is correct
        assert(RegBOut = "01000001"); -- Check that RegB is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 6 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0001010001100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001000"); -- Check that RegA is correct
        assert(RegBOut = "11010100"); -- Check that RegB is correct
        RegIn <= "10010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 16 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0100000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100111"); -- Check that RegA is correct
        RegIn <= "10001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 13 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0001111011011001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010011"); -- Check that RegA is correct
        assert(RegBOut = "00111111"); -- Check that RegB is correct
        RegIn <= "11100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001010"); -- Check that RegA is correct
        RegIn <= "10110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001001"); -- Check that RegA is correct
        RegIn <= "10000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 8 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0010010010000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001011"); -- Check that RegA is correct
        assert(RegBOut = "01110011"); -- Check that RegB is correct
        RegIn <= "11101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 1 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010000010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110011"); -- Check that RegA is correct
        RegIn <= "11010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 4 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010001000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111001"); -- Check that RegA is correct
        RegIn <= "10011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001110000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011100"); -- Check that RegA is correct
        assert(RegBOut = "01100100"); -- Check that RegB is correct
        RegIn <= "00100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011100"); -- Check that RegA is correct
        assert(RegBOut = "00100110"); -- Check that RegB is correct
        RegIn <= "11111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 17 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111100100010100";
        RegIn <= "10010011";
        wait until (clock = '1');
        assert(RegAOut = "01011110");


        -- Testing: SUB on inputs ra = 19 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0001100100111111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001011"); -- Check that RegA is correct
        assert(RegBOut = "11110110"); -- Check that RegB is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 0 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0111000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001101"); -- Check that RegA is correct
        RegIn <= "10001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 30 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010111100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000010"); -- Check that RegA is correct
        RegIn <= "01101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 15 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010011110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        RegIn <= "10100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110001"); -- Check that RegA is correct
        RegIn <= "01100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000000"); -- Check that RegA is correct
        RegIn <= "00100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 22 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0000010101100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110100"); -- Check that RegA is correct
        assert(RegBOut = "11010100"); -- Check that RegB is correct
        RegIn <= "10101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 30 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0011000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101111"); -- Check that RegA is correct
        RegIn <= "10100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 9 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001100"); -- Check that RegA is correct
        RegIn <= "01001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111111"); -- Check that RegA is correct
        RegIn <= "00000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 23 and rb = 22 (only the ones that are used for the instruction).
        IR <= "1001010101110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010111"); -- Check that RegA is correct
        RegIn <= "11000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 29 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0010000111011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100111"); -- Check that RegA is correct
        assert(RegBOut = "11101001"); -- Check that RegB is correct
        RegIn <= "10100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 11 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0000010010111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000101"); -- Check that RegA is correct
        assert(RegBOut = "11101001"); -- Check that RegB is correct
        RegIn <= "10000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010001000";
        wait until (clock = '1');


        -- Testing: ADC on inputs ra = 2 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0001111000101001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011100"); -- Check that RegA is correct
        assert(RegBOut = "00000001"); -- Check that RegB is correct
        RegIn <= "01010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 7 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001011001110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010100"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 24 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000110110001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001101"); -- Check that RegA is correct
        assert(RegBOut = "11100111"); -- Check that RegB is correct
        RegIn <= "10010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 29 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111101111011001";
        wait until (clock = '1');
        assert(RegAOut = "10100110");


        -- Testing: ANDI on inputs ra = 20 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0111000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100111"); -- Check that RegA is correct
        RegIn <= "11111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 23 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010101110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000110"); -- Check that RegA is correct
        RegIn <= "10110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 21 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010101010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111000"); -- Check that RegA is correct
        RegIn <= "11110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 0 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0100000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001010"); -- Check that RegA is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 20 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0111000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111010"); -- Check that RegA is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 5 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001111001010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110001"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "00001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        RegIn <= "11110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011001"); -- Check that RegA is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 15 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001110011111110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100001"); -- Check that RegA is correct
        assert(RegBOut = "10000011"); -- Check that RegB is correct
        RegIn <= "00111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110011111110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100001"); -- Check that RegA is correct
        assert(RegBOut = "10000011"); -- Check that RegB is correct
        RegIn <= "01111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 27 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0100000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        RegIn <= "10001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 15 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0000110011110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100001"); -- Check that RegA is correct
        assert(RegBOut = "11010100"); -- Check that RegB is correct
        RegIn <= "01011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 5 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001000"); -- Check that RegA is correct
        RegIn <= "01001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 18 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010100101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011110"); -- Check that RegA is correct
        RegIn <= "01100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 4 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010001000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011111"); -- Check that RegA is correct
        RegIn <= "11000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 7 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0111000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110101"); -- Check that RegA is correct
        RegIn <= "01001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 14 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000011"); -- Check that RegA is correct
        RegIn <= "01101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100101"); -- Check that RegA is correct
        RegIn <= "11101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100110"); -- Check that RegA is correct
        RegIn <= "00010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 27 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001110110111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001010"); -- Check that RegA is correct
        assert(RegBOut = "11101001"); -- Check that RegB is correct
        RegIn <= "10000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110110111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001010"); -- Check that RegA is correct
        assert(RegBOut = "11101001"); -- Check that RegB is correct
        RegIn <= "01000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 8 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0101000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 30 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0001110111100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101111"); -- Check that RegA is correct
        assert(RegBOut = "11010100"); -- Check that RegB is correct
        RegIn <= "10100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 8 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010010001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101001"); -- Check that RegA is correct
        RegIn <= "01101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 4 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010001000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000011"); -- Check that RegA is correct
        RegIn <= "11011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        RegIn <= "00010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000001"); -- Check that RegA is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 3 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010000110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        RegIn <= "11001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 7 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010100"); -- Check that RegA is correct
        RegIn <= "01011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001111000";
        wait until (clock = '1');


        -- Testing: ADD on inputs ra = 8 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0000111010001111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101100"); -- Check that RegA is correct
        assert(RegBOut = "01000110"); -- Check that RegB is correct
        RegIn <= "01011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 31 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0110000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000110"); -- Check that RegA is correct
        RegIn <= "01001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 14 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101111"); -- Check that RegA is correct
        RegIn <= "00111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 30 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1001010111100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100001"); -- Check that RegA is correct
        RegIn <= "10011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 18 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000100100101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100001"); -- Check that RegA is correct
        assert(RegBOut = "11100111"); -- Check that RegB is correct
        RegIn <= "00101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 20 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010101000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "10111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 15 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0000011011110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011100"); -- Check that RegA is correct
        assert(RegBOut = "01110011"); -- Check that RegB is correct
        RegIn <= "11100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 30 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001111111101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        assert(RegBOut = "00010000"); -- Check that RegB is correct
        RegIn <= "00011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111111101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        assert(RegBOut = "00010000"); -- Check that RegB is correct
        RegIn <= "11011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 19 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0000111100111111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110011"); -- Check that RegA is correct
        assert(RegBOut = "01001001"); -- Check that RegB is correct
        RegIn <= "00000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 16 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0001110100001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101101"); -- Check that RegA is correct
        assert(RegBOut = "11000101"); -- Check that RegB is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 3 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010000111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        RegIn <= "10000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 21 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0001111101011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110101"); -- Check that RegA is correct
        assert(RegBOut = "00010000"); -- Check that RegB is correct
        RegIn <= "10011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 12 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0010000011001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        assert(RegBOut = "00111100"); -- Check that RegB is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 14 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0010101011101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111100"); -- Check that RegA is correct
        assert(RegBOut = "11101111"); -- Check that RegB is correct
        RegIn <= "10111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 10 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010010100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000000"); -- Check that RegA is correct
        RegIn <= "00111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 20 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001011101000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111011"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "10010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 15 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0001110011111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011100"); -- Check that RegA is correct
        assert(RegBOut = "11100111"); -- Check that RegB is correct
        RegIn <= "10110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 16 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010100000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        RegIn <= "01011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 0 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0010101000001100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011101"); -- Check that RegA is correct
        assert(RegBOut = "11101111"); -- Check that RegB is correct
        RegIn <= "10000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 2 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0001010000101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        assert(RegBOut = "11000101"); -- Check that RegB is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 22 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001111101100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110100"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "00100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 29 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010111010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010000"); -- Check that RegA is correct
        RegIn <= "11101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 30 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0001100111100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        assert(RegBOut = "01010100"); -- Check that RegB is correct
        RegIn <= "10001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 8 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0001110010001100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "10111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 25 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0000010110011110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111111"); -- Check that RegA is correct
        assert(RegBOut = "10111100"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 31 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010111110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001001"); -- Check that RegA is correct
        RegIn <= "10010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 29 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010111010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101010"); -- Check that RegA is correct
        RegIn <= "11100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 16 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010100000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011110"); -- Check that RegA is correct
        RegIn <= "01000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 18 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111101100100001";
        wait until (clock = '1');
        assert(RegAOut = "00101011");


        -- Testing: ROR on inputs ra = 11 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010010110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000101"); -- Check that RegA is correct
        RegIn <= "00110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 9 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0000101010010100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        assert(RegBOut = "10111011"); -- Check that RegB is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 18 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0000100100101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101011"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "00011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 23 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0110000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        RegIn <= "00100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 0 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010000000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000000"); -- Check that RegA is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 25 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010110010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111111"); -- Check that RegA is correct
        RegIn <= "10001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 13 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101011011010";
        wait until (clock = '1');
        assert(RegAOut = "11100111");


        -- Testing: ROR on inputs ra = 29 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010111010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100101"); -- Check that RegA is correct
        RegIn <= "11100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 28 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010111000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101111"); -- Check that RegA is correct
        RegIn <= "01110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 11 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0001101010110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110110"); -- Check that RegA is correct
        assert(RegBOut = "10011000"); -- Check that RegB is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 26 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010110101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110111"); -- Check that RegA is correct
        RegIn <= "10010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 13 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010011010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100111"); -- Check that RegA is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 26 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010110101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        RegIn <= "00000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 18 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0101000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        RegIn <= "11010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 4 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0111000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111011"); -- Check that RegA is correct
        RegIn <= "10111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 31 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0010000111111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010100"); -- Check that RegA is correct
        assert(RegBOut = "11101011"); -- Check that RegB is correct
        RegIn <= "11000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 22 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0001100101101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100001"); -- Check that RegA is correct
        assert(RegBOut = "00111101"); -- Check that RegB is correct
        RegIn <= "00100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 9 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001010010010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        RegIn <= "00000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001011000";
        wait until (clock = '1');


        -- Testing: DEC on inputs ra = 27 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010110111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001010"); -- Check that RegA is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 10 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0000010010100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111101"); -- Check that RegA is correct
        assert(RegBOut = "10100011"); -- Check that RegB is correct
        RegIn <= "11001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 22 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0001110101101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100001"); -- Check that RegA is correct
        assert(RegBOut = "10110101"); -- Check that RegB is correct
        RegIn <= "01000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 9 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0010011010010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000100"); -- Check that RegA is correct
        assert(RegBOut = "00100110"); -- Check that RegB is correct
        RegIn <= "10101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 12 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0010000011001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        assert(RegBOut = "11101011"); -- Check that RegB is correct
        RegIn <= "11101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 13 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010011010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        RegIn <= "01001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 4 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111100001000011";
        RegIn <= "11111000";
        wait until (clock = '1');
        assert(RegAOut = "11011110");


        -- Testing: SWAP on inputs ra = 24 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010110000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010000"); -- Check that RegA is correct
        RegIn <= "11010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 0 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100011"); -- Check that RegA is correct
        RegIn <= "01001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 31 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010111111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000011"); -- Check that RegA is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011101000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 16 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001111100001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000110"); -- Check that RegA is correct
        assert(RegBOut = "11100101"); -- Check that RegB is correct
        RegIn <= "10111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111100001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000110"); -- Check that RegA is correct
        assert(RegBOut = "11100101"); -- Check that RegB is correct
        RegIn <= "11101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 4 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0010000001000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111000"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "11101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 7 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1111100001110110";
        RegIn <= "11101100";
        wait until (clock = '1');
        assert(RegAOut = "01011001");


        -- Testing: BST on inputs ra = 2 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111101000101011";
        wait until (clock = '1');
        assert(RegAOut = "01010100");


        -- Testing: SBCI on inputs ra = 6 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0100000001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000101"); -- Check that RegA is correct
        RegIn <= "10111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 4 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0100000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111100"); -- Check that RegA is correct
        RegIn <= "00101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 0 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111111"); -- Check that RegA is correct
        RegIn <= "00000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 24 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1001010110000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010101"); -- Check that RegA is correct
        RegIn <= "10010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 2 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0101000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010101"); -- Check that RegA is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 8 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010010001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111000"); -- Check that RegA is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 23 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010101110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100110"); -- Check that RegA is correct
        RegIn <= "00110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 18 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010101100101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "11110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000011000";
        wait until (clock = '1');


        -- Testing: BLD on inputs ra = 22 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111100101100000";
        RegIn <= "11101101";
        wait until (clock = '1');
        assert(RegAOut = "10111001");


        -- Testing: COM on inputs ra = 23 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010101110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110111"); -- Check that RegA is correct
        RegIn <= "11001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 2 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101000100100";
        wait until (clock = '1');
        assert(RegAOut = "01010100");


        -- Testing: BCLR on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010101000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 27 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001111110111111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "11111100"); -- Check that RegB is correct
        RegIn <= "00111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111110111111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "11111100"); -- Check that RegB is correct
        RegIn <= "01011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 27 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001110110110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "00111010"); -- Check that RegB is correct
        RegIn <= "10100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110110110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "10100110"); -- Check that RegB is correct
        RegIn <= "01100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 18 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001110100100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110010"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "11001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110010"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "10111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 11 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111101010111111";
        wait until (clock = '1');
        assert(RegAOut = "01101001");


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110111"); -- Check that RegA is correct
        RegIn <= "00001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100101"); -- Check that RegA is correct
        RegIn <= "01000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 17 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001111100011110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        assert(RegBOut = "10001101"); -- Check that RegB is correct
        RegIn <= "00001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111100011110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        assert(RegBOut = "10001101"); -- Check that RegB is correct
        RegIn <= "11100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 1 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100011"); -- Check that RegA is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000100"); -- Check that RegA is correct
        RegIn <= "11111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        RegIn <= "01100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 17 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0010101100011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        assert(RegBOut = "00001010"); -- Check that RegB is correct
        RegIn <= "00000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 10 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0001011010100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111101"); -- Check that RegA is correct
        assert(RegBOut = "00000001"); -- Check that RegB is correct
        RegIn <= "10111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 13 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100011010001";
        RegIn <= "11010000";
        wait until (clock = '1');
        assert(RegAOut = "01001110");


        -- Testing: BST on inputs ra = 30 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101111100100";
        wait until (clock = '1');
        assert(RegAOut = "10001101");


        -- Testing: COM on inputs ra = 13 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "11001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 20 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001101101000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101101"); -- Check that RegA is correct
        assert(RegBOut = "00000101"); -- Check that RegB is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 18 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0000010100101000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110010"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "01101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111000"); -- Check that RegA is correct
        RegIn <= "11101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100101"); -- Check that RegA is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 18 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010100100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110010"); -- Check that RegA is correct
        RegIn <= "10010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 16 and rb = 22 (only the ones that are used for the instruction).
        IR <= "1001010100001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000110"); -- Check that RegA is correct
        RegIn <= "10000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 3 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0010011000110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000011"); -- Check that RegA is correct
        assert(RegBOut = "10011000"); -- Check that RegB is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 29 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111101111010001";
        wait until (clock = '1');
        assert(RegAOut = "01000010");


        -- Testing: OR on inputs ra = 17 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0010101100011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        assert(RegBOut = "10010000"); -- Check that RegB is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 10 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0010010010100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111101"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "01011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 5 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0111000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 16 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0001101100001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000011"); -- Check that RegA is correct
        assert(RegBOut = "10001101"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 2 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0000101000101110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        assert(RegBOut = "10001101"); -- Check that RegB is correct
        RegIn <= "10110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 11 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010010110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        RegIn <= "00000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011001000";
        wait until (clock = '1');


        -- Testing: ANDI on inputs ra = 20 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0111000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111111"); -- Check that RegA is correct
        RegIn <= "01011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 26 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0000101110101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101100"); -- Check that RegA is correct
        assert(RegBOut = "00001010"); -- Check that RegB is correct
        RegIn <= "11000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 11 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010010110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000000"); -- Check that RegA is correct
        RegIn <= "00111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 19 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0101000000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000001"); -- Check that RegA is correct
        RegIn <= "00001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 18 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010100100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010100"); -- Check that RegA is correct
        RegIn <= "11110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 15 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001010011111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110101"); -- Check that RegA is correct
        RegIn <= "00011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 15 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001111011111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011000"); -- Check that RegA is correct
        assert(RegBOut = "10010000"); -- Check that RegB is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111011111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011000"); -- Check that RegA is correct
        assert(RegBOut = "10010000"); -- Check that RegB is correct
        RegIn <= "01110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 15 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0001100011110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011000"); -- Check that RegA is correct
        assert(RegBOut = "10110110"); -- Check that RegB is correct
        RegIn <= "01010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 31 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010111110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 6 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001000"); -- Check that RegA is correct
        RegIn <= "01100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010000"); -- Check that RegA is correct
        RegIn <= "11111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001000"); -- Check that RegA is correct
        RegIn <= "01110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 11 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0111000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        RegIn <= "10010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 7 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0101000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001010"); -- Check that RegA is correct
        RegIn <= "10110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        RegIn <= "10000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110111"); -- Check that RegA is correct
        RegIn <= "10110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 2 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001111000101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "01000010"); -- Check that RegB is correct
        RegIn <= "11100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111000101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "01000010"); -- Check that RegB is correct
        RegIn <= "01010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 1 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010011000011011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010110"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "01101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 12 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010011000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101010"); -- Check that RegA is correct
        RegIn <= "11100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011111000";
        wait until (clock = '1');


        -- Testing: OR on inputs ra = 31 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0010100111111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111001"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "11001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 19 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0101000000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001110"); -- Check that RegA is correct
        RegIn <= "10101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000101"); -- Check that RegA is correct
        RegIn <= "01001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 18 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0001100100101000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110100"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 21 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0010011101011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        assert(RegBOut = "10000111"); -- Check that RegB is correct
        RegIn <= "10101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010111000";
        wait until (clock = '1');


        -- Testing: SBC on inputs ra = 17 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0000100100011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        assert(RegBOut = "01011100"); -- Check that RegB is correct
        RegIn <= "10000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 14 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010011100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111100"); -- Check that RegA is correct
        RegIn <= "00011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 21 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0010010101011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101110"); -- Check that RegA is correct
        assert(RegBOut = "01011100"); -- Check that RegB is correct
        RegIn <= "10111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 5 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111101001011111";
        wait until (clock = '1');
        assert(RegAOut = "01001010");


        -- Testing: MUL on inputs ra = 19 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001110100111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101001"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101001"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "00001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 22 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010101100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101101"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 6 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0111000001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001101"); -- Check that RegA is correct
        RegIn <= "00100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001100"); -- Check that RegA is correct
        RegIn <= "10110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 24 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0001101110001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        assert(RegBOut = "10000111"); -- Check that RegB is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 14 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0000010011101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        assert(RegBOut = "01010100"); -- Check that RegB is correct
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 26 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0000011110101001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001011"); -- Check that RegA is correct
        assert(RegBOut = "10110110"); -- Check that RegB is correct
        RegIn <= "00101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 6 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010001101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100111"); -- Check that RegA is correct
        RegIn <= "00101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 15 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001010011110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        RegIn <= "01000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 1 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1111100000010101";
        RegIn <= "01001011";
        wait until (clock = '1');
        assert(RegAOut = "00001010");


        -- Testing: LSR on inputs ra = 10 and rb = 25 (only the ones that are used for the instruction).
        IR <= "1001010010100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011100"); -- Check that RegA is correct
        RegIn <= "10101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010111"); -- Check that RegA is correct
        RegIn <= "00110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 0 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0110000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101111"); -- Check that RegA is correct
        RegIn <= "11000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 15 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0010001011111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000111"); -- Check that RegA is correct
        assert(RegBOut = "01000010"); -- Check that RegB is correct
        RegIn <= "10000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 0 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0100000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000111"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 2 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "01101001"); -- Check that RegB is correct
        RegIn <= "00100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 24 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001111110001111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        assert(RegBOut = "10110110"); -- Check that RegB is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111110001111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        assert(RegBOut = "10110110"); -- Check that RegB is correct
        RegIn <= "11000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 11 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010010110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111101"); -- Check that RegA is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 29 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001010111010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000010"); -- Check that RegA is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 19 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0100000000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101001"); -- Check that RegA is correct
        RegIn <= "10011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        RegIn <= "10001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 1 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010000011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000000"); -- Check that RegA is correct
        RegIn <= "01110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001110"); -- Check that RegA is correct
        RegIn <= "00001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100110"); -- Check that RegA is correct
        RegIn <= "10100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        RegIn <= "01000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 28 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010111000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001010"); -- Check that RegA is correct
        RegIn <= "00011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 16 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0001110100001001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 20 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0101000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011111"); -- Check that RegA is correct
        RegIn <= "01110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 26 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000100110101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001011"); -- Check that RegA is correct
        assert(RegBOut = "11001001"); -- Check that RegB is correct
        RegIn <= "01001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 27 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111101110111001";
        wait until (clock = '1');
        assert(RegAOut = "01000001");


        -- Testing: BSET on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001101000";
        wait until (clock = '1');


        -- Testing: SWAP on inputs ra = 10 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010010100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101000"); -- Check that RegA is correct
        RegIn <= "11000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 31 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0000011111111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000100"); -- Check that RegA is correct
        assert(RegBOut = "10110110"); -- Check that RegB is correct
        RegIn <= "01111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 12 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0100000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011000"); -- Check that RegA is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 13 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0001110011010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001001"); -- Check that RegA is correct
        assert(RegBOut = "11101100"); -- Check that RegB is correct
        RegIn <= "00001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 20 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0001010101001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110111"); -- Check that RegA is correct
        assert(RegBOut = "11000010"); -- Check that RegB is correct
        RegIn <= "10011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        RegIn <= "01011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        RegIn <= "10111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001001000";
        wait until (clock = '1');


        -- Testing: EOR on inputs ra = 26 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0010011110101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        assert(RegBOut = "01100100"); -- Check that RegB is correct
        RegIn <= "00101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 4 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010001001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101001"); -- Check that RegA is correct
        RegIn <= "10011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 8 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001110010001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "11101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110010001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "10011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 8 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0010000010001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "10111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 30 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0000011111100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100010"); -- Check that RegA is correct
        assert(RegBOut = "10000000"); -- Check that RegB is correct
        RegIn <= "11000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 3 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010000110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001100"); -- Check that RegA is correct
        RegIn <= "01001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0000010001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101100"); -- Check that RegA is correct
        assert(RegBOut = "11101110"); -- Check that RegB is correct
        RegIn <= "10111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 2 and rb = 11 (only the ones that are used for the instruction).
        IR <= "1001110000101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "11111111"); -- Check that RegB is correct
        RegIn <= "11100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110000101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "11111111"); -- Check that RegB is correct
        RegIn <= "10111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 23 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010101110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110011"); -- Check that RegA is correct
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000011000";
        wait until (clock = '1');


        -- Testing: NEG on inputs ra = 8 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010010000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111101"); -- Check that RegA is correct
        RegIn <= "00010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 28 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100111000001";
        RegIn <= "01011010";
        wait until (clock = '1');
        assert(RegAOut = "00111111");


        -- Testing: MUL on inputs ra = 31 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001111111110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000100"); -- Check that RegA is correct
        assert(RegBOut = "00010001"); -- Check that RegB is correct
        RegIn <= "01010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111111110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000100"); -- Check that RegA is correct
        assert(RegBOut = "00010001"); -- Check that RegB is correct
        RegIn <= "11011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 19 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0010100100111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011010"); -- Check that RegA is correct
        assert(RegBOut = "11000010"); -- Check that RegB is correct
        RegIn <= "01100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 25 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0010001110010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111011"); -- Check that RegA is correct
        assert(RegBOut = "10111110"); -- Check that RegB is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 18 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001010100100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111111"); -- Check that RegA is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100010"); -- Check that RegA is correct
        RegIn <= "01010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000100"); -- Check that RegA is correct
        RegIn <= "01000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 0 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0010000000000100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010101"); -- Check that RegA is correct
        assert(RegBOut = "10011000"); -- Check that RegB is correct
        RegIn <= "11101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011010"); -- Check that RegA is correct
        RegIn <= "00111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        RegIn <= "10001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 4 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0011000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110111"); -- Check that RegA is correct
        RegIn <= "11111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000101000";
        wait until (clock = '1');


        -- Testing: SBCI on inputs ra = 14 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0100000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010111"); -- Check that RegA is correct
        RegIn <= "00000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 13 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001110011011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001010"); -- Check that RegA is correct
        assert(RegBOut = "11000010"); -- Check that RegB is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110011011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001010"); -- Check that RegA is correct
        assert(RegBOut = "11000010"); -- Check that RegB is correct
        RegIn <= "10110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 5 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0011000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111110"); -- Check that RegA is correct
        RegIn <= "00101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 2 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0001111000101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "01000101"); -- Check that RegB is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 15 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010011110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000100"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 9 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0001101010011111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101000"); -- Check that RegA is correct
        assert(RegBOut = "01000101"); -- Check that RegB is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010101000";
        wait until (clock = '1');


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111011"); -- Check that RegA is correct
        RegIn <= "00000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001111"); -- Check that RegA is correct
        RegIn <= "10011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 22 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0001111101100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010011"); -- Check that RegA is correct
        assert(RegBOut = "01101101"); -- Check that RegB is correct
        RegIn <= "00100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 12 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0111000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000100"); -- Check that RegA is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 1 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0110000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000000"); -- Check that RegA is correct
        RegIn <= "11010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 31 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0010011111111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000101"); -- Check that RegA is correct
        assert(RegBOut = "00101110"); -- Check that RegB is correct
        RegIn <= "10100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 26 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010110100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101110"); -- Check that RegA is correct
        RegIn <= "11001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 9 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0000010010010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "10000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 20 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0001100101001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110111"); -- Check that RegA is correct
        assert(RegBOut = "00011010"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001101000";
        wait until (clock = '1');


        -- Testing: COM on inputs ra = 5 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 24 and rb = 25 (only the ones that are used for the instruction).
        IR <= "1001010110000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011010"); -- Check that RegA is correct
        RegIn <= "10110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 8 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0010101010000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010101"); -- Check that RegA is correct
        assert(RegBOut = "00100110"); -- Check that RegB is correct
        RegIn <= "01001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 17 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0000010100010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        assert(RegBOut = "10110001"); -- Check that RegB is correct
        RegIn <= "01110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 27 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0111000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        RegIn <= "01001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 13 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101011010010";
        wait until (clock = '1');
        assert(RegAOut = "00001010");


        -- Testing: ORI on inputs ra = 31 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0110000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100111"); -- Check that RegA is correct
        RegIn <= "10111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001101"); -- Check that RegA is correct
        RegIn <= "11111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001101"); -- Check that RegA is correct
        RegIn <= "01000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 29 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0010101111010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011111"); -- Check that RegA is correct
        assert(RegBOut = "00010001"); -- Check that RegB is correct
        RegIn <= "00001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110000"); -- Check that RegA is correct
        RegIn <= "10010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100101"); -- Check that RegA is correct
        RegIn <= "01101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 7 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0000101001111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101100"); -- Check that RegA is correct
        assert(RegBOut = "11111101"); -- Check that RegB is correct
        RegIn <= "00011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 18 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1111101100101110";
        wait until (clock = '1');
        assert(RegAOut = "01101101");


        -- Testing: AND on inputs ra = 25 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0010000110011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101000"); -- Check that RegA is correct
        assert(RegBOut = "11100111"); -- Check that RegB is correct
        RegIn <= "10001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 4 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010001001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        RegIn <= "01000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 18 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0110000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101101"); -- Check that RegA is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 4 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101001000010";
        wait until (clock = '1');
        assert(RegAOut = "01000000");


        -- Testing: LSR on inputs ra = 6 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010001100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101010"); -- Check that RegA is correct
        RegIn <= "00001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 31 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0010010111110100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111110"); -- Check that RegA is correct
        assert(RegBOut = "01000000"); -- Check that RegB is correct
        RegIn <= "11100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 5 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0000111001010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        assert(RegBOut = "00010001"); -- Check that RegB is correct
        RegIn <= "11000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 28 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010111000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        RegIn <= "01100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010111000";
        wait until (clock = '1');


        -- Testing: COM on inputs ra = 3 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001001"); -- Check that RegA is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 31 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001111111111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100110"); -- Check that RegA is correct
        assert(RegBOut = "01100011"); -- Check that RegB is correct
        RegIn <= "01010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111111111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100110"); -- Check that RegA is correct
        assert(RegBOut = "01100011"); -- Check that RegB is correct
        RegIn <= "10101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 15 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001110011110100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        assert(RegBOut = "01000000"); -- Check that RegB is correct
        RegIn <= "10000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110011110100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        assert(RegBOut = "01000000"); -- Check that RegB is correct
        RegIn <= "10010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010101"); -- Check that RegA is correct
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001110"); -- Check that RegA is correct
        RegIn <= "10000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 12 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0000101011001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100111"); -- Check that RegA is correct
        assert(RegBOut = "01000000"); -- Check that RegB is correct
        RegIn <= "11101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000001000";
        wait until (clock = '1');


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111101"); -- Check that RegA is correct
        RegIn <= "00011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000000"); -- Check that RegA is correct
        RegIn <= "01001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 17 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0000010100010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        assert(RegBOut = "10010110"); -- Check that RegB is correct
        RegIn <= "01011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 23 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0111000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        RegIn <= "00001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 21 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0010100101011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111110"); -- Check that RegA is correct
        assert(RegBOut = "01001110"); -- Check that RegB is correct
        RegIn <= "10101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        RegIn <= "11010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000001"); -- Check that RegA is correct
        RegIn <= "00010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 17 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111101100010011";
        wait until (clock = '1');
        assert(RegAOut = "11010111");


        -- Testing: ADC on inputs ra = 16 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0001110100001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        assert(RegBOut = "11111111"); -- Check that RegB is correct
        RegIn <= "10000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 23 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1001010101110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001101"); -- Check that RegA is correct
        RegIn <= "00011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 15 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101011110010";
        wait until (clock = '1');
        assert(RegAOut = "00010010");


        -- Testing: EOR on inputs ra = 16 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0010011100000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000101"); -- Check that RegA is correct
        assert(RegBOut = "00011101"); -- Check that RegB is correct
        RegIn <= "01011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 8 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0001011010000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001110"); -- Check that RegA is correct
        assert(RegBOut = "00011101"); -- Check that RegB is correct
        RegIn <= "11000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 8 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010010000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001110"); -- Check that RegA is correct
        RegIn <= "11001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 26 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101110100010";
        wait until (clock = '1');
        assert(RegAOut = "00011101");


        -- Testing: BST on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111101000100000";
        wait until (clock = '1');
        assert(RegAOut = "00101000");


        -- Testing: COM on inputs ra = 5 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000101"); -- Check that RegA is correct
        RegIn <= "01100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 5 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0001111001011001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100010"); -- Check that RegA is correct
        assert(RegBOut = "00010100"); -- Check that RegB is correct
        RegIn <= "10110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 0 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010000000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000101"); -- Check that RegA is correct
        RegIn <= "11000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 26 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010110100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011101"); -- Check that RegA is correct
        RegIn <= "00100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 16 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0001011100001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "11000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 17 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010100011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        RegIn <= "11011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 10 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0001111010100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000010"); -- Check that RegA is correct
        assert(RegBOut = "01100000"); -- Check that RegB is correct
        RegIn <= "11100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0110000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101111"); -- Check that RegA is correct
        RegIn <= "00100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 8 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010010000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001000"); -- Check that RegA is correct
        RegIn <= "11110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 10 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001110010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100110"); -- Check that RegA is correct
        assert(RegBOut = "00011101"); -- Check that RegB is correct
        RegIn <= "11010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100110"); -- Check that RegA is correct
        assert(RegBOut = "00011101"); -- Check that RegB is correct
        RegIn <= "01100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 23 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0001111101110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011101"); -- Check that RegA is correct
        assert(RegBOut = "01011101"); -- Check that RegB is correct
        RegIn <= "11011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 17 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0011000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011000"); -- Check that RegA is correct
        RegIn <= "11100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 4 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000000"); -- Check that RegA is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 19 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0011000000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100000"); -- Check that RegA is correct
        RegIn <= "10001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 28 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0010010111000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100011"); -- Check that RegA is correct
        assert(RegBOut = "00001001"); -- Check that RegB is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011001000";
        wait until (clock = '1');


        -- Testing: DEC on inputs ra = 1 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010000011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100001"); -- Check that RegA is correct
        RegIn <= "10011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 26 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001010110100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100100"); -- Check that RegA is correct
        RegIn <= "00000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 11 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010010110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111111"); -- Check that RegA is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 12 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111100011000111";
        RegIn <= "00011001";
        wait until (clock = '1');
        assert(RegAOut = "11101001");


        -- Testing: MUL on inputs ra = 22 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001111101100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100110"); -- Check that RegA is correct
        assert(RegBOut = "11011011"); -- Check that RegB is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111101100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100110"); -- Check that RegA is correct
        assert(RegBOut = "11011011"); -- Check that RegB is correct
        RegIn <= "10010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 11 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010010110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111111"); -- Check that RegA is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 31 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111101111110001";
        wait until (clock = '1');
        assert(RegAOut = "11100110");


        -- Testing: ADD on inputs ra = 25 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0000110110010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010100"); -- Check that RegA is correct
        assert(RegBOut = "00001001"); -- Check that RegB is correct
        RegIn <= "10000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 25 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010110010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        RegIn <= "00011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 13 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0111000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001010"); -- Check that RegA is correct
        RegIn <= "10011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 6 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1111100001100101";
        RegIn <= "10001010";
        wait until (clock = '1');
        assert(RegAOut = "00001001");


        -- Testing: ROR on inputs ra = 28 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010111000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 16 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0010000100000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "10000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 20 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010101000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101111"); -- Check that RegA is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 12 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010001011001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011001"); -- Check that RegA is correct
        assert(RegBOut = "01001010"); -- Check that RegB is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 27 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0001010110111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "11101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 21 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0110000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101010"); -- Check that RegA is correct
        RegIn <= "11101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001111000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 23 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001110101110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011011"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "00100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110101110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011011"); -- Check that RegA is correct
        assert(RegBOut = "10010011"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 8 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010010000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110010"); -- Check that RegA is correct
        RegIn <= "11101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 21 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0100000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101111"); -- Check that RegA is correct
        RegIn <= "10010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 11 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001111010110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111010110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "00001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 14 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0001011011101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        assert(RegBOut = "01110011"); -- Check that RegB is correct
        RegIn <= "11101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 5 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110000"); -- Check that RegA is correct
        RegIn <= "01110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 30 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010111101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000011"); -- Check that RegA is correct
        RegIn <= "00000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 8 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0011000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "00001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 11 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0010100010110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        assert(RegBOut = "00011101"); -- Check that RegB is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 30 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010111100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        RegIn <= "01110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 26 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010110100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000110"); -- Check that RegA is correct
        RegIn <= "11101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 15 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0101000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100110"); -- Check that RegA is correct
        RegIn <= "01011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 22 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0001101101101000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100110"); -- Check that RegA is correct
        assert(RegBOut = "11010000"); -- Check that RegB is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 7 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0010101001110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011101"); -- Check that RegA is correct
        assert(RegBOut = "10010000"); -- Check that RegB is correct
        RegIn <= "11100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 11 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010010110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        RegIn <= "01101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 20 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010101000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100011"); -- Check that RegA is correct
        RegIn <= "00110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: BLD on inputs ra = 11 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111100010110011";
        RegIn <= "10111100";
        wait until (clock = '1');
        assert(RegAOut = "01101011");


        -- Testing: BCLR on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010001000";
        wait until (clock = '1');


        -- Testing: SUBI on inputs ra = 27 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0101000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        RegIn <= "11000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "01011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010001000";
        wait until (clock = '1');


        -- Testing: SBCI on inputs ra = 29 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0100000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011111"); -- Check that RegA is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 13 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0010100011011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001010"); -- Check that RegA is correct
        assert(RegBOut = "00001010"); -- Check that RegB is correct
        RegIn <= "10100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 15 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111101011111000";
        wait until (clock = '1');
        assert(RegAOut = "00010010");


        -- Testing: OR on inputs ra = 20 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0010100101001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110110"); -- Check that RegA is correct
        assert(RegBOut = "00011010"); -- Check that RegB is correct
        RegIn <= "01011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 11 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0111000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000000"); -- Check that RegA is correct
        RegIn <= "00101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 10 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0110000010100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101100"); -- Check that RegA is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 15 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0100000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011001"); -- Check that RegA is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000111000";
        wait until (clock = '1');


        -- Testing: CPC on inputs ra = 14 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0000010011100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        assert(RegBOut = "00111111"); -- Check that RegB is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 31 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0101000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110011"); -- Check that RegA is correct
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 13 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010011010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100111"); -- Check that RegA is correct
        RegIn <= "00100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 10 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100110"); -- Check that RegA is correct
        RegIn <= "11000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 5 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101001011100";
        wait until (clock = '1');
        assert(RegAOut = "01110010");


        -- Testing: CPC on inputs ra = 7 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0000011001110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100000"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "11000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 8 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0111000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011001"); -- Check that RegA is correct
        RegIn <= "10011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 21 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010101010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010000"); -- Check that RegA is correct
        RegIn <= "10101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 5 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0011000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101001"); -- Check that RegA is correct
        RegIn <= "00000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 6 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001111001100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001010"); -- Check that RegA is correct
        assert(RegBOut = "11011000"); -- Check that RegB is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011100"); -- Check that RegA is correct
        RegIn <= "00111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010111"); -- Check that RegA is correct
        RegIn <= "00100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 18 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0000100100101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100000"); -- Check that RegA is correct
        assert(RegBOut = "00010010"); -- Check that RegB is correct
        RegIn <= "00001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 11 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111101010111011";
        wait until (clock = '1');
        assert(RegAOut = "10111100");


        -- Testing: OR on inputs ra = 7 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0010100001111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100000"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "01111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 28 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111100111000010";
        RegIn <= "00011111";
        wait until (clock = '1');
        assert(RegAOut = "01110011");


        -- Testing: BSET on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001011000";
        wait until (clock = '1');


        -- Testing: BCLR on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011001000";
        wait until (clock = '1');


        -- Testing: AND on inputs ra = 14 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0010000011100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        assert(RegBOut = "00001111"); -- Check that RegB is correct
        RegIn <= "11010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 29 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010111010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        RegIn <= "01110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 17 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0000100100010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011000"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "11001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 14 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100011100001";
        RegIn <= "11011010";
        wait until (clock = '1');
        assert(RegAOut = "11010001");


        -- Testing: SBC on inputs ra = 16 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0000101100001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000011"); -- Check that RegA is correct
        assert(RegBOut = "11111100"); -- Check that RegB is correct
        RegIn <= "11011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 11 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010010111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111100"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 6 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0100000001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100011"); -- Check that RegA is correct
        RegIn <= "11110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 9 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010010010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "10110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010101000";
        wait until (clock = '1');


        -- Testing: BSET on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001011000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 28 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001110111001001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        assert(RegBOut = "10110010"); -- Check that RegB is correct
        RegIn <= "01110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110111001001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        assert(RegBOut = "10110010"); -- Check that RegB is correct
        RegIn <= "01101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 9 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010010010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110010"); -- Check that RegA is correct
        RegIn <= "01110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001011000";
        wait until (clock = '1');


        -- Testing: ORI on inputs ra = 9 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0110000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100010"); -- Check that RegA is correct
        RegIn <= "01001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 18 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101100101100";
        wait until (clock = '1');
        assert(RegAOut = "00001000");


        -- Testing: SBCI on inputs ra = 27 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0100000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101001"); -- Check that RegA is correct
        RegIn <= "01100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 3 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0001101000111011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111111"); -- Check that RegA is correct
        assert(RegBOut = "01100101"); -- Check that RegB is correct
        RegIn <= "01010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 30 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0001010111100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110100"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "10111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 15 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010011110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        RegIn <= "11110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 16 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010100000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011111"); -- Check that RegA is correct
        RegIn <= "11101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 30 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010111100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110100"); -- Check that RegA is correct
        RegIn <= "10010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 19 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1111101100110101";
        wait until (clock = '1');
        assert(RegAOut = "01100000");


        -- Testing: BST on inputs ra = 4 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101001000100";
        wait until (clock = '1');
        assert(RegAOut = "11100001");


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        RegIn <= "11010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110111"); -- Check that RegA is correct
        RegIn <= "01100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 26 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010110100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111001"); -- Check that RegA is correct
        RegIn <= "11100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100101"); -- Check that RegA is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 3 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010111"); -- Check that RegA is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 20 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100101000001";
        RegIn <= "11010011";
        wait until (clock = '1');
        assert(RegAOut = "01011011");


        -- Testing: DEC on inputs ra = 4 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010001001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        RegIn <= "11111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 6 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001010001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "10011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 7 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0101000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011011"); -- Check that RegA is correct
        RegIn <= "11110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 18 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010100100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001000"); -- Check that RegA is correct
        RegIn <= "01011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010001000";
        wait until (clock = '1');


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010110"); -- Check that RegA is correct
        RegIn <= "00110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100110"); -- Check that RegA is correct
        RegIn <= "11000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 11 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010010111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010010"); -- Check that RegA is correct
        RegIn <= "01100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 3 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0001110000110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        assert(RegBOut = "01110010"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000001000";
        wait until (clock = '1');


        -- Testing: ROR on inputs ra = 30 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010111100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010111"); -- Check that RegA is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 5 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110010"); -- Check that RegA is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 17 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0100000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 19 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1001110100110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100000"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "10001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100000"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "11100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 21 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0000110101010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101001"); -- Check that RegA is correct
        assert(RegBOut = "10101111"); -- Check that RegB is correct
        RegIn <= "11000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 31 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0100000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010011"); -- Check that RegA is correct
        RegIn <= "10010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 12 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0110000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110010"); -- Check that RegA is correct
        RegIn <= "10011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111011"); -- Check that RegA is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001010"); -- Check that RegA is correct
        RegIn <= "01100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 16 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010100001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101010"); -- Check that RegA is correct
        RegIn <= "10000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 22 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0000010101101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110111"); -- Check that RegA is correct
        assert(RegBOut = "11110011"); -- Check that RegB is correct
        RegIn <= "00111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011101"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000001"); -- Check that RegA is correct
        RegIn <= "00111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 19 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010100110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100000"); -- Check that RegA is correct
        RegIn <= "11110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 24 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0101000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "01001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 9 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100010010001";
        RegIn <= "11011010";
        wait until (clock = '1');
        assert(RegAOut = "01110000");


        -- Testing: SWAP on inputs ra = 25 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001010110010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100110"); -- Check that RegA is correct
        RegIn <= "10001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 1 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0001110000010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100101"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "10111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 10 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000110"); -- Check that RegA is correct
        RegIn <= "01111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 19 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001110100111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        assert(RegBOut = "01111110"); -- Check that RegB is correct
        RegIn <= "11011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        assert(RegBOut = "01111110"); -- Check that RegB is correct
        RegIn <= "10010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 31 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010111110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        RegIn <= "11010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100101"); -- Check that RegA is correct
        RegIn <= "01011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 3 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0001100000110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101111"); -- Check that RegA is correct
        assert(RegBOut = "10101111"); -- Check that RegB is correct
        RegIn <= "11101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 18 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111101100100111";
        wait until (clock = '1');
        assert(RegAOut = "01011111");


        -- Testing: ADC on inputs ra = 10 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0001110010101001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111110"); -- Check that RegA is correct
        assert(RegBOut = "11011010"); -- Check that RegB is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010111000";
        wait until (clock = '1');


        -- Testing: DEC on inputs ra = 21 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010101011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000111"); -- Check that RegA is correct
        RegIn <= "01011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 26 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111100110100111";
        RegIn <= "01000100";
        wait until (clock = '1');
        assert(RegAOut = "01011100");


        -- Testing: DEC on inputs ra = 26 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010110101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000100"); -- Check that RegA is correct
        RegIn <= "11111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111010"); -- Check that RegA is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010111"); -- Check that RegA is correct
        RegIn <= "10110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 10 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0001011010100100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        assert(RegBOut = "11010011"); -- Check that RegB is correct
        RegIn <= "00110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 1 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0001100000010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010000"); -- Check that RegA is correct
        assert(RegBOut = "01111111"); -- Check that RegB is correct
        RegIn <= "01110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 24 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010110000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001001"); -- Check that RegA is correct
        RegIn <= "01010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 1 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0010100000010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110010"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "11110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 27 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0001101110110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110111"); -- Check that RegA is correct
        assert(RegBOut = "11110011"); -- Check that RegB is correct
        RegIn <= "01011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 18 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010100100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011111"); -- Check that RegA is correct
        RegIn <= "10010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 0 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0011000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        RegIn <= "11010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010001000";
        wait until (clock = '1');


        -- Testing: OR on inputs ra = 5 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0010101001011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        assert(RegBOut = "11110110"); -- Check that RegB is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 14 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1111101011101101";
        wait until (clock = '1');
        assert(RegAOut = "11011010");


        -- Testing: SWAP on inputs ra = 10 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010010100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        RegIn <= "00011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 31 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0001100111110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010011"); -- Check that RegA is correct
        assert(RegBOut = "11110110"); -- Check that RegB is correct
        RegIn <= "00101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 19 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0010101100111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        assert(RegBOut = "01010100"); -- Check that RegB is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 17 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010100010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111001"); -- Check that RegA is correct
        RegIn <= "01010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 4 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0110000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010011"); -- Check that RegA is correct
        RegIn <= "01010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        RegIn <= "00000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 13 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010011011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100000"); -- Check that RegA is correct
        RegIn <= "10110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 21 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001010101010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011011"); -- Check that RegA is correct
        RegIn <= "01010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 2 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0111000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 7 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1001010001110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111111"); -- Check that RegA is correct
        RegIn <= "01011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011011000";
        wait until (clock = '1');


        -- Testing: ANDI on inputs ra = 3 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0111000000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        RegIn <= "01001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 16 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0101000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000111"); -- Check that RegA is correct
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 8 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0111000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        RegIn <= "11101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011101000";
        wait until (clock = '1');


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111010"); -- Check that RegA is correct
        RegIn <= "10010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 2 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010000100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        RegIn <= "10001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 4 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010001000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111101"); -- Check that RegA is correct
        RegIn <= "00110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 30 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0010010111100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101101"); -- Check that RegA is correct
        assert(RegBOut = "10001101"); -- Check that RegB is correct
        RegIn <= "00010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 12 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "00100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 9 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0100000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001001"); -- Check that RegA is correct
        RegIn <= "10000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 21 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0000011101010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010011"); -- Check that RegA is correct
        assert(RegBOut = "00010111"); -- Check that RegB is correct
        RegIn <= "01000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 21 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100101010001";
        RegIn <= "00000001";
        wait until (clock = '1');
        assert(RegAOut = "01010011");


        -- Testing: LSR on inputs ra = 16 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010100000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        RegIn <= "00000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 9 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011010"); -- Check that RegA is correct
        RegIn <= "01101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 24 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000010110001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101101"); -- Check that RegA is correct
        assert(RegBOut = "10110001"); -- Check that RegB is correct
        RegIn <= "01101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 12 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0111000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010011"); -- Check that RegA is correct
        RegIn <= "10110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 0 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0001100000001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011101"); -- Check that RegA is correct
        assert(RegBOut = "01100010"); -- Check that RegB is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 20 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0011000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010000"); -- Check that RegA is correct
        RegIn <= "11010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 30 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0111000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010000"); -- Check that RegA is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 28 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0111000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110001"); -- Check that RegA is correct
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 13 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0110000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        RegIn <= "11110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 1 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0000010000010100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        assert(RegBOut = "00110100"); -- Check that RegB is correct
        RegIn <= "10010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101101"); -- Check that RegA is correct
        RegIn <= "11000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000000"); -- Check that RegA is correct
        RegIn <= "11000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 11 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0010000010111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100010"); -- Check that RegA is correct
        assert(RegBOut = "10110001"); -- Check that RegB is correct
        RegIn <= "10100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 6 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        RegIn <= "01001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 18 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010100100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010111"); -- Check that RegA is correct
        RegIn <= "11011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011011000";
        wait until (clock = '1');


        -- Testing: CPC on inputs ra = 31 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000010111111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101110"); -- Check that RegA is correct
        assert(RegBOut = "10110001"); -- Check that RegB is correct
        RegIn <= "11010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 14 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0010010011100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011010"); -- Check that RegA is correct
        assert(RegBOut = "01001110"); -- Check that RegB is correct
        RegIn <= "00111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000000"); -- Check that RegA is correct
        RegIn <= "11010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000110"); -- Check that RegA is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 24 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0101000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010011"); -- Check that RegA is correct
        RegIn <= "10111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 7 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0000010001111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        assert(RegBOut = "00011111"); -- Check that RegB is correct
        RegIn <= "10111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 26 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001010110100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 10 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100010100001";
        RegIn <= "10011000";
        wait until (clock = '1');
        assert(RegAOut = "00011111");


        -- Testing: SUB on inputs ra = 16 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0001100100001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000011"); -- Check that RegA is correct
        assert(RegBOut = "10110001"); -- Check that RegB is correct
        RegIn <= "10001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 17 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001110100010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010110"); -- Check that RegA is correct
        assert(RegBOut = "11110110"); -- Check that RegB is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010110"); -- Check that RegA is correct
        assert(RegBOut = "11110110"); -- Check that RegB is correct
        RegIn <= "11010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 30 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0100000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        RegIn <= "01101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 4 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010001000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110100"); -- Check that RegA is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 17 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0101000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010110"); -- Check that RegA is correct
        RegIn <= "11101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 31 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001111111110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101110"); -- Check that RegA is correct
        assert(RegBOut = "10001001"); -- Check that RegB is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111111110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101110"); -- Check that RegA is correct
        assert(RegBOut = "10001001"); -- Check that RegB is correct
        RegIn <= "10110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 23 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010101101111011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110001"); -- Check that RegA is correct
        assert(RegBOut = "00000101"); -- Check that RegB is correct
        RegIn <= "00110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 12 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0000110011000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100001"); -- Check that RegA is correct
        assert(RegBOut = "11101010"); -- Check that RegB is correct
        RegIn <= "01000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 7 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 17 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001111100011110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101111"); -- Check that RegA is correct
        assert(RegBOut = "01101100"); -- Check that RegB is correct
        RegIn <= "01110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111100011110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101111"); -- Check that RegA is correct
        assert(RegBOut = "01101100"); -- Check that RegB is correct
        RegIn <= "11001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111100001000000";
        RegIn <= "00111010";
        wait until (clock = '1');
        assert(RegAOut = "01101010");


        -- Testing: ROR on inputs ra = 7 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010001110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011001"); -- Check that RegA is correct
        RegIn <= "01111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 11 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010010111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100101"); -- Check that RegA is correct
        RegIn <= "00010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        RegIn <= "11010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        RegIn <= "11110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 1 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0010010000011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001100"); -- Check that RegA is correct
        assert(RegBOut = "11101110"); -- Check that RegB is correct
        RegIn <= "00101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 16 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001010100000101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001001"); -- Check that RegA is correct
        RegIn <= "11011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 24 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010110000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111110"); -- Check that RegA is correct
        RegIn <= "10110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 31 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111100111110000";
        RegIn <= "01011111";
        wait until (clock = '1');
        assert(RegAOut = "00101110");


        -- Testing: BCLR on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010101000";
        wait until (clock = '1');


        -- Testing: SBC on inputs ra = 13 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0000100011011001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110001"); -- Check that RegA is correct
        assert(RegBOut = "01101011"); -- Check that RegB is correct
        RegIn <= "01101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 28 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0000100111001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        assert(RegBOut = "11101110"); -- Check that RegB is correct
        RegIn <= "00101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 26 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010110100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010011"); -- Check that RegA is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 17 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0001010100010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101111"); -- Check that RegA is correct
        assert(RegBOut = "00101010"); -- Check that RegB is correct
        RegIn <= "11010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 10 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0000010010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        assert(RegBOut = "01111010"); -- Check that RegB is correct
        RegIn <= "00010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 29 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0011000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110000"); -- Check that RegA is correct
        RegIn <= "01000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 12 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010011000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000111"); -- Check that RegA is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 16 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0000110100000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011110"); -- Check that RegA is correct
        assert(RegBOut = "01111010"); -- Check that RegB is correct
        RegIn <= "00011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 19 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001000"); -- Check that RegA is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 0 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0000011000001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110101"); -- Check that RegA is correct
        assert(RegBOut = "11110000"); -- Check that RegB is correct
        RegIn <= "11000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 24 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0001101110001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110110"); -- Check that RegA is correct
        assert(RegBOut = "01110011"); -- Check that RegB is correct
        RegIn <= "10000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 7 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111100001110011";
        RegIn <= "11100001";
        wait until (clock = '1');
        assert(RegAOut = "01111010");


        -- Testing: BLD on inputs ra = 29 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111100111010000";
        RegIn <= "11100010";
        wait until (clock = '1');
        assert(RegAOut = "11110000");


        -- Testing: BST on inputs ra = 29 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101111011100";
        wait until (clock = '1');
        assert(RegAOut = "11100010");


        -- Testing: AND on inputs ra = 18 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0010001100100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011000"); -- Check that RegA is correct
        assert(RegBOut = "11011000"); -- Check that RegB is correct
        RegIn <= "01100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 31 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0001010111111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011111"); -- Check that RegA is correct
        assert(RegBOut = "11101110"); -- Check that RegB is correct
        RegIn <= "10110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 31 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001010111110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011111"); -- Check that RegA is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 21 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010101010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000001"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 16 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010100000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011111"); -- Check that RegA is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 27 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010110110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110100"); -- Check that RegA is correct
        RegIn <= "10010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 20 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0110000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010000"); -- Check that RegA is correct
        RegIn <= "10010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 0 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010000000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110101"); -- Check that RegA is correct
        RegIn <= "11111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 29 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0111000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100010"); -- Check that RegA is correct
        RegIn <= "11110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 23 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0000101101111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110010"); -- Check that RegA is correct
        assert(RegBOut = "10000010"); -- Check that RegB is correct
        RegIn <= "11110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 31 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0000100111110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        assert(RegBOut = "11110110"); -- Check that RegB is correct
        RegIn <= "11000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 25 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0010100110011011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        assert(RegBOut = "00010100"); -- Check that RegB is correct
        RegIn <= "11010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 21 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0101000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        RegIn <= "11001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 1 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0001111000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101010"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "01101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 29 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010111010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        RegIn <= "10010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 15 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0000110011111001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        assert(RegBOut = "01101011"); -- Check that RegB is correct
        RegIn <= "10100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 23 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0101000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        RegIn <= "11110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 5 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        RegIn <= "11001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 10 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010010100011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011000"); -- Check that RegA is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 13 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0001101011011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101110"); -- Check that RegA is correct
        assert(RegBOut = "00101110"); -- Check that RegB is correct
        RegIn <= "01011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 31 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1001010111110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11000010"); -- Check that RegA is correct
        RegIn <= "11110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 17 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010100010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101111"); -- Check that RegA is correct
        RegIn <= "00110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000101000";
        wait until (clock = '1');


        -- Testing: INC on inputs ra = 0 and rb = 30 (only the ones that are used for the instruction).
        IR <= "1001010000000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111010"); -- Check that RegA is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 10 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100010100001";
        RegIn <= "10101111";
        wait until (clock = '1');
        assert(RegAOut = "01110011");


        -- Testing: NEG on inputs ra = 4 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010001000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111010"); -- Check that RegA is correct
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 19 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100100110001";
        RegIn <= "11010111";
        wait until (clock = '1');
        assert(RegAOut = "01101010");


        -- Testing: NEG on inputs ra = 28 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010111000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101110"); -- Check that RegA is correct
        RegIn <= "10010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 2 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0111000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100101"); -- Check that RegA is correct
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000001000";
        wait until (clock = '1');


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110011"); -- Check that RegA is correct
        RegIn <= "10010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        RegIn <= "10000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010010"); -- Check that RegA is correct
        RegIn <= "11101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000101"); -- Check that RegA is correct
        RegIn <= "10100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 1 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101011"); -- Check that RegA is correct
        RegIn <= "11011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 5 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0000010001011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "10100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 18 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0110000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        RegIn <= "11011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010100"); -- Check that RegA is correct
        RegIn <= "10000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010101"); -- Check that RegA is correct
        RegIn <= "00111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 11 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0100000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100000"); -- Check that RegA is correct
        RegIn <= "11001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 13 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0100000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111111"); -- Check that RegA is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000011000";
        wait until (clock = '1');


        -- Testing: BSET on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001111000";
        wait until (clock = '1');


        -- Testing: EOR on inputs ra = 22 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0010010101101001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110111"); -- Check that RegA is correct
        assert(RegBOut = "01101011"); -- Check that RegB is correct
        RegIn <= "00110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 17 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001110100011111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110101"); -- Check that RegA is correct
        assert(RegBOut = "10100000"); -- Check that RegB is correct
        RegIn <= "10000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100011111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110101"); -- Check that RegA is correct
        assert(RegBOut = "10100000"); -- Check that RegB is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000101"); -- Check that RegA is correct
        RegIn <= "01100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        RegIn <= "11010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 5 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001111001011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        assert(RegBOut = "01100101"); -- Check that RegB is correct
        RegIn <= "10110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111001011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        assert(RegBOut = "01100101"); -- Check that RegB is correct
        RegIn <= "01110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 24 and rb = 22 (only the ones that are used for the instruction).
        IR <= "1001111110000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        assert(RegBOut = "00110110"); -- Check that RegB is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111110000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        assert(RegBOut = "00110110"); -- Check that RegB is correct
        RegIn <= "11101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 20 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010101000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010110"); -- Check that RegA is correct
        RegIn <= "10000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 23 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010101110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110010"); -- Check that RegA is correct
        RegIn <= "00000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 3 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101010"); -- Check that RegA is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100101"); -- Check that RegA is correct
        RegIn <= "00101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "01000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 24 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010110000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000010"); -- Check that RegA is correct
        RegIn <= "00000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 18 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111100100100111";
        RegIn <= "00101001";
        wait until (clock = '1');
        assert(RegAOut = "11011110");


        -- Testing: SBC on inputs ra = 6 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0000101001100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001110"); -- Check that RegA is correct
        assert(RegBOut = "00000001"); -- Check that RegB is correct
        RegIn <= "10111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001001000";
        wait until (clock = '1');


        -- Testing: BST on inputs ra = 30 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101111101010";
        wait until (clock = '1');
        assert(RegAOut = "01101100");


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101100"); -- Check that RegA is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110000"); -- Check that RegA is correct
        RegIn <= "01101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 3 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0010011000110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100101"); -- Check that RegA is correct
        assert(RegBOut = "11010111"); -- Check that RegB is correct
        RegIn <= "11101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 29 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0001101111011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000010"); -- Check that RegA is correct
        assert(RegBOut = "01000010"); -- Check that RegB is correct
        RegIn <= "01001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 0 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0110000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        RegIn <= "00011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 31 and rb = 22 (only the ones that are used for the instruction).
        IR <= "1001010111110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101111"); -- Check that RegA is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001101000";
        wait until (clock = '1');


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000000"); -- Check that RegA is correct
        RegIn <= "00000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "01011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 8 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111100010000100";
        RegIn <= "00001011";
        wait until (clock = '1');
        assert(RegAOut = "11101110");


        -- Testing: ANDI on inputs ra = 16 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0111000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011000"); -- Check that RegA is correct
        RegIn <= "10101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 10 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010010100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101111"); -- Check that RegA is correct
        RegIn <= "00101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 13 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1001010011010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011110"); -- Check that RegA is correct
        RegIn <= "00100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 11 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0010100010111011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010100"); -- Check that RegA is correct
        assert(RegBOut = "00010100"); -- Check that RegB is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 18 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0001101100100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101001"); -- Check that RegA is correct
        assert(RegBOut = "00101001"); -- Check that RegB is correct
        RegIn <= "11011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 7 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0000101001110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        assert(RegBOut = "11010111"); -- Check that RegB is correct
        RegIn <= "10111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 15 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010011110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100000"); -- Check that RegA is correct
        RegIn <= "01001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 20 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0001111101001001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000110"); -- Check that RegA is correct
        assert(RegBOut = "01011101"); -- Check that RegB is correct
        RegIn <= "01000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 5 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010001010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        RegIn <= "10001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 31 and rb = 25 (only the ones that are used for the instruction).
        IR <= "1001010111110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        RegIn <= "10111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 11 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111101010110011";
        wait until (clock = '1');
        assert(RegAOut = "00011100");


        -- Testing: MUL on inputs ra = 17 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001110100011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110101"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "01001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110100011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110101"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 28 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0011000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101101"); -- Check that RegA is correct
        RegIn <= "10101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 29 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101111010010";
        wait until (clock = '1');
        assert(RegAOut = "01001001");


        -- Testing: COM on inputs ra = 5 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001001"); -- Check that RegA is correct
        RegIn <= "00100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 29 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010111010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001001"); -- Check that RegA is correct
        RegIn <= "10000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 17 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010100011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110101"); -- Check that RegA is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 20 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0001111101001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000000"); -- Check that RegA is correct
        assert(RegBOut = "00000011"); -- Check that RegB is correct
        RegIn <= "10111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 29 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010111010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000100"); -- Check that RegA is correct
        RegIn <= "01101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 0 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0000101000000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001011"); -- Check that RegA is correct
        assert(RegBOut = "00110110"); -- Check that RegB is correct
        RegIn <= "01111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 29 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0110000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101001"); -- Check that RegA is correct
        RegIn <= "10001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101101"); -- Check that RegA is correct
        RegIn <= "10010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001001"); -- Check that RegA is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 27 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010110110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        RegIn <= "10110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 27 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0001110110110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110011"); -- Check that RegA is correct
        assert(RegBOut = "10111001"); -- Check that RegB is correct
        RegIn <= "00111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 17 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0000011100010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        assert(RegBOut = "11011010"); -- Check that RegB is correct
        RegIn <= "01010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 18 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010100100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011010"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 11 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0001110010111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011100"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "00010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 20 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1111100101000101";
        RegIn <= "11100011";
        wait until (clock = '1');
        assert(RegAOut = "10111010");


        -- Testing: ADC on inputs ra = 30 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0001111111101110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 21 and rb = 10 (only the ones that are used for the instruction).
        IR <= "1001010101011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001010"); -- Check that RegA is correct
        RegIn <= "10101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 28 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0000111111001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101101"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "01000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010111"); -- Check that RegA is correct
        RegIn <= "01100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111010"); -- Check that RegA is correct
        RegIn <= "10001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 3 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1111100000110111";
        RegIn <= "01011011";
        wait until (clock = '1');
        assert(RegAOut = "11101010");


        -- Testing: OR on inputs ra = 23 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0010100101110100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000001"); -- Check that RegA is correct
        assert(RegBOut = "00011110"); -- Check that RegB is correct
        RegIn <= "00001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010101000";
        wait until (clock = '1');


        -- Testing: OR on inputs ra = 25 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0010101110010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        assert(RegBOut = "00001110"); -- Check that RegB is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 25 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0001101110011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        assert(RegBOut = "01000010"); -- Check that RegB is correct
        RegIn <= "10010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 30 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0010000111100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100011"); -- Check that RegA is correct
        assert(RegBOut = "10111001"); -- Check that RegB is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 15 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010011110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001011"); -- Check that RegA is correct
        RegIn <= "10011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 31 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0001100111110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111101"); -- Check that RegA is correct
        assert(RegBOut = "10111001"); -- Check that RegB is correct
        RegIn <= "11011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 7 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010001110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111001"); -- Check that RegA is correct
        RegIn <= "01111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100011"); -- Check that RegA is correct
        RegIn <= "00100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001010"); -- Check that RegA is correct
        RegIn <= "00001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: SBCI on inputs ra = 27 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0100000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001110"); -- Check that RegA is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100011"); -- Check that RegA is correct
        RegIn <= "00111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011110"); -- Check that RegA is correct
        RegIn <= "11001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010111000";
        wait until (clock = '1');


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100001"); -- Check that RegA is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111001"); -- Check that RegA is correct
        RegIn <= "10110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 5 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001010001010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100001"); -- Check that RegA is correct
        RegIn <= "01010011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 28 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0011000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000010"); -- Check that RegA is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 6 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001101000";
        wait until (clock = '1');


        -- Testing: LSR on inputs ra = 1 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1001010000010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101101"); -- Check that RegA is correct
        RegIn <= "00111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000011"); -- Check that RegA is correct
        RegIn <= "11111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010011"); -- Check that RegA is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 21 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0010001101010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101110"); -- Check that RegA is correct
        assert(RegBOut = "11010111"); -- Check that RegB is correct
        RegIn <= "00101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 19 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0000010100110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        assert(RegBOut = "01111110"); -- Check that RegB is correct
        RegIn <= "11100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 22 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010101100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110110"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 19 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000010100111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        assert(RegBOut = "00100100"); -- Check that RegB is correct
        RegIn <= "10000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 11 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0000101010111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010011"); -- Check that RegA is correct
        assert(RegBOut = "01000010"); -- Check that RegB is correct
        RegIn <= "11001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 0 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0000010000001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111000"); -- Check that RegA is correct
        assert(RegBOut = "00111000"); -- Check that RegB is correct
        RegIn <= "11000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 8 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010010000010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001011"); -- Check that RegA is correct
        RegIn <= "10101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 0 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111000"); -- Check that RegA is correct
        RegIn <= "00001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 3 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0001101000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011011"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "11111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 27 and rb = 29 (only the ones that are used for the instruction).
        IR <= "1001010110110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110011"); -- Check that RegA is correct
        RegIn <= "01110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 23 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0001010101111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001110"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "00011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 30 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0001110111101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111001"); -- Check that RegA is correct
        assert(RegBOut = "11001001"); -- Check that RegB is correct
        RegIn <= "00101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 2 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0000111000101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001101"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "10110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 24 and rb = 20 (only the ones that are used for the instruction).
        IR <= "1001111110000100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        assert(RegBOut = "11100011"); -- Check that RegB is correct
        RegIn <= "00000010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111110000100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        assert(RegBOut = "11100011"); -- Check that RegB is correct
        RegIn <= "00100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 9 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0010001010011101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101011"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "10101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 27 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0001101110110100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110110"); -- Check that RegA is correct
        assert(RegBOut = "11100011"); -- Check that RegB is correct
        RegIn <= "11111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 23 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0001111101110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001110"); -- Check that RegA is correct
        assert(RegBOut = "00101000"); -- Check that RegB is correct
        RegIn <= "01111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 22 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0001100101100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        assert(RegBOut = "00000010"); -- Check that RegB is correct
        RegIn <= "11100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 7 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010001111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111110"); -- Check that RegA is correct
        RegIn <= "00001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000111000";
        wait until (clock = '1');


        -- Testing: CPI on inputs ra = 13 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0011000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "00001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 2 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010000100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110011"); -- Check that RegA is correct
        RegIn <= "00000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 17 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0010010100010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        assert(RegBOut = "00100101"); -- Check that RegB is correct
        RegIn <= "10000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 4 and rb = 31 (only the ones that are used for the instruction).
        IR <= "1001010001000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        RegIn <= "01101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011111000";
        wait until (clock = '1');


        -- Testing: OR on inputs ra = 26 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0010100110100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100101"); -- Check that RegA is correct
        assert(RegBOut = "00001101"); -- Check that RegB is correct
        RegIn <= "01010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 26 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0000011110101101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010000"); -- Check that RegA is correct
        assert(RegBOut = "10001011"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 30 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0000101111101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101011"); -- Check that RegA is correct
        assert(RegBOut = "01010000"); -- Check that RegB is correct
        RegIn <= "00111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 18 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111100100100100";
        RegIn <= "10001001";
        wait until (clock = '1');
        assert(RegAOut = "00010010");


        -- Testing: SUB on inputs ra = 11 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0001100010111110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001001"); -- Check that RegA is correct
        assert(RegBOut = "00111000"); -- Check that RegB is correct
        RegIn <= "00111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 28 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1111101111000110";
        wait until (clock = '1');
        assert(RegAOut = "01000010");


        -- Testing: BCLR on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011111000";
        wait until (clock = '1');


        -- Testing: SUBI on inputs ra = 13 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0101000011010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001011"); -- Check that RegA is correct
        RegIn <= "01010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 2 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0011000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001001"); -- Check that RegA is correct
        RegIn <= "00001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 20 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0001010101000100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100011"); -- Check that RegA is correct
        assert(RegBOut = "01101100"); -- Check that RegB is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 11 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0110000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111001"); -- Check that RegA is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 18 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111101100101011";
        wait until (clock = '1');
        assert(RegAOut = "10001001");


        -- Testing: ASR on inputs ra = 23 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010101110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111101"); -- Check that RegA is correct
        RegIn <= "11101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 0 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0010000000001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        assert(RegBOut = "00111000"); -- Check that RegB is correct
        RegIn <= "01001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        RegIn <= "01100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100011"); -- Check that RegA is correct
        RegIn <= "10110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 14 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0101000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111011"); -- Check that RegA is correct
        RegIn <= "10001100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 29 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0001010111010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010101"); -- Check that RegA is correct
        assert(RegBOut = "00001101"); -- Check that RegB is correct
        RegIn <= "01001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 21 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0001110101010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101000"); -- Check that RegA is correct
        assert(RegBOut = "01001000"); -- Check that RegB is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 16 and rb = 7 (only the ones that are used for the instruction).
        IR <= "1001010100000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101000"); -- Check that RegA is correct
        RegIn <= "01111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010001000";
        wait until (clock = '1');


        -- Testing: CPC on inputs ra = 26 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0000010110100110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010000"); -- Check that RegA is correct
        assert(RegBOut = "10111001"); -- Check that RegB is correct
        RegIn <= "10000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100101"); -- Check that RegA is correct
        RegIn <= "01010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110001"); -- Check that RegA is correct
        RegIn <= "01010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 3 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0001100000110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        assert(RegBOut = "01010011"); -- Check that RegB is correct
        RegIn <= "00000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 8 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0110000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010001"); -- Check that RegA is correct
        RegIn <= "10111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 21 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0110000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        RegIn <= "11001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 31 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010111110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001101"); -- Check that RegA is correct
        RegIn <= "11101100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 1 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0000111000010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100101"); -- Check that RegA is correct
        assert(RegBOut = "11001111"); -- Check that RegB is correct
        RegIn <= "00110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 9 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0111000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        RegIn <= "10010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 17 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0000101100011111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000110"); -- Check that RegA is correct
        assert(RegBOut = "11101100"); -- Check that RegB is correct
        RegIn <= "01000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 17 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010100010111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000110"); -- Check that RegA is correct
        RegIn <= "11001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 19 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010100111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 7 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101001111010";
        wait until (clock = '1');
        assert(RegAOut = "00001101");


        -- Testing: ADD on inputs ra = 1 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0000110000011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110100"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "01111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001100"); -- Check that RegA is correct
        RegIn <= "10110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101100"); -- Check that RegA is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 16 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0010010100001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111101"); -- Check that RegA is correct
        assert(RegBOut = "00100100"); -- Check that RegB is correct
        RegIn <= "11110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 8 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0001110010001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101000"); -- Check that RegA is correct
        assert(RegBOut = "00100100"); -- Check that RegB is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: SUBI on inputs ra = 9 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0101000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010000"); -- Check that RegA is correct
        RegIn <= "01111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 17 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010100010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        RegIn <= "10101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 28 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0010011111000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000010"); -- Check that RegA is correct
        assert(RegBOut = "10101110"); -- Check that RegB is correct
        RegIn <= "01010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010000"); -- Check that RegA is correct
        RegIn <= "10101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001110"); -- Check that RegA is correct
        RegIn <= "10100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 12 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0100000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010100"); -- Check that RegA is correct
        RegIn <= "00110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 18 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010100100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001001"); -- Check that RegA is correct
        RegIn <= "11110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 23 and rb = 9 (only the ones that are used for the instruction).
        IR <= "1001010101110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101100"); -- Check that RegA is correct
        RegIn <= "11110101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 22 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010101100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100100"); -- Check that RegA is correct
        RegIn <= "01001101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 14 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0000101011101000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111000"); -- Check that RegA is correct
        assert(RegBOut = "10111010"); -- Check that RegB is correct
        RegIn <= "10101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000001000";
        wait until (clock = '1');


        -- Testing: ADC on inputs ra = 16 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0001110100001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110101"); -- Check that RegA is correct
        assert(RegBOut = "01100100"); -- Check that RegB is correct
        RegIn <= "10010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 1 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0100000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101110"); -- Check that RegA is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 0 and rb = 18 (only the ones that are used for the instruction).
        IR <= "1001010000000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001000"); -- Check that RegA is correct
        RegIn <= "11000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101101"); -- Check that RegA is correct
        RegIn <= "01011101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100111"); -- Check that RegA is correct
        RegIn <= "10100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 21 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0000111101010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001111"); -- Check that RegA is correct
        assert(RegBOut = "10011001"); -- Check that RegB is correct
        RegIn <= "00110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 7 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0111000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110101"); -- Check that RegA is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 7 and rb = 28 (only the ones that are used for the instruction).
        IR <= "1001010001110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001101"); -- Check that RegA is correct
        RegIn <= "01010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 4 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0010101001001111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101100"); -- Check that RegA is correct
        assert(RegBOut = "11101011"); -- Check that RegB is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 30 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0001101111101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10110101"); -- Check that RegA is correct
        assert(RegBOut = "00110111"); -- Check that RegB is correct
        RegIn <= "01100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100011"); -- Check that RegA is correct
        RegIn <= "10111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        RegIn <= "01000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 18 and rb = 25 (only the ones that are used for the instruction).
        IR <= "0101000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110011"); -- Check that RegA is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 25 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001110110011111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111000"); -- Check that RegA is correct
        assert(RegBOut = "10011111"); -- Check that RegB is correct
        RegIn <= "01011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110110011111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111000"); -- Check that RegA is correct
        assert(RegBOut = "10011111"); -- Check that RegB is correct
        RegIn <= "10010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011001000";
        wait until (clock = '1');


        -- Testing: BCLR on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010011011000";
        wait until (clock = '1');


        -- Testing: MUL on inputs ra = 0 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001111000001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011110"); -- Check that RegA is correct
        assert(RegBOut = "10111010"); -- Check that RegB is correct
        RegIn <= "10010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111000001000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010101"); -- Check that RegA is correct
        assert(RegBOut = "10111010"); -- Check that RegB is correct
        RegIn <= "11000001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 2 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0111000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 3 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010000110111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000000"); -- Check that RegA is correct
        RegIn <= "01000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBCI on inputs ra = 21 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0100000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110100"); -- Check that RegA is correct
        RegIn <= "00000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: ADC on inputs ra = 24 and rb = 30 (only the ones that are used for the instruction).
        IR <= "0001111110001110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111010"); -- Check that RegA is correct
        assert(RegBOut = "10111101"); -- Check that RegB is correct
        RegIn <= "00101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 30 and rb = 4 (only the ones that are used for the instruction).
        IR <= "0110000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111101"); -- Check that RegA is correct
        RegIn <= "00010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 8 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010010001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 12 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0110000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110111"); -- Check that RegA is correct
        RegIn <= "00000110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 11 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010010111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111110"); -- Check that RegA is correct
        RegIn <= "00100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 12 and rb = 3 (only the ones that are used for the instruction).
        IR <= "0101000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000110"); -- Check that RegA is correct
        RegIn <= "11111100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 8 and rb = 26 (only the ones that are used for the instruction).
        IR <= "1001010010000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        RegIn <= "11110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 6 and rb = 13 (only the ones that are used for the instruction).
        IR <= "1001010001100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111001"); -- Check that RegA is correct
        RegIn <= "01101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 10 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101110"); -- Check that RegA is correct
        RegIn <= "11011000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 10 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011000"); -- Check that RegA is correct
        RegIn <= "10010110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 2 and rb = 11 (only the ones that are used for the instruction).
        IR <= "1001110000101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "01100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001110000101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 10 and rb = 20 (only the ones that are used for the instruction).
        IR <= "0010101010100100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010110"); -- Check that RegA is correct
        assert(RegBOut = "11100011"); -- Check that RegB is correct
        RegIn <= "11010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 31 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0010010111111011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000001"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "00101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 6 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0001110001101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101110"); -- Check that RegA is correct
        assert(RegBOut = "11010101"); -- Check that RegB is correct
        RegIn <= "00101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 23 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0111000001110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101010"); -- Check that RegA is correct
        RegIn <= "01111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 10 and rb = 31 (only the ones that are used for the instruction).
        IR <= "0001101010101111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010101"); -- Check that RegA is correct
        assert(RegBOut = "00101010"); -- Check that RegB is correct
        RegIn <= "01110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 31 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000010111111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101010"); -- Check that RegA is correct
        assert(RegBOut = "00100100"); -- Check that RegB is correct
        RegIn <= "11000100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 28 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0110000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        RegIn <= "00111010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010011000";
        wait until (clock = '1');


        -- Testing: ORI on inputs ra = 24 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0110000010000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101101"); -- Check that RegA is correct
        RegIn <= "01100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 23 and rb = 19 (only the ones that are used for the instruction).
        IR <= "0000101101110011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111010"); -- Check that RegA is correct
        assert(RegBOut = "11100001"); -- Check that RegB is correct
        RegIn <= "01100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 12 and rb = 19 (only the ones that are used for the instruction).
        IR <= "1001010011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000010"); -- Check that RegA is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: LSR on inputs ra = 7 and rb = 12 (only the ones that are used for the instruction).
        IR <= "1001010001110110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010000"); -- Check that RegA is correct
        RegIn <= "11100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 27 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0010101110110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100110"); -- Check that RegA is correct
        assert(RegBOut = "00000101"); -- Check that RegB is correct
        RegIn <= "00010101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100000"); -- Check that RegA is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01111000"); -- Check that RegA is correct
        RegIn <= "11111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 17 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0110000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011001"); -- Check that RegA is correct
        RegIn <= "10011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 17 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0010101100011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011100"); -- Check that RegA is correct
        assert(RegBOut = "01101101"); -- Check that RegB is correct
        RegIn <= "10111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 1 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0001101000010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        assert(RegBOut = "01001101"); -- Check that RegB is correct
        RegIn <= "10111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 4 and rb = 17 (only the ones that are used for the instruction).
        IR <= "0001101001000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111100"); -- Check that RegA is correct
        assert(RegBOut = "10111110"); -- Check that RegB is correct
        RegIn <= "11011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 31 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0111000011110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101010"); -- Check that RegA is correct
        RegIn <= "01010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 28 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0001111111000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111010"); -- Check that RegA is correct
        assert(RegBOut = "10010110"); -- Check that RegB is correct
        RegIn <= "01001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 21 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1111100101010011";
        RegIn <= "01110011";
        wait until (clock = '1');
        assert(RegAOut = "00000101");


        -- Testing: SBC on inputs ra = 19 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0000100100111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        assert(RegBOut = "01101010"); -- Check that RegB is correct
        RegIn <= "10011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01011101"); -- Check that RegA is correct
        RegIn <= "01100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010101"); -- Check that RegA is correct
        RegIn <= "00111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 2 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0011000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        RegIn <= "11000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 29 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0010010111010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010101"); -- Check that RegA is correct
        assert(RegBOut = "01100111"); -- Check that RegB is correct
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000101000";
        wait until (clock = '1');


        -- Testing: SWAP on inputs ra = 7 and rb = 15 (only the ones that are used for the instruction).
        IR <= "1001010001110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100011"); -- Check that RegA is correct
        RegIn <= "11011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 14 and rb = 23 (only the ones that are used for the instruction).
        IR <= "1001010011100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101110"); -- Check that RegA is correct
        RegIn <= "00110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 20 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111100101000000";
        RegIn <= "11010001";
        wait until (clock = '1');
        assert(RegAOut = "11100011");


        -- Testing: SUBI on inputs ra = 28 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0101000011000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001000"); -- Check that RegA is correct
        RegIn <= "11101000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 25 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0111000010010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111101"); -- Check that RegA is correct
        RegIn <= "01110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 7 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111101001110100";
        wait until (clock = '1');
        assert(RegAOut = "11011011");


        -- Testing: ANDI on inputs ra = 22 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0111000001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01001101"); -- Check that RegA is correct
        RegIn <= "11010000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 22 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0110000001100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010000"); -- Check that RegA is correct
        RegIn <= "01100100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 21 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0001110101010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110011"); -- Check that RegA is correct
        assert(RegBOut = "00000101"); -- Check that RegB is correct
        RegIn <= "11000011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010110"); -- Check that RegA is correct
        RegIn <= "01110011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011000110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010001"); -- Check that RegA is correct
        RegIn <= "10010100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 0 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0111000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010110"); -- Check that RegA is correct
        RegIn <= "00100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 17 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0000010100010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111110"); -- Check that RegA is correct
        assert(RegBOut = "01010011"); -- Check that RegB is correct
        RegIn <= "00001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 27 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010110110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111101"); -- Check that RegA is correct
        RegIn <= "11100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BCLR on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010010111000";
        wait until (clock = '1');


        -- Testing: EOR on inputs ra = 29 and rb = 6 (only the ones that are used for the instruction).
        IR <= "0010010111010110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010001"); -- Check that RegA is correct
        assert(RegBOut = "00101111"); -- Check that RegB is correct
        RegIn <= "11100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 1 and rb = 14 (only the ones that are used for the instruction).
        IR <= "1001010000011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111000"); -- Check that RegA is correct
        RegIn <= "10100101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 1 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0010010000011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100101"); -- Check that RegA is correct
        assert(RegBOut = "01110000"); -- Check that RegB is correct
        RegIn <= "00000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: COM on inputs ra = 1 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000000"); -- Check that RegA is correct
        RegIn <= "10011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 24 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0000110110001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101101"); -- Check that RegA is correct
        assert(RegBOut = "01110000"); -- Check that RegB is correct
        RegIn <= "01110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000111000";
        wait until (clock = '1');


        -- Testing: NEG on inputs ra = 6 and rb = 27 (only the ones that are used for the instruction).
        IR <= "1001010001100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101111"); -- Check that RegA is correct
        RegIn <= "00110100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 16 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0011000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100000"); -- Check that RegA is correct
        RegIn <= "00011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 2 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0001011000100010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00000101"); -- Check that RegA is correct
        assert(RegBOut = "11101011"); -- Check that RegB is correct
        RegIn <= "10100110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 16 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010100000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100000"); -- Check that RegA is correct
        RegIn <= "01110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 4 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001001000";
        wait until (clock = '1');


        -- Testing: ADC on inputs ra = 13 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0001110011011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100100"); -- Check that RegA is correct
        assert(RegBOut = "01110000"); -- Check that RegB is correct
        RegIn <= "00110010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 13 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0000110011011001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110010"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "10011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 17 and rb = 15 (only the ones that are used for the instruction).
        IR <= "0110000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10111110"); -- Check that RegA is correct
        RegIn <= "00111000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 15 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0000010011111100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011111"); -- Check that RegA is correct
        assert(RegBOut = "01101010"); -- Check that RegB is correct
        RegIn <= "11111001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 25 and rb = 24 (only the ones that are used for the instruction).
        IR <= "1001010110010101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110001"); -- Check that RegA is correct
        RegIn <= "01110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 7 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010001111000";
        wait until (clock = '1');


        -- Testing: SWAP on inputs ra = 25 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001010110010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110001"); -- Check that RegA is correct
        RegIn <= "01100001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 21 and rb = 4 (only the ones that are used for the instruction).
        IR <= "1111100101010100";
        RegIn <= "00101001";
        wait until (clock = '1');
        assert(RegAOut = "11000011");


        -- Testing: SBIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110011"); -- Check that RegA is correct
        RegIn <= "10000101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10010100"); -- Check that RegA is correct
        RegIn <= "00111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 20 and rb = 9 (only the ones that are used for the instruction).
        IR <= "0010000101001001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010001"); -- Check that RegA is correct
        assert(RegBOut = "10101000"); -- Check that RegB is correct
        RegIn <= "11001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 3 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10000101"); -- Check that RegA is correct
        RegIn <= "11110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111011"); -- Check that RegA is correct
        RegIn <= "11001010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ASR on inputs ra = 19 and rb = 3 (only the ones that are used for the instruction).
        IR <= "1001010100110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011110"); -- Check that RegA is correct
        RegIn <= "10011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 16 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1001010100000011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110001"); -- Check that RegA is correct
        RegIn <= "00111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 25 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0010001110011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100001"); -- Check that RegA is correct
        assert(RegBOut = "11101000"); -- Check that RegB is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADD on inputs ra = 4 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0000110001000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011011"); -- Check that RegA is correct
        assert(RegBOut = "10011100"); -- Check that RegB is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 26 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010110100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100110"); -- Check that RegA is correct
        RegIn <= "00011110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 8 and rb = 22 (only the ones that are used for the instruction).
        IR <= "0010001010000110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110000"); -- Check that RegA is correct
        assert(RegBOut = "01100100"); -- Check that RegB is correct
        RegIn <= "01101010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 24 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0001010110000001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110000"); -- Check that RegA is correct
        assert(RegBOut = "10011100"); -- Check that RegB is correct
        RegIn <= "10111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: DEC on inputs ra = 31 and rb = 21 (only the ones that are used for the instruction).
        IR <= "1001010111111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001010"); -- Check that RegA is correct
        RegIn <= "11011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 24 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0010001110000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110000"); -- Check that RegA is correct
        assert(RegBOut = "01100000"); -- Check that RegB is correct
        RegIn <= "00010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: AND on inputs ra = 17 and rb = 8 (only the ones that are used for the instruction).
        IR <= "0010000100011000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111000"); -- Check that RegA is correct
        assert(RegBOut = "01101010"); -- Check that RegB is correct
        RegIn <= "01101101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 5 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0000010001011100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010011"); -- Check that RegA is correct
        assert(RegBOut = "01101010"); -- Check that RegB is correct
        RegIn <= "01000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 10 and rb = 11 (only the ones that are used for the instruction).
        IR <= "0010100010101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01110000"); -- Check that RegA is correct
        assert(RegBOut = "00100000"); -- Check that RegB is correct
        RegIn <= "00111101"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 0 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000001000";
        wait until (clock = '1');


        -- Testing: OR on inputs ra = 24 and rb = 16 (only the ones that are used for the instruction).
        IR <= "0010101110000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00010111"); -- Check that RegA is correct
        assert(RegBOut = "00111110"); -- Check that RegB is correct
        RegIn <= "01111011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SWAP on inputs ra = 29 and rb = 5 (only the ones that are used for the instruction).
        IR <= "1001010111010010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100001"); -- Check that RegA is correct
        RegIn <= "11010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011110"); -- Check that RegA is correct
        RegIn <= "11110001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11100000"); -- Check that RegA is correct
        RegIn <= "00001111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101000"); -- Check that RegA is correct
        RegIn <= "00101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11010111"); -- Check that RegA is correct
        RegIn <= "00001011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 28 and rb = 23 (only the ones that are used for the instruction).
        IR <= "0000011111000111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101001"); -- Check that RegA is correct
        assert(RegBOut = "01100000"); -- Check that RegB is correct
        RegIn <= "01101110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 0 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0011000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111110"); -- Check that RegA is correct
        RegIn <= "01001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111100000100000";
        RegIn <= "00011010";
        wait until (clock = '1');
        assert(RegAOut = "00000101");


        -- Testing: BLD on inputs ra = 9 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1111100010010001";
        RegIn <= "10100001";
        wait until (clock = '1');
        assert(RegAOut = "10101000");


        -- Testing: ASR on inputs ra = 19 and rb = 1 (only the ones that are used for the instruction).
        IR <= "1001010100110101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10011001"); -- Check that RegA is correct
        RegIn <= "00100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ANDI on inputs ra = 1 and rb = 7 (only the ones that are used for the instruction).
        IR <= "0111000000010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101101"); -- Check that RegA is correct
        RegIn <= "00000000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 1 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101000010010";
        wait until (clock = '1');
        assert(RegAOut = "10011100");


        -- Testing: BSET on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000101000";
        wait until (clock = '1');


        -- Testing: ADD on inputs ra = 16 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0000110100001101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111110"); -- Check that RegA is correct
        assert(RegBOut = "10011110"); -- Check that RegB is correct
        RegIn <= "00110111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: NEG on inputs ra = 7 and rb = 8 (only the ones that are used for the instruction).
        IR <= "1001010001110001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011011"); -- Check that RegA is correct
        RegIn <= "00000111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPI on inputs ra = 2 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0011000000100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        RegIn <= "00010001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 14 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0001101011100101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110001"); -- Check that RegA is correct
        assert(RegBOut = "00101001"); -- Check that RegB is correct
        RegIn <= "01010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ROR on inputs ra = 10 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1001010010100111"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00111101"); -- Check that RegA is correct
        RegIn <= "00011111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 19 and rb = 13 (only the ones that are used for the instruction).
        IR <= "0010100100111101"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00100111"); -- Check that RegA is correct
        assert(RegBOut = "10011110"); -- Check that RegB is correct
        RegIn <= "11111110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 0 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010011000001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100111"); -- Check that RegA is correct
        assert(RegBOut = "00001111"); -- Check that RegB is correct
        RegIn <= "00110110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 16 and rb = 2 (only the ones that are used for the instruction).
        IR <= "1111101100001010";
        wait until (clock = '1');
        assert(RegAOut = "00110111");


        -- Testing: EOR on inputs ra = 14 and rb = 14 (only the ones that are used for the instruction).
        IR <= "0010010011101110"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010111"); -- Check that RegA is correct
        assert(RegBOut = "01010111"); -- Check that RegB is correct
        RegIn <= "10100010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 12 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0001111011001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101010"); -- Check that RegA is correct
        assert(RegBOut = "00001111"); -- Check that RegB is correct
        RegIn <= "00101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: INC on inputs ra = 5 and rb = 16 (only the ones that are used for the instruction).
        IR <= "1001010001010011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01010011"); -- Check that RegA is correct
        RegIn <= "11101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BSET on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001010000101000";
        wait until (clock = '1');


        -- Testing: ADD on inputs ra = 26 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0000111110101010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110001"); -- Check that RegA is correct
        assert(RegBOut = "11110001"); -- Check that RegB is correct
        RegIn <= "11110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: MUL on inputs ra = 22 and rb = 17 (only the ones that are used for the instruction).
        IR <= "1001111101100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        assert(RegBOut = "00000000"); -- Check that RegB is correct
        RegIn <= "10001110"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001111101100001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100100"); -- Check that RegA is correct
        assert(RegBOut = "00000000"); -- Check that RegB is correct
        RegIn <= "00011100"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 30 and rb = 28 (only the ones that are used for the instruction).
        IR <= "0000011111101100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        assert(RegBOut = "00101001"); -- Check that RegB is correct
        RegIn <= "10101111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 8 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0000101010001010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01101010"); -- Check that RegA is correct
        assert(RegBOut = "11110000"); -- Check that RegB is correct
        RegIn <= "10100011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CP on inputs ra = 2 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0001011000101011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00011010"); -- Check that RegA is correct
        assert(RegBOut = "00001111"); -- Check that RegB is correct
        RegIn <= "01110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BLD on inputs ra = 21 and rb = 6 (only the ones that are used for the instruction).
        IR <= "1111100101010110";
        RegIn <= "11110100";
        wait until (clock = '1');
        assert(RegAOut = "00101001");


        -- Testing: SUBI on inputs ra = 0 and rb = 5 (only the ones that are used for the instruction).
        IR <= "0101000000000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110111"); -- Check that RegA is correct
        RegIn <= "10011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: OR on inputs ra = 23 and rb = 18 (only the ones that are used for the instruction).
        IR <= "0010101101110010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01100000"); -- Check that RegA is correct
        assert(RegBOut = "11101011"); -- Check that RegB is correct
        RegIn <= "11011011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUB on inputs ra = 0 and rb = 12 (only the ones that are used for the instruction).
        IR <= "0001100000001100"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10001110"); -- Check that RegA is correct
        assert(RegBOut = "00101011"); -- Check that RegB is correct
        RegIn <= "00110000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBC on inputs ra = 19 and rb = 24 (only the ones that are used for the instruction).
        IR <= "0000101100111000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11111110"); -- Check that RegA is correct
        assert(RegBOut = "01111011"); -- Check that RegB is correct
        RegIn <= "11111111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 20 and rb = 26 (only the ones that are used for the instruction).
        IR <= "0101000001000000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11001011"); -- Check that RegA is correct
        RegIn <= "00100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ORI on inputs ra = 5 and rb = 29 (only the ones that are used for the instruction).
        IR <= "0110000001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110100"); -- Check that RegA is correct
        RegIn <= "11011010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 27 and rb = 21 (only the ones that are used for the instruction).
        IR <= "0101000010110000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001111"); -- Check that RegA is correct
        RegIn <= "10101011"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SUBI on inputs ra = 14 and rb = 2 (only the ones that are used for the instruction).
        IR <= "0101000011100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110110"); -- Check that RegA is correct
        RegIn <= "11100111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: SBIW on inputs ra = 1 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11110000"); -- Check that RegA is correct
        RegIn <= "00011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10101011"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 9 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0001110010011010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "10100001"); -- Check that RegA is correct
        assert(RegBOut = "00011111"); -- Check that RegB is correct
        RegIn <= "10101001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: CPC on inputs ra = 21 and rb = 1 (only the ones that are used for the instruction).
        IR <= "0000010101010001"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11011010"); -- Check that RegA is correct
        assert(RegBOut = "00011100"); -- Check that RegB is correct
        RegIn <= "11010111"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 3 and rb = 10 (only the ones that are used for the instruction).
        IR <= "0010010000111010"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "01000000"); -- Check that RegA is correct
        assert(RegBOut = "00011111"); -- Check that RegB is correct
        RegIn <= "11100000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: ADC on inputs ra = 5 and rb = 0 (only the ones that are used for the instruction).
        IR <= "0001110001010000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "11101011"); -- Check that RegA is correct
        assert(RegBOut = "00110000"); -- Check that RegB is correct
        RegIn <= "00001001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: BST on inputs ra = 30 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1111101111101000";
        wait until (clock = '1');
        assert(RegAOut = "11100111");


        -- Testing: SBIW on inputs ra = 2 and rb = 0 (only the ones that are used for the instruction).
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00101001"); -- Check that RegA is correct
        RegIn <= "00001000"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge
        IR <= "1001011100100000"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00001011"); -- Check that RegA is correct
        RegIn <= "00010010"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge


        -- Testing: EOR on inputs ra = 0 and rb = 27 (only the ones that are used for the instruction).
        IR <= "0010011000001011"; -- New instruction after clock edge
        wait until (clock = '0'); -- Combinational Logic should be complete by this point
        assert(RegAOut = "00110000"); -- Check that RegA is correct
        assert(RegBOut = "00010010"); -- Check that RegB is correct
        RegIn <= "01011001"; -- New input to the registers
        wait until (clock = '1'); -- All updates at clock edge



        report "DONE WITH SIMULATIONS";

        END_SIM <= TRUE;    --end of stimulus events
        wait;               --wait for the simulation to end
    end process;
    
    -- Clock process definitions
    CLOCK_CLK : process
    begin
        -- this process generates a 20 ns period, 50% duty cycle clock
        -- only generate clock if still simulating
        if end_sim = false then
            clock <= '0';
            wait for 10 ns;
        else
            wait;
        end if;
  
        if end_sim = false then
            clock <= '1';
            wait for 10 ns;
        else
            wait;
        end if;
   end process;
end TB_ARCHITECTURE;





