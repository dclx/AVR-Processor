----------------------------------------------------------------------------------
-- Company:         Caltech EE 119B
-- Engineer:        Albert Gural and Bryan He
-- 
-- Design Name:     AVR-Processor
-- Module Name:     AVRControl - DataFlow 
-- Project Name:    AVR-Processor
-- Target Devices:  Xilinx Spartan III XC3S1200EFGG3204C
-- Tool versions:   Xilinx ISE 14.7
-- Description:     Reads instructions on clock edges and specifies
--                    - which registers to read
--                    - immediate value (and whether or not to use it)
--                    - which status flags should be changed
--                    - which register to write to (if any)
--                    - which ALU block is used (F, Shift, Add, Mul)
--                    - which operation the block should run
--                    - step of instruction (if two clocks)
--
-- Revision: 1.0
-- For file history, see https://github.com/agural/AVR-Processor 
--
----------------------------------------------------------------------------------

-- bring in necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library opcodes;
use opcodes.opcodes.all;

library ALUCommands;
use ALUCommands.ALUCommands.all;

-- Entity that controls the registers and ALU
entity AVRControl is
    port (
        clock                  : in  std_logic;                    -- system clock
        IR                     : in  opcode_word;                  -- instruction register
        ALUStatusMask          : out std_logic_vector(7 downto 0); -- status bits that can be changed
        ALUStatusBitChangeEn   : out std_logic;                    -- instruction to change status
        ALUBitClrSet           : out std_logic;                    -- set the selected bit
        ALUBitTOp              : out std_logic;                    -- instruction to change flag T
        ALUOp2Sel              : out std_logic;                    -- second argument is register/immediate
        ImmediateOut           : out std_logic_vector(7 downto 0); -- value of immediate
        ALUBlockSel            : out std_logic_vector(1 downto 0); -- which ALU block is used
        ALUBlockInstructionSel : out std_logic_vector(3 downto 0); -- which instruction for ALU block
        EnableIn : out std_logic;                                  -- whether or not to write to register
        SelIn    : out std_logic_vector(4 downto 0);               -- register to write to
        SelA     : out std_logic_vector(4 downto 0);               -- first register to read
        SelB     : out std_logic_vector(4 downto 0)                -- second register to read
    );
end AVRControl;

architecture DataFlow of AVRControl is
    signal CycleCount  :   std_logic := '0'; -- which clock of instruction (for 2-clock instructions)
begin

    -- Decode new instructions on clock edge
    DecodeInstruction: process (clock)
    begin
        -- only decode on the rising edge of clock
        if (rising_edge(clock)) then
            ALUOp2Sel <= RegOp2; -- default second operand is from register
            EnableIn <= '1';     -- enable write to register by default
            SelA <= IR(8 downto 4);         -- bits specifying first register
            SelB <= IR(9) & IR(3 downto 0); -- bits specifying second register
            SelIn <= IR(8 downto 4);        -- normally write to first register
            ImmediateOut <= IR(11 downto 8) & IR(3 downto 0); -- normal immediate value

            ALUBitClrSet <= StatusBitClear; -- arbitrary value (changed in cases where needed)
            ALUStatusBitChangeEn <= '0';    -- by default, do not change status bits
            ALUBitTOp <= '0';               -- by default, do not change flag T

            if std_match(IR, OpADC   ) then -- add with carry
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits may be changed
                ALUBlockSel <= ALUAddBlock;        -- specify add block used
                ALUBlockInstructionSel <= AddBlockAddCarry; -- specify add with carry instruction
            end if;

            if std_match(IR, OpADD   ) then -- add
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits may be changed
                ALUBlockSel <= ALUAddBlock;        -- specify add block used
                ALUBlockInstructionSel <= AddBlockAdd; -- specify add instruction
            end if;

            if std_match(IR, OpADIW  ) then -- add immediate to work
                ALUStatusMask <= flag_mask_ZCNVS; -- specify which bits may be changed
                ALUOp2Sel <= ImmedOp2;            -- specify immediate value used
                ALUBlockSel <= ALUAddBlock;       -- specify add block used
                ImmediateOut(7 downto 6) <= "00"; -- top 2 immediate bits are forced 0

                if (CycleCount = '0') then -- first clock of 2
                    ALUBlockInstructionSel <= AddBlockAdd;
                    -- select the first register of the two
                    if (IR(5 downto 4) = "00") then
                        SelA <= std_logic_vector(to_unsigned(24, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(24, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "01") then
                        SelA <= std_logic_vector(to_unsigned(26, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(26, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "10") then
                        SelA <= std_logic_vector(to_unsigned(28, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(28, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "11") then
                        SelA <= std_logic_vector(to_unsigned(30, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(30, SelIn'length));
                    end if;
                end if;
                if (CycleCount = '1') then -- second clock of 2
                    ALUBlockInstructionSel <= AddBlockAddCarry; -- only process the remaining carry
                    ImmediateOut <= "00000000"; -- nothing new added
                    -- select the second register of the two
                    if (IR(5 downto 4) = "00") then
                        SelA <= std_logic_vector(to_unsigned(25, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(25, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "01") then
                        SelA <= std_logic_vector(to_unsigned(27, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(27, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "10") then
                        SelA <= std_logic_vector(to_unsigned(29, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(29, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "11") then
                        SelA <= std_logic_vector(to_unsigned(31, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(31, SelIn'length));
                    end if;
                end if;
            end if;

            if std_match(IR, OpAND   ) then -- and
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUFBlock; -- specify f block used
                ALUBlockInstructionSel <= FBlockAND; -- specify and instruction
            end if;

            if std_match(IR, OpANDI  ) then
                ALUOp2Sel <= ImmedOp2; -- specify immediate used
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUFBlock; -- specify f block used
                SelA(4)  <= '1'; -- only upper set of registers used
                SelIn(4) <= '1'; -- only upper set of registers used
                ALUBlockInstructionSel <= FBlockAND; -- specify and instruction
            end if;

            if std_match(IR, OpASR   ) then -- arithmetic shift right
                ALUStatusMask <= flag_mask_ZCNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUShiftBlock; -- specify shift block used
                ALUBlockInstructionSel <= ShiftBlockArith; -- specify arithmetic shift instruction
            end if;

            if std_match(IR, OpBCLR  ) then -- bit clear
                --OR operand 1 with zero to pass through to flag logic
                ALUBlockSel <= ALUFBlock; -- specify f block used
                ALUBlockInstructionSel <= FBlockOR; -- specify or used
                ImmediateOut <= "00000000"; -- or with zero
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used

                --only enable changing of bit s (IR[6:4]) of status register
                ALUStatusMask <= "00000000"; -- clear everything except selected bit
                ALUStatusMask(conv_integer(IR(6 downto 4))) <= '1';
                ALUBitClrSet <= StatusBitClear; -- clearing this bit
                EnableIn <= '0'; -- do not write

                ALUStatusBitChangeEn <= '1'; -- manually changing status register bit

            end if;

            if std_match(IR, OpBLD   ) then
                --OR operand 1 with zero to pass through to flag logic
                ALUBlockSel <= ALUFBlock; -- specify f block used
                ALUBlockInstructionSel <= FBlockOR; -- specify or used
                ImmediateOut <= "00000000"; -- or with zero
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used

                --status mask now means which bit of operand 1 we're changing
                --only enable changing of bit b (IR[2:0])
                ALUStatusMask <= "00000000"; -- clear everything except selected bit
                ALUStatusMask(conv_integer(IR(2 downto 0))) <= '1';
                ALUBitTOp <= '1'; -- performing operation with T status bit
            end if;

            if std_match(IR, OpBSET  ) then
                --OR operand 1 with zero to pass through to flag logic
                ALUBlockSel <= ALUFBlock; -- specify f block used
                ALUBlockInstructionSel <= FBlockOR; -- specify or used
                ImmediateOut <= "00000000"; -- or with zero
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used

                --only enable changing of bit s (IR[6:4]) of status register
                ALUStatusMask <= "00000000"; -- clear everything except selected bit
                ALUStatusMask(conv_integer(IR(6 downto 4))) <= '1';
                ALUBitClrSet <= StatusBitSet; -- setting this bit
                EnableIn <= '0'; -- do not write

                ALUStatusBitChangeEn <= '1'; -- manually changing status register bit
            end if;

            if std_match(IR, OpBST   ) then
                EnableIn <= '0'; -- do not write

                --OR operand 1 with zero to pass through to flag logic
                ALUBlockSel <= ALUFBlock; -- specify f block used
                ALUBlockInstructionSel <= FBlockOR; -- specify or used
                ImmediateOut <= "00000000"; -- or with zero
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used

                --status mask now means which bit of operand 1 we're changing
                --only enable changing of bit b (IR[2:0])
                ALUStatusMask <= "00000000"; -- clear everything except selected bit
                ALUStatusMask(conv_integer(IR(2 downto 0))) <= '1';

                ALUStatusBitChangeEn <= '1'; -- manually changing status register bit
                ALUBitTOp <= '1'; -- performing operation with T status bit
            end if;

            if std_match(IR, OpCOM   ) then -- complement (not)
                ALUStatusMask <= flag_mask_ZCNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUFBlock; -- specify f block used
                ALUBlockInstructionSel <= FBlockNOTA; -- specify not instruction
            end if;

            if std_match(IR, OpCP    ) then -- compare
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block used
                EnableIn <= '0'; -- do not write
                ALUBlockInstructionSel <= AddBlockSub; -- specify subtract instruction
            end if;

            if std_match(IR, OpCPC   ) then -- compare with carry
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block used
                EnableIn <= '0'; -- do not write
                ALUBlockInstructionSel <= AddBlockSubCarry; -- specify subtract with carry instruction
            end if;

            if std_match(IR, OpCPI   ) then -- compare with immediate
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUOp2Sel <= ImmedOp2; -- immediate value used
                ALUBlockSel <= ALUAddBlock; -- specify add block used
                EnableIn <= '0'; -- do not write
                SelA(4)  <= '1'; -- only upper registers can be used
                SelIn(4) <= '1'; -- only upper registers can be used
                ALUBlockInstructionSel <= AddBlockSub; -- specify subtract instruction
            end if;

            if std_match(IR, OpDEC   ) then -- specify decrement
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block
                ALUBlockInstructionSel <= AddBlockSub; -- specify subtract instruction
                ALUOp2Sel <= ImmedOp2; -- specify immediate term used
                ImmediateOut <= "00000001"; -- subtract 1
            end if;

            if std_match(IR, OpEOR   ) then -- Exclusive or
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUFBlock; -- specify F block
                ALUBlockInstructionSel <= FBlockXOR; -- specify XOR instruction
            end if;

            if std_match(IR, OpINC   ) then -- increment
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block used
                ALUBlockInstructionSel <= AddBlockAdd; -- specify add instruction
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used
                ImmediateOut <= "00000001"; -- add 1
            end if;

            if std_match(IR, OpLSR   ) then -- logical shift right
                ALUStatusMask <= flag_mask_ZCNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUShiftBlock; -- specify shift block
                ALUBlockInstructionSel <= ShiftBlockLog; -- spefify logical shift instruction
            end if;

            if std_match(IR, OpMUL   ) then -- multiply
                ALUStatusMask <= flag_mask_ZC; -- specify which bits can be changed
                ALUBlockSel <= ALUMulBlock; -- specify multiply block
                if (CycleCount = '0') then -- first cycle
                    ALUBlockInstructionSel <= MulBlockLowByte;
                    SelIn <= "00000"; -- write to register 0
                end if;
                if (CycleCount = '1') then -- second cycle
                    ALUBlockInstructionSel <= MulBlockHighByte;
                    SelIn <= "00001"; -- write to register 1
                end if;
            end if;

            if std_match(IR, OpNEG   ) then -- negate
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block
                ALUBlockInstructionSel <= AddBlockNeg; -- specify negate instruction
            end if;

            if std_match(IR, OpOR    ) then -- or
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUFBlock; -- specify f block
                ALUBlockInstructionSel <= FBlockOR; -- specify or instruction
            end if;

            if std_match(IR, OpORI   ) then -- or with immediate
                ALUStatusMask <= flag_mask_ZNVS; -- specify which bits can be changed
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used
                ALUBlockSel <= ALUFBlock; -- specify f block
                SelA(4)  <= '1'; -- only upper registers can be used with immediate
                SelIn(4) <= '1'; -- only upper registers can be used with immediate
                ALUBlockInstructionSel <= FBlockOR; -- specify or instruction
            end if;

            if std_match(IR, OpROR   ) then -- rotate right
                ALUStatusMask <= flag_mask_ZCNVS; -- specify which bits can be changed
                ALUBlockSel <= ALUShiftBlock; -- specify shift block
                ALUBlockInstructionSel <= ShiftBlockRot; -- specify rotate instruction
            end if;

            if std_match(IR, OpSBC   ) then -- subtract with carry
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block
                ALUBlockInstructionSel <= AddBlockSubCarry; -- specify subtract with carry instruction
            end if;

            if std_match(IR, OpSBCI  ) then -- subtract with immediate and carry
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used
                ALUBlockSel <= ALUAddBlock; -- specify add block
                SelA(4)  <= '1'; -- only upper registers with immediate
                SelIn(4) <= '1'; -- only upper registers with immediate
                ALUBlockInstructionSel <= AddBlockSubCarry; -- specify subtract with carry instruction
            end if;

            if std_match(IR, OpSBIW  ) then -- subtract immediate from word
                ALUStatusMask <= flag_mask_ZCNVS; -- specify which bits can be changed
                ALUOp2Sel <= ImmedOp2; -- specify immediate value used
                ALUBlockSel <= ALUAddBlock; -- specify add block
                ImmediateOut(7 downto 6) <= "00"; -- top 2 bits in immediate set to 0

                if (CycleCount = '0') then -- first cycle
                    ALUBlockInstructionSel <= AddBlockSub;
                    -- select the first register of the two
                    if (IR(5 downto 4) = "00") then
                        SelA <= std_logic_vector(to_unsigned(24, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(24, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "01") then
                        SelA <= std_logic_vector(to_unsigned(26, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(26, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "10") then
                        SelA <= std_logic_vector(to_unsigned(28, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(28, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "11") then
                        SelA <= std_logic_vector(to_unsigned(30, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(30, SelIn'length));
                    end if;
                end if;
                if (CycleCount = '1') then -- second cycle
                    ALUBlockInstructionSel <= AddBlockSubCarry; -- only process the carry
                    ImmediateOut <= "00000000"; -- do not subtract anything else
                    -- select the second register of the two
                    if (IR(5 downto 4) = "00") then
                        SelA <= std_logic_vector(to_unsigned(25, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(25, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "01") then
                        SelA <= std_logic_vector(to_unsigned(27, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(27, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "10") then
                        SelA <= std_logic_vector(to_unsigned(29, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(29, SelIn'length));
                    end if;
                    if (IR(5 downto 4) = "11") then
                        SelA <= std_logic_vector(to_unsigned(31, SelIn'length));
                        SelIn <= std_logic_vector(to_unsigned(31, SelIn'length));
                    end if;
                end if;
            end if;

            if std_match(IR, OpSUB   ) then -- subtract
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUBlockSel <= ALUAddBlock; -- specify add block
                ALUBlockInstructionSel <= AddBlockSub; -- specify subtract instruction
            end if;

            if std_match(IR, OpSUBI  ) then -- subtract with immediate
                ALUStatusMask <= flag_mask_ZCNVSH; -- specify which bits can be changed
                ALUOp2Sel <= ImmedOp2; -- specify immediate used
                ALUBlockSel <= ALUAddBlock; -- specify add block
                SelA(4)  <= '1'; -- only upper registers can be used with immediate
                SelIn(4) <= '1'; -- only upper registers can be used with immediate
                ALUBlockInstructionSel <= AddBlockSub; -- specify subtract instruction
            end if;

            if std_match(IR, OpSWAP  ) then -- swap nibbles
                ALUStatusMask <= flag_mask_KEEPALL; -- specify which bits can be changed
                ALUBlockSel <= ALUShiftBlock; -- specify shift block
                ALUBlockInstructionSel <= ShiftBlockSwap; -- specify swap instruction
            end if;
        end if;
    end process DecodeInstruction;

    -- process to keep track of which step in a two-clock instruction is being run
    UpdateCycleCount: process(clock)
    begin
        -- only update on rising clock
        if rising_edge(clock) then
            CycleCount <= '0'; -- default to 0 (not two-clock instruction)
            if CycleCount = '0' and ( std_match(IR, OpMUL) or std_match(IR, OpADIW) or std_match(IR, OpSBIW) ) then
                -- update if in first clock of two clock instruction
                CycleCount <= '1';
            end if;
        end if;
    end process UpdateCycleCount;
end DataFlow;

