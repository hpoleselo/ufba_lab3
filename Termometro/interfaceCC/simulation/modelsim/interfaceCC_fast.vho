-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/01/2019 19:45:08"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	interfaceCC IS
    PORT (
	S : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	display_unidade : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	display_dezena : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	entrada : IN std_logic;
	clk : IN std_logic
	);
END interfaceCC;

-- Design Ports Information
-- S[0]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[6]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[0]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[1]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[2]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[3]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[4]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[5]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_unidade[6]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[0]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[2]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[3]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[4]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[5]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_dezena[6]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF interfaceCC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_entrada : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_unidade[6]~210clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal89~34_combout\ : std_logic;
SIGNAL \display_dezena~13_combout\ : std_logic;
SIGNAL \S[1]~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \display_unidade[2]~103_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \cont[0]~feeder_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \S[0]~reg0_regout\ : std_logic;
SIGNAL \entrada~combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \S[1]~15_combout\ : std_logic;
SIGNAL \S[1]~3_combout\ : std_logic;
SIGNAL \S[1]~reg0_regout\ : std_logic;
SIGNAL \S[2]~5_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \S[2]~4_combout\ : std_logic;
SIGNAL \S[2]~6_combout\ : std_logic;
SIGNAL \S[2]~reg0_regout\ : std_logic;
SIGNAL \S[3]~8_combout\ : std_logic;
SIGNAL \S[3]~9_combout\ : std_logic;
SIGNAL \S[3]~10_combout\ : std_logic;
SIGNAL \S[3]~reg0_regout\ : std_logic;
SIGNAL \S[4]~11_combout\ : std_logic;
SIGNAL \S[4]~12_combout\ : std_logic;
SIGNAL \S[4]~reg0_regout\ : std_logic;
SIGNAL \S[5]~13_combout\ : std_logic;
SIGNAL \S[5]~14_combout\ : std_logic;
SIGNAL \S[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \S[6]~reg0_regout\ : std_logic;
SIGNAL \saida[5]~0_combout\ : std_logic;
SIGNAL \saida[5]~1_combout\ : std_logic;
SIGNAL \saida2[3]~0_combout\ : std_logic;
SIGNAL \saida[4]~2_combout\ : std_logic;
SIGNAL \saida[4]~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \saida[2]~6_combout\ : std_logic;
SIGNAL \saida[2]~7_combout\ : std_logic;
SIGNAL \S[3]~7_combout\ : std_logic;
SIGNAL \saida[3]~4_combout\ : std_logic;
SIGNAL \saida[3]~5_combout\ : std_logic;
SIGNAL \display_unidade[6]~144_combout\ : std_logic;
SIGNAL \display_unidade[6]~210_combout\ : std_logic;
SIGNAL \display_unidade[6]~210clkctrl_outclk\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \saida2[0]~1_combout\ : std_logic;
SIGNAL \display_unidade[0]~164_combout\ : std_logic;
SIGNAL \display_unidade[0]~160_combout\ : std_logic;
SIGNAL \display_unidade[0]~163_combout\ : std_logic;
SIGNAL \display_unidade[0]~162_combout\ : std_logic;
SIGNAL \display_unidade[0]~161_combout\ : std_logic;
SIGNAL \display_unidade[0]~158_combout\ : std_logic;
SIGNAL \display_unidade[0]~157_combout\ : std_logic;
SIGNAL \display_unidade[0]~197_combout\ : std_logic;
SIGNAL \display_unidade[0]~198_combout\ : std_logic;
SIGNAL \display_unidade[0]~211_combout\ : std_logic;
SIGNAL \display_unidade[0]$latch~combout\ : std_logic;
SIGNAL \display_unidade[1]~178_combout\ : std_logic;
SIGNAL \display_unidade[1]~179_combout\ : std_logic;
SIGNAL \display_unidade[1]~175_combout\ : std_logic;
SIGNAL \display_unidade[1]~176_combout\ : std_logic;
SIGNAL \display_unidade[1]~199_combout\ : std_logic;
SIGNAL \display_unidade[1]~200_combout\ : std_logic;
SIGNAL \display_unidade[1]~185_combout\ : std_logic;
SIGNAL \display_unidade[1]~182_combout\ : std_logic;
SIGNAL \display_unidade[1]~219_combout\ : std_logic;
SIGNAL \display_unidade[1]~220_combout\ : std_logic;
SIGNAL \display_unidade[1]~212_combout\ : std_logic;
SIGNAL \display_unidade[1]$latch~combout\ : std_logic;
SIGNAL \display_unidade[2]~217_combout\ : std_logic;
SIGNAL \display_unidade[2]~218_combout\ : std_logic;
SIGNAL \display_unidade[2]~102_combout\ : std_logic;
SIGNAL \display_unidade[2]~101_combout\ : std_logic;
SIGNAL \display_unidade[2]~207_combout\ : std_logic;
SIGNAL \display_unidade[2]$latch~combout\ : std_logic;
SIGNAL \display_unidade[3]~117_combout\ : std_logic;
SIGNAL \display_unidade[3]~116_combout\ : std_logic;
SIGNAL \display_unidade[3]~113_combout\ : std_logic;
SIGNAL \display_unidade[3]~114_combout\ : std_logic;
SIGNAL \display_unidade[3]~189_combout\ : std_logic;
SIGNAL \display_unidade[3]~190_combout\ : std_logic;
SIGNAL \display_unidade[3]~124_combout\ : std_logic;
SIGNAL \display_unidade[3]~123_combout\ : std_logic;
SIGNAL \display_unidade[3]~120_combout\ : std_logic;
SIGNAL \display_unidade[3]~121_combout\ : std_logic;
SIGNAL \display_unidade[3]~191_combout\ : std_logic;
SIGNAL \display_unidade[3]~192_combout\ : std_logic;
SIGNAL \display_unidade[3]~208_combout\ : std_logic;
SIGNAL \display_unidade[3]$latch~combout\ : std_logic;
SIGNAL \display_unidade[4]~204_combout\ : std_logic;
SIGNAL \display_unidade[4]~203_combout\ : std_logic;
SIGNAL \display_unidade[4]~215_combout\ : std_logic;
SIGNAL \display_unidade[4]~216_combout\ : std_logic;
SIGNAL \display_unidade[4]$latch~combout\ : std_logic;
SIGNAL \display_unidade[5]~87_combout\ : std_logic;
SIGNAL \display_unidade[5]~91_combout\ : std_logic;
SIGNAL \display_unidade[5]~90_combout\ : std_logic;
SIGNAL \display_unidade[5]~89_combout\ : std_logic;
SIGNAL \display_unidade[5]~85_combout\ : std_logic;
SIGNAL \display_unidade[5]~84_combout\ : std_logic;
SIGNAL \display_unidade[5]~187_combout\ : std_logic;
SIGNAL \display_unidade[5]~88_combout\ : std_logic;
SIGNAL \display_unidade[5]~188_combout\ : std_logic;
SIGNAL \display_unidade[5]~206_combout\ : std_logic;
SIGNAL \display_unidade[5]$latch~combout\ : std_logic;
SIGNAL \display_unidade[6]~132_combout\ : std_logic;
SIGNAL \display_unidade[6]~133_combout\ : std_logic;
SIGNAL \display_unidade[6]~129_combout\ : std_logic;
SIGNAL \display_unidade[6]~130_combout\ : std_logic;
SIGNAL \display_unidade[6]~193_combout\ : std_logic;
SIGNAL \display_unidade[6]~194_combout\ : std_logic;
SIGNAL \display_unidade[6]~139_combout\ : std_logic;
SIGNAL \display_unidade[6]~140_combout\ : std_logic;
SIGNAL \display_unidade[6]~213_combout\ : std_logic;
SIGNAL \display_unidade[6]~214_combout\ : std_logic;
SIGNAL \display_unidade[6]~196_combout\ : std_logic;
SIGNAL \display_unidade[6]~209_combout\ : std_logic;
SIGNAL \display_unidade[6]$latch~combout\ : std_logic;
SIGNAL \display_dezena~30_combout\ : std_logic;
SIGNAL \display_dezena~31_combout\ : std_logic;
SIGNAL \display_dezena~28_combout\ : std_logic;
SIGNAL \display_unidade[1]~201_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \display_dezena~29_combout\ : std_logic;
SIGNAL \display_dezena~14_combout\ : std_logic;
SIGNAL \display_dezena~15_combout\ : std_logic;
SIGNAL \display_unidade[1]~205_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \display_dezena~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \display_dezena~17_combout\ : std_logic;
SIGNAL \display_dezena~26_combout\ : std_logic;
SIGNAL \display_unidade[1]~202_combout\ : std_logic;
SIGNAL \display_dezena~20_combout\ : std_logic;
SIGNAL \display_dezena~21_combout\ : std_logic;
SIGNAL \display_dezena~18_combout\ : std_logic;
SIGNAL \display_dezena~19_combout\ : std_logic;
SIGNAL \display_dezena~22_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \display_dezena~27_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \display_dezena~23_combout\ : std_logic;
SIGNAL \display_dezena~24_combout\ : std_logic;
SIGNAL \display_dezena~25_combout\ : std_logic;
SIGNAL saida2 : std_logic_vector(6 DOWNTO 0);
SIGNAL saida : std_logic_vector(6 DOWNTO 0);
SIGNAL cont : std_logic_vector(3 DOWNTO 0);

BEGIN

S <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_S);
display_unidade <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_display_unidade);
display_dezena <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_display_dezena);
ww_entrada <= entrada;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\display_unidade[6]~210clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \display_unidade[6]~210_combout\);

-- Location: LCCOMB_X4_Y26_N12
\Equal89~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal89~34_combout\ = (!saida2(2) & !saida2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => saida2(2),
	datad => saida2(1),
	combout => \Equal89~34_combout\);

-- Location: LCCOMB_X3_Y26_N2
\display_dezena~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~13_combout\ = (!saida2(6) & (saida2(5) & \display_unidade[1]~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datac => saida2(5),
	datad => \display_unidade[1]~202_combout\,
	combout => \display_dezena~13_combout\);

-- Location: LCCOMB_X7_Y27_N16
\S[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[1]~2_combout\ = (cont(3) & (((cont(1))))) # (!cont(3) & ((cont(0) & (!cont(2) & !cont(1))) # (!cont(0) & (cont(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => cont(0),
	datac => cont(2),
	datad => cont(1),
	combout => \S[1]~2_combout\);

-- Location: LCCOMB_X9_Y27_N24
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!cont(2) & !cont(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont(2),
	datad => cont(1),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X4_Y27_N6
\display_unidade[2]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]~103_combout\ = (saida2(5) & (!saida2(6) & ((saida2(4)) # (!saida2(3))))) # (!saida2(5) & ((saida2(3)) # (saida2(4) $ (saida2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(4),
	datac => saida2(6),
	datad => saida2(3),
	combout => \display_unidade[2]~103_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y27_N8
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = cont(1) $ (cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont(1),
	datad => cont(0),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X8_Y27_N9
\cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux5~0_combout\,
	sclr => cont(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont(1));

-- Location: LCCOMB_X7_Y27_N10
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = cont(3) $ (((cont(2) & (cont(0) & cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(0),
	datac => cont(3),
	datad => cont(1),
	combout => \Add0~1_combout\);

-- Location: LCFF_X7_Y27_N11
\cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~1_combout\,
	sclr => cont(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont(3));

-- Location: LCCOMB_X8_Y27_N28
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (cont(3)) # (!cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont(0),
	datad => cont(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X8_Y27_N14
\cont[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont[0]~feeder_combout\ = \Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~0_combout\,
	combout => \cont[0]~feeder_combout\);

-- Location: LCFF_X8_Y27_N15
\cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont(0));

-- Location: LCCOMB_X7_Y27_N20
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cont(2) $ (((cont(0) & cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont(0),
	datac => cont(2),
	datad => cont(1),
	combout => \Add0~0_combout\);

-- Location: LCFF_X7_Y27_N21
\cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	sclr => cont(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont(2));

-- Location: LCCOMB_X8_Y27_N6
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!cont(3) & (!cont(0) & (cont(1) & cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => cont(0),
	datac => cont(1),
	datad => cont(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X8_Y27_N4
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (cont(3)) # ((!cont(0) & (cont(1) $ (!cont(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => cont(0),
	datac => cont(1),
	datad => cont(2),
	combout => \Mux6~1_combout\);

-- Location: LCFF_X8_Y27_N7
\S[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	ena => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[0]~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entrada,
	combout => \entrada~combout\);

-- Location: LCCOMB_X7_Y27_N30
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (cont(2) & !cont(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont(2),
	datad => cont(3),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X7_Y27_N2
\S[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[1]~15_combout\ = (\Mux6~2_combout\ & ((cont(1) & (\entrada~combout\ & !cont(0))) # (!cont(1) & ((cont(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => \entrada~combout\,
	datac => \Mux6~2_combout\,
	datad => cont(0),
	combout => \S[1]~15_combout\);

-- Location: LCCOMB_X7_Y27_N8
\S[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[1]~3_combout\ = (\S[1]~2_combout\ & (\S[1]~reg0_regout\ & ((\S[1]~15_combout\) # (!cont(1))))) # (!\S[1]~2_combout\ & ((cont(1) & (\S[1]~reg0_regout\)) # (!cont(1) & ((\S[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~2_combout\,
	datab => cont(1),
	datac => \S[1]~reg0_regout\,
	datad => \S[1]~15_combout\,
	combout => \S[1]~3_combout\);

-- Location: LCFF_X7_Y27_N9
\S[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \S[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[1]~reg0_regout\);

-- Location: LCCOMB_X8_Y27_N2
\S[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[2]~5_combout\ = (cont(2) & (!cont(1) & !cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datac => cont(1),
	datad => cont(3),
	combout => \S[2]~5_combout\);

-- Location: LCCOMB_X8_Y27_N30
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!cont(3) & ((cont(1)) # ((!cont(2) & cont(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(0),
	datac => cont(1),
	datad => cont(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X8_Y27_N12
\S[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[2]~4_combout\ = (\entrada~combout\ & ((\S[2]~reg0_regout\) # ((!cont(0) & !\Mux4~0_combout\)))) # (!\entrada~combout\ & (!cont(0) & ((!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\,
	datab => cont(0),
	datac => \S[2]~reg0_regout\,
	datad => \Mux4~0_combout\,
	combout => \S[2]~4_combout\);

-- Location: LCCOMB_X8_Y27_N20
\S[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[2]~6_combout\ = (\Mux4~0_combout\ & ((\S[2]~reg0_regout\) # ((\S[2]~5_combout\ & \S[2]~4_combout\)))) # (!\Mux4~0_combout\ & (\S[2]~5_combout\ & ((\S[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \S[2]~5_combout\,
	datac => \S[2]~reg0_regout\,
	datad => \S[2]~4_combout\,
	combout => \S[2]~6_combout\);

-- Location: LCFF_X8_Y27_N21
\S[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \S[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[2]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N4
\S[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[3]~8_combout\ = (cont(0) & ((\S[3]~reg0_regout\) # (!cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[3]~reg0_regout\,
	datac => cont(0),
	datad => cont(2),
	combout => \S[3]~8_combout\);

-- Location: LCCOMB_X7_Y27_N22
\S[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[3]~9_combout\ = (!cont(3) & ((cont(1) & ((\S[3]~8_combout\) # (\S[3]~reg0_regout\))) # (!cont(1) & (\S[3]~8_combout\ & \S[3]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => cont(3),
	datac => \S[3]~8_combout\,
	datad => \S[3]~reg0_regout\,
	combout => \S[3]~9_combout\);

-- Location: LCCOMB_X7_Y27_N18
\S[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[3]~10_combout\ = (\S[3]~9_combout\) # ((\S[3]~7_combout\ & (\Mux6~2_combout\ & \S[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[3]~7_combout\,
	datab => \Mux6~2_combout\,
	datac => \S[3]~reg0_regout\,
	datad => \S[3]~9_combout\,
	combout => \S[3]~10_combout\);

-- Location: LCFF_X7_Y27_N19
\S[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \S[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[3]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N0
\S[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[4]~11_combout\ = (cont(0) & (\S[4]~reg0_regout\ & ((\entrada~combout\) # (!cont(1))))) # (!cont(0) & (((cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[4]~reg0_regout\,
	datab => cont(0),
	datac => \entrada~combout\,
	datad => cont(1),
	combout => \S[4]~11_combout\);

-- Location: LCCOMB_X7_Y27_N24
\S[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[4]~12_combout\ = (!cont(3) & ((cont(2) & (\S[4]~reg0_regout\)) # (!cont(2) & ((\S[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(3),
	datac => \S[4]~reg0_regout\,
	datad => \S[4]~11_combout\,
	combout => \S[4]~12_combout\);

-- Location: LCFF_X7_Y27_N25
\S[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \S[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[4]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N26
\S[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[5]~13_combout\ = (cont(2)) # ((cont(1) & ((cont(0)) # (\entrada~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(0),
	datac => \entrada~combout\,
	datad => cont(1),
	combout => \S[5]~13_combout\);

-- Location: LCCOMB_X7_Y27_N14
\S[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[5]~14_combout\ = (!cont(3) & ((\S[5]~13_combout\ & ((\S[5]~reg0_regout\))) # (!\S[5]~13_combout\ & (cont(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => cont(0),
	datac => \S[5]~reg0_regout\,
	datad => \S[5]~13_combout\,
	combout => \S[5]~14_combout\);

-- Location: LCFF_X7_Y27_N15
\S[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \S[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[5]~reg0_regout\);

-- Location: LCCOMB_X9_Y27_N2
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ((\entrada~combout\ & \S[6]~reg0_regout\)) # (!cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(0),
	datab => \entrada~combout\,
	datad => \S[6]~reg0_regout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X9_Y27_N28
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (cont(3)) # ((!cont(1) & (\Mux0~2_combout\ & !cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => \Mux0~2_combout\,
	datac => cont(2),
	datad => cont(3),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X9_Y27_N14
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (cont(3)) # ((!cont(1) & !cont(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datac => cont(2),
	datad => cont(3),
	combout => \Mux0~4_combout\);

-- Location: LCFF_X9_Y27_N29
\S[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux0~5_combout\,
	ena => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[6]~reg0_regout\);

-- Location: LCCOMB_X9_Y27_N12
\saida[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[5]~0_combout\ = (cont(0) & (((!cont(1))))) # (!cont(0) & ((cont(2) & ((!cont(1)))) # (!cont(2) & (\entrada~combout\ & cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(0),
	datab => \entrada~combout\,
	datac => cont(2),
	datad => cont(1),
	combout => \saida[5]~0_combout\);

-- Location: LCCOMB_X9_Y27_N8
\saida[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[5]~1_combout\ = (!cont(3) & ((cont(1) & ((saida(5)) # (\saida[5]~0_combout\))) # (!cont(1) & (saida(5) & \saida[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => cont(3),
	datac => saida(5),
	datad => \saida[5]~0_combout\,
	combout => \saida[5]~1_combout\);

-- Location: LCFF_X9_Y27_N9
\saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida(5));

-- Location: LCCOMB_X7_Y27_N28
\saida2[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida2[3]~0_combout\ = (\entrada~combout\ & (cont(1) & (cont(0) & \Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\,
	datab => cont(1),
	datac => cont(0),
	datad => \Mux6~2_combout\,
	combout => \saida2[3]~0_combout\);

-- Location: LCFF_X3_Y27_N15
\saida2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => saida(5),
	sload => VCC,
	ena => \saida2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(5));

-- Location: LCCOMB_X8_Y27_N18
\saida[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[4]~2_combout\ = (cont(2) & (((saida(4))))) # (!cont(2) & (cont(0) & ((\entrada~combout\) # (saida(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\,
	datab => saida(4),
	datac => cont(2),
	datad => cont(0),
	combout => \saida[4]~2_combout\);

-- Location: LCCOMB_X8_Y27_N22
\saida[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[4]~3_combout\ = (!cont(3) & ((cont(1) & ((saida(4)) # (\saida[4]~2_combout\))) # (!cont(1) & (saida(4) & \saida[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => cont(1),
	datac => saida(4),
	datad => \saida[4]~2_combout\,
	combout => \saida[4]~3_combout\);

-- Location: LCFF_X8_Y27_N23
\saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida(4));

-- Location: LCFF_X5_Y27_N1
\saida2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => saida(4),
	sload => VCC,
	ena => \saida2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(4));

-- Location: LCCOMB_X8_Y27_N26
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux6~0_combout\ & ((\entrada~combout\) # (saida(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\,
	datac => saida(1),
	datad => \Mux6~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCFF_X8_Y27_N27
\saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux12~0_combout\,
	ena => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida(1));

-- Location: LCFF_X5_Y27_N11
\saida2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => saida(1),
	sload => VCC,
	ena => \saida2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(1));

-- Location: LCCOMB_X8_Y27_N24
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!cont(3) & ((cont(1)) # (cont(2) $ (cont(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(0),
	datac => cont(1),
	datad => cont(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X8_Y27_N10
\saida[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[2]~6_combout\ = (cont(0) & ((saida(2)) # ((\entrada~combout\ & !\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\,
	datab => cont(0),
	datac => \Mux11~0_combout\,
	datad => saida(2),
	combout => \saida[2]~6_combout\);

-- Location: LCCOMB_X8_Y27_N0
\saida[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[2]~7_combout\ = (\Mux11~0_combout\ & ((saida(2)) # ((\S[2]~5_combout\ & \saida[2]~6_combout\)))) # (!\Mux11~0_combout\ & (\S[2]~5_combout\ & ((\saida[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \S[2]~5_combout\,
	datac => saida(2),
	datad => \saida[2]~6_combout\,
	combout => \saida[2]~7_combout\);

-- Location: LCFF_X8_Y27_N1
\saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saida[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida(2));

-- Location: LCFF_X5_Y27_N29
\saida2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => saida(2),
	sload => VCC,
	ena => \saida2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(2));

-- Location: LCCOMB_X8_Y27_N16
\S[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \S[3]~7_combout\ = (\entrada~combout\ & (!cont(1) & !cont(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\,
	datac => cont(1),
	datad => cont(0),
	combout => \S[3]~7_combout\);

-- Location: LCCOMB_X7_Y27_N12
\saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[3]~4_combout\ = (saida(3) & ((cont(0)) # ((cont(2)) # (cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida(3),
	datab => cont(0),
	datac => cont(2),
	datad => cont(1),
	combout => \saida[3]~4_combout\);

-- Location: LCCOMB_X7_Y27_N6
\saida[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida[3]~5_combout\ = (!cont(3) & ((\saida[3]~4_combout\) # ((cont(2) & \S[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(3),
	datac => \S[3]~7_combout\,
	datad => \saida[3]~4_combout\,
	combout => \saida[3]~5_combout\);

-- Location: LCFF_X7_Y27_N7
\saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saida[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida(3));

-- Location: LCFF_X3_Y27_N29
\saida2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => saida(3),
	sload => VCC,
	ena => \saida2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(3));

-- Location: LCCOMB_X4_Y26_N18
\display_unidade[6]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~144_combout\ = (saida2(1)) # ((saida2(2)) # (!saida2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(1),
	datac => saida2(2),
	datad => saida2(3),
	combout => \display_unidade[6]~144_combout\);

-- Location: LCCOMB_X4_Y26_N4
\display_unidade[6]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~210_combout\ = ((saida2(5)) # ((\display_unidade[6]~144_combout\) # (!saida2(4)))) # (!saida2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(5),
	datac => saida2(4),
	datad => \display_unidade[6]~144_combout\,
	combout => \display_unidade[6]~210_combout\);

-- Location: CLKCTRL_G2
\display_unidade[6]~210clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \display_unidade[6]~210clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \display_unidade[6]~210clkctrl_outclk\);

-- Location: LCCOMB_X9_Y27_N6
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux0~3_combout\ & (!\Mux7~0_combout\ & ((\entrada~combout\) # (saida(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \entrada~combout\,
	datac => saida(6),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCFF_X9_Y27_N7
\saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux7~1_combout\,
	ena => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida(6));

-- Location: LCFF_X4_Y27_N31
\saida2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => saida(6),
	sload => VCC,
	ena => \saida2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(6));

-- Location: LCCOMB_X6_Y27_N16
\saida2[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida2[0]~1_combout\ = (saida2(0)) # (\saida2[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => saida2(0),
	datad => \saida2[3]~0_combout\,
	combout => \saida2[0]~1_combout\);

-- Location: LCFF_X6_Y27_N17
\saida2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saida2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saida2(0));

-- Location: LCCOMB_X6_Y27_N14
\display_unidade[0]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~164_combout\ = ((saida2(4) & (!saida2(0) & !saida2(2))) # (!saida2(4) & ((saida2(2))))) # (!saida2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(0),
	datac => saida2(4),
	datad => saida2(2),
	combout => \display_unidade[0]~164_combout\);

-- Location: LCCOMB_X6_Y27_N22
\display_unidade[0]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~160_combout\ = (saida2(2) & (((saida2(4)) # (saida2(1))) # (!saida2(0)))) # (!saida2(2) & (((!saida2(1)) # (!saida2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(0),
	datab => saida2(2),
	datac => saida2(4),
	datad => saida2(1),
	combout => \display_unidade[0]~160_combout\);

-- Location: LCCOMB_X6_Y27_N12
\display_unidade[0]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~163_combout\ = (saida2(6) & ((\display_unidade[0]~160_combout\))) # (!saida2(6) & (\display_unidade[0]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(6),
	datac => \display_unidade[0]~164_combout\,
	datad => \display_unidade[0]~160_combout\,
	combout => \display_unidade[0]~163_combout\);

-- Location: LCCOMB_X6_Y27_N8
\display_unidade[0]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~162_combout\ = (saida2(5) & ((\display_unidade[0]~157_combout\) # ((saida2(6))))) # (!saida2(5) & (((\display_unidade[0]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[0]~157_combout\,
	datab => saida2(5),
	datac => saida2(6),
	datad => \display_unidade[0]~163_combout\,
	combout => \display_unidade[0]~162_combout\);

-- Location: LCCOMB_X6_Y27_N20
\display_unidade[0]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~161_combout\ = (saida2(4)) # ((saida2(1)) # ((saida2(2)) # (!saida2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(1),
	datac => saida2(0),
	datad => saida2(2),
	combout => \display_unidade[0]~161_combout\);

-- Location: LCCOMB_X6_Y27_N24
\display_unidade[0]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~158_combout\ = (saida2(1) & ((saida2(2) & (saida2(4) & !saida2(0))) # (!saida2(2) & ((saida2(4)) # (!saida2(0)))))) # (!saida2(1) & ((saida2(2)) # ((!saida2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(2),
	datac => saida2(4),
	datad => saida2(0),
	combout => \display_unidade[0]~158_combout\);

-- Location: LCCOMB_X6_Y27_N10
\display_unidade[0]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~157_combout\ = (saida2(0) & (saida2(1) $ (((saida2(2) & !saida2(4)))))) # (!saida2(0) & ((saida2(1)) # (saida2(2) $ (saida2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(2),
	datac => saida2(4),
	datad => saida2(0),
	combout => \display_unidade[0]~157_combout\);

-- Location: LCCOMB_X6_Y27_N26
\display_unidade[0]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~197_combout\ = (saida2(5) & (saida2(6))) # (!saida2(5) & ((saida2(6) & (\display_unidade[0]~158_combout\)) # (!saida2(6) & ((\display_unidade[0]~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(6),
	datac => \display_unidade[0]~158_combout\,
	datad => \display_unidade[0]~157_combout\,
	combout => \display_unidade[0]~197_combout\);

-- Location: LCCOMB_X6_Y27_N0
\display_unidade[0]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~198_combout\ = (saida2(5) & ((\display_unidade[0]~197_combout\ & ((\display_unidade[0]~161_combout\))) # (!\display_unidade[0]~197_combout\ & (\display_unidade[0]~160_combout\)))) # (!saida2(5) & (((\display_unidade[0]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => \display_unidade[0]~160_combout\,
	datac => \display_unidade[0]~161_combout\,
	datad => \display_unidade[0]~197_combout\,
	combout => \display_unidade[0]~198_combout\);

-- Location: LCCOMB_X6_Y27_N30
\display_unidade[0]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]~211_combout\ = (saida2(3) & (\display_unidade[0]~162_combout\)) # (!saida2(3) & ((\display_unidade[0]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(3),
	datac => \display_unidade[0]~162_combout\,
	datad => \display_unidade[0]~198_combout\,
	combout => \display_unidade[0]~211_combout\);

-- Location: LCCOMB_X6_Y27_N6
\display_unidade[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[0]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[0]~211_combout\))) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[0]$latch~combout\,
	datac => \display_unidade[6]~210clkctrl_outclk\,
	datad => \display_unidade[0]~211_combout\,
	combout => \display_unidade[0]$latch~combout\);

-- Location: LCCOMB_X3_Y27_N30
\display_unidade[1]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~178_combout\ = ((saida2(5) & ((saida2(6)) # (!saida2(3)))) # (!saida2(5) & (saida2(3)))) # (!saida2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(0),
	datac => saida2(3),
	datad => saida2(6),
	combout => \display_unidade[1]~178_combout\);

-- Location: LCCOMB_X3_Y27_N14
\display_unidade[1]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~179_combout\ = (saida2(3) & ((saida2(5) & ((saida2(6)) # (!saida2(0)))) # (!saida2(5) & ((!saida2(6)))))) # (!saida2(3) & ((saida2(6)) # ((!saida2(0) & !saida2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(3),
	datab => saida2(0),
	datac => saida2(5),
	datad => saida2(6),
	combout => \display_unidade[1]~179_combout\);

-- Location: LCCOMB_X3_Y27_N20
\display_unidade[1]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~175_combout\ = (saida2(5) & ((saida2(0) & (saida2(3) & saida2(6))) # (!saida2(0) & ((saida2(3)) # (saida2(6)))))) # (!saida2(5) & ((saida2(3) & ((!saida2(6)))) # (!saida2(3) & ((saida2(6)) # (!saida2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(0),
	datac => saida2(3),
	datad => saida2(6),
	combout => \display_unidade[1]~175_combout\);

-- Location: LCCOMB_X3_Y27_N26
\display_unidade[1]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~176_combout\ = (saida2(5) & (((saida2(3)) # (saida2(6))) # (!saida2(0)))) # (!saida2(5) & (((!saida2(0) & saida2(6))) # (!saida2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(0),
	datac => saida2(3),
	datad => saida2(6),
	combout => \display_unidade[1]~176_combout\);

-- Location: LCCOMB_X3_Y27_N0
\display_unidade[1]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~199_combout\ = (saida2(2) & ((saida2(4)) # ((\display_unidade[1]~176_combout\)))) # (!saida2(2) & (!saida2(4) & (\display_unidade[1]~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(2),
	datab => saida2(4),
	datac => \display_unidade[1]~175_combout\,
	datad => \display_unidade[1]~176_combout\,
	combout => \display_unidade[1]~199_combout\);

-- Location: LCCOMB_X3_Y27_N4
\display_unidade[1]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~200_combout\ = (saida2(4) & ((\display_unidade[1]~199_combout\ & ((\display_unidade[1]~179_combout\))) # (!\display_unidade[1]~199_combout\ & (\display_unidade[1]~178_combout\)))) # (!saida2(4) & (((\display_unidade[1]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => \display_unidade[1]~178_combout\,
	datac => \display_unidade[1]~179_combout\,
	datad => \display_unidade[1]~199_combout\,
	combout => \display_unidade[1]~200_combout\);

-- Location: LCCOMB_X3_Y27_N28
\display_unidade[1]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~185_combout\ = (saida2(5) & (((saida2(3)) # (saida2(6))) # (!saida2(0)))) # (!saida2(5) & ((saida2(3) & (!saida2(0))) # (!saida2(3) & ((!saida2(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(0),
	datac => saida2(3),
	datad => saida2(6),
	combout => \display_unidade[1]~185_combout\);

-- Location: LCCOMB_X3_Y27_N24
\display_unidade[1]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~182_combout\ = (saida2(0) & ((saida2(3) & ((saida2(6)))) # (!saida2(3) & (saida2(5))))) # (!saida2(0) & ((saida2(6)) # (saida2(5) $ (saida2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(0),
	datac => saida2(3),
	datad => saida2(6),
	combout => \display_unidade[1]~182_combout\);

-- Location: LCCOMB_X3_Y27_N18
\display_unidade[1]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~219_combout\ = (saida2(2) & ((saida2(4) & (\display_unidade[1]~182_combout\)) # (!saida2(4) & ((\display_unidade[1]~178_combout\))))) # (!saida2(2) & (saida2(4) $ ((\display_unidade[1]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(2),
	datab => saida2(4),
	datac => \display_unidade[1]~182_combout\,
	datad => \display_unidade[1]~178_combout\,
	combout => \display_unidade[1]~219_combout\);

-- Location: LCCOMB_X3_Y27_N12
\display_unidade[1]~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~220_combout\ = (saida2(2) & (((\display_unidade[1]~219_combout\)))) # (!saida2(2) & ((\display_unidade[1]~185_combout\ & ((\display_unidade[1]~182_combout\) # (\display_unidade[1]~219_combout\))) # (!\display_unidade[1]~185_combout\ & 
-- (\display_unidade[1]~182_combout\ & \display_unidade[1]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(2),
	datab => \display_unidade[1]~185_combout\,
	datac => \display_unidade[1]~182_combout\,
	datad => \display_unidade[1]~219_combout\,
	combout => \display_unidade[1]~220_combout\);

-- Location: LCCOMB_X3_Y27_N8
\display_unidade[1]~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~212_combout\ = (saida2(1) & ((\display_unidade[1]~220_combout\))) # (!saida2(1) & (\display_unidade[1]~200_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datac => \display_unidade[1]~200_combout\,
	datad => \display_unidade[1]~220_combout\,
	combout => \display_unidade[1]~212_combout\);

-- Location: LCCOMB_X3_Y27_N2
\display_unidade[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[1]~212_combout\))) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unidade[1]$latch~combout\,
	datac => \display_unidade[6]~210clkctrl_outclk\,
	datad => \display_unidade[1]~212_combout\,
	combout => \display_unidade[1]$latch~combout\);

-- Location: LCCOMB_X4_Y27_N26
\display_unidade[2]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]~217_combout\ = (saida2(4) & ((saida2(6) & (saida2(3) & !saida2(2))) # (!saida2(6) & ((saida2(3)) # (!saida2(2)))))) # (!saida2(4) & (saida2(6) $ (saida2(3) $ (saida2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(3),
	datac => saida2(4),
	datad => saida2(2),
	combout => \display_unidade[2]~217_combout\);

-- Location: LCCOMB_X4_Y27_N16
\display_unidade[2]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]~218_combout\ = (saida2(5) & ((saida2(3) & (!saida2(6))) # (!saida2(3) & ((\display_unidade[2]~217_combout\))))) # (!saida2(5) & (((\display_unidade[2]~217_combout\) # (!saida2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(6),
	datac => saida2(3),
	datad => \display_unidade[2]~217_combout\,
	combout => \display_unidade[2]~218_combout\);

-- Location: LCCOMB_X4_Y27_N30
\display_unidade[2]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]~102_combout\ = (saida2(3) & ((saida2(5) & (!saida2(6))) # (!saida2(5) & ((!saida2(4)))))) # (!saida2(3) & ((saida2(5) $ (saida2(4))) # (!saida2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(3),
	datac => saida2(6),
	datad => saida2(4),
	combout => \display_unidade[2]~102_combout\);

-- Location: LCCOMB_X4_Y27_N28
\display_unidade[2]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]~101_combout\ = (saida2(2) & (\display_unidade[2]~103_combout\)) # (!saida2(2) & ((\display_unidade[2]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[2]~103_combout\,
	datab => saida2(2),
	datad => \display_unidade[2]~102_combout\,
	combout => \display_unidade[2]~101_combout\);

-- Location: LCCOMB_X4_Y27_N22
\display_unidade[2]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]~207_combout\ = (!saida2(0) & ((saida2(1) & (\display_unidade[2]~218_combout\)) # (!saida2(1) & ((\display_unidade[2]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(0),
	datab => saida2(1),
	datac => \display_unidade[2]~218_combout\,
	datad => \display_unidade[2]~101_combout\,
	combout => \display_unidade[2]~207_combout\);

-- Location: LCCOMB_X4_Y27_N24
\display_unidade[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[2]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[2]~207_combout\))) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unidade[6]~210clkctrl_outclk\,
	datac => \display_unidade[2]$latch~combout\,
	datad => \display_unidade[2]~207_combout\,
	combout => \display_unidade[2]$latch~combout\);

-- Location: LCCOMB_X2_Y27_N14
\display_unidade[3]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~117_combout\ = (saida2(5) & (((!saida2(6))))) # (!saida2(5) & ((saida2(2) & ((!saida2(6)) # (!saida2(1)))) # (!saida2(2) & (saida2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(2),
	datab => saida2(5),
	datac => saida2(1),
	datad => saida2(6),
	combout => \display_unidade[3]~117_combout\);

-- Location: LCCOMB_X2_Y27_N16
\display_unidade[3]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~116_combout\ = (saida2(6) & (!saida2(5) & ((saida2(2)) # (!saida2(1))))) # (!saida2(6) & ((saida2(5) $ (!saida2(1))) # (!saida2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(5),
	datac => saida2(1),
	datad => saida2(2),
	combout => \display_unidade[3]~116_combout\);

-- Location: LCCOMB_X2_Y27_N4
\display_unidade[3]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~113_combout\ = (saida2(5) & ((saida2(2) & ((!saida2(6)))) # (!saida2(2) & ((saida2(6)) # (!saida2(1)))))) # (!saida2(5) & ((saida2(1)) # (saida2(2) $ (!saida2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(2),
	datab => saida2(5),
	datac => saida2(1),
	datad => saida2(6),
	combout => \display_unidade[3]~113_combout\);

-- Location: LCCOMB_X2_Y27_N6
\display_unidade[3]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~114_combout\ = (saida2(2) & ((saida2(1) & (!saida2(5))) # (!saida2(1) & ((!saida2(6)))))) # (!saida2(2) & (((!saida2(6)) # (!saida2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(5),
	datac => saida2(2),
	datad => saida2(6),
	combout => \display_unidade[3]~114_combout\);

-- Location: LCCOMB_X2_Y27_N22
\display_unidade[3]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~189_combout\ = (saida2(4) & ((saida2(3)) # ((\display_unidade[3]~114_combout\)))) # (!saida2(4) & (!saida2(3) & (\display_unidade[3]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(3),
	datac => \display_unidade[3]~113_combout\,
	datad => \display_unidade[3]~114_combout\,
	combout => \display_unidade[3]~189_combout\);

-- Location: LCCOMB_X2_Y27_N24
\display_unidade[3]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~190_combout\ = (saida2(3) & ((\display_unidade[3]~189_combout\ & (\display_unidade[3]~117_combout\)) # (!\display_unidade[3]~189_combout\ & ((\display_unidade[3]~116_combout\))))) # (!saida2(3) & (((\display_unidade[3]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(3),
	datab => \display_unidade[3]~117_combout\,
	datac => \display_unidade[3]~116_combout\,
	datad => \display_unidade[3]~189_combout\,
	combout => \display_unidade[3]~190_combout\);

-- Location: LCCOMB_X2_Y27_N30
\display_unidade[3]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~124_combout\ = (saida2(1) & (saida2(2) & (saida2(6) $ (saida2(5))))) # (!saida2(1) & (!saida2(5) & (saida2(6) $ (!saida2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(5),
	datac => saida2(1),
	datad => saida2(2),
	combout => \display_unidade[3]~124_combout\);

-- Location: LCCOMB_X2_Y27_N20
\display_unidade[3]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~123_combout\ = (saida2(6) & (!saida2(5) & ((!saida2(2))))) # (!saida2(6) & (saida2(2) $ (((saida2(5) & saida2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(5),
	datac => saida2(1),
	datad => saida2(2),
	combout => \display_unidade[3]~123_combout\);

-- Location: LCCOMB_X2_Y27_N8
\display_unidade[3]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~120_combout\ = (saida2(2) & (!saida2(1) & (!saida2(5) & !saida2(6)))) # (!saida2(2) & (saida2(6) $ (((saida2(1)) # (saida2(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(5),
	datac => saida2(2),
	datad => saida2(6),
	combout => \display_unidade[3]~120_combout\);

-- Location: LCCOMB_X2_Y27_N10
\display_unidade[3]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~121_combout\ = (saida2(6) & (!saida2(5) & (saida2(1) $ (saida2(2))))) # (!saida2(6) & (saida2(2) & ((saida2(1)) # (saida2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(5),
	datac => saida2(6),
	datad => saida2(2),
	combout => \display_unidade[3]~121_combout\);

-- Location: LCCOMB_X2_Y27_N26
\display_unidade[3]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~191_combout\ = (saida2(4) & ((saida2(3)) # ((\display_unidade[3]~121_combout\)))) # (!saida2(4) & (!saida2(3) & (\display_unidade[3]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(3),
	datac => \display_unidade[3]~120_combout\,
	datad => \display_unidade[3]~121_combout\,
	combout => \display_unidade[3]~191_combout\);

-- Location: LCCOMB_X2_Y27_N28
\display_unidade[3]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~192_combout\ = (saida2(3) & ((\display_unidade[3]~191_combout\ & (\display_unidade[3]~124_combout\)) # (!\display_unidade[3]~191_combout\ & ((\display_unidade[3]~123_combout\))))) # (!saida2(3) & (((\display_unidade[3]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(3),
	datab => \display_unidade[3]~124_combout\,
	datac => \display_unidade[3]~123_combout\,
	datad => \display_unidade[3]~191_combout\,
	combout => \display_unidade[3]~192_combout\);

-- Location: LCCOMB_X2_Y27_N12
\display_unidade[3]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]~208_combout\ = (saida2(0) & ((\display_unidade[3]~192_combout\))) # (!saida2(0) & (\display_unidade[3]~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(0),
	datac => \display_unidade[3]~190_combout\,
	datad => \display_unidade[3]~192_combout\,
	combout => \display_unidade[3]~208_combout\);

-- Location: LCCOMB_X2_Y27_N18
\display_unidade[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[3]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[3]~208_combout\))) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unidade[3]$latch~combout\,
	datac => \display_unidade[6]~210clkctrl_outclk\,
	datad => \display_unidade[3]~208_combout\,
	combout => \display_unidade[3]$latch~combout\);

-- Location: LCCOMB_X4_Y27_N14
\display_unidade[4]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[4]~204_combout\ = (!saida2(5) & ((saida2(6) & (!saida2(3) & saida2(1))) # (!saida2(6) & (saida2(3) & !saida2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(3),
	datac => saida2(1),
	datad => saida2(5),
	combout => \display_unidade[4]~204_combout\);

-- Location: LCCOMB_X3_Y27_N10
\display_unidade[4]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[4]~203_combout\ = (saida2(5) & (!saida2(6) & (saida2(3) $ (!saida2(1))))) # (!saida2(5) & ((saida2(3) & (saida2(6) & !saida2(1))) # (!saida2(3) & ((saida2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(3),
	datac => saida2(6),
	datad => saida2(1),
	combout => \display_unidade[4]~203_combout\);

-- Location: LCCOMB_X3_Y27_N22
\display_unidade[4]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[4]~215_combout\ = (saida2(0)) # (\display_unidade[4]~203_combout\ $ (((saida2(4)) # (!\display_unidade[4]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(0),
	datac => \display_unidade[4]~204_combout\,
	datad => \display_unidade[4]~203_combout\,
	combout => \display_unidade[4]~215_combout\);

-- Location: LCCOMB_X3_Y27_N16
\display_unidade[4]~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[4]~216_combout\ = (\display_unidade[4]~215_combout\) # (saida2(4) $ (\display_unidade[4]~204_combout\ $ (saida2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => \display_unidade[4]~204_combout\,
	datac => saida2(2),
	datad => \display_unidade[4]~215_combout\,
	combout => \display_unidade[4]~216_combout\);

-- Location: LCCOMB_X3_Y27_N6
\display_unidade[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[4]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[4]~216_combout\)) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[4]~216_combout\,
	datac => \display_unidade[6]~210clkctrl_outclk\,
	datad => \display_unidade[4]$latch~combout\,
	combout => \display_unidade[4]$latch~combout\);

-- Location: LCCOMB_X5_Y27_N24
\display_unidade[5]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~87_combout\ = (saida2(1) & ((saida2(4) $ (saida2(2))) # (!saida2(0)))) # (!saida2(1) & ((saida2(4)) # ((saida2(0)) # (!saida2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(4),
	datac => saida2(0),
	datad => saida2(2),
	combout => \display_unidade[5]~87_combout\);

-- Location: LCCOMB_X5_Y27_N14
\display_unidade[5]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~91_combout\ = (saida2(2) & (((saida2(4)) # (!saida2(0))) # (!saida2(1)))) # (!saida2(2) & ((saida2(1) $ (!saida2(0))) # (!saida2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(2),
	datac => saida2(0),
	datad => saida2(4),
	combout => \display_unidade[5]~91_combout\);

-- Location: LCCOMB_X5_Y27_N22
\display_unidade[5]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~90_combout\ = (saida2(6) & (\display_unidade[5]~87_combout\)) # (!saida2(6) & ((\display_unidade[5]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datac => \display_unidade[5]~87_combout\,
	datad => \display_unidade[5]~91_combout\,
	combout => \display_unidade[5]~90_combout\);

-- Location: LCCOMB_X5_Y27_N16
\display_unidade[5]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~89_combout\ = (saida2(5) & ((\display_unidade[5]~84_combout\) # ((saida2(6))))) # (!saida2(5) & (((\display_unidade[5]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[5]~84_combout\,
	datab => saida2(6),
	datac => saida2(5),
	datad => \display_unidade[5]~90_combout\,
	combout => \display_unidade[5]~89_combout\);

-- Location: LCCOMB_X5_Y27_N4
\display_unidade[5]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~85_combout\ = (saida2(1) & ((saida2(0)) # (saida2(4) $ (saida2(2))))) # (!saida2(1) & ((saida2(4) $ (saida2(2))) # (!saida2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(4),
	datac => saida2(0),
	datad => saida2(2),
	combout => \display_unidade[5]~85_combout\);

-- Location: LCCOMB_X5_Y27_N6
\display_unidade[5]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~84_combout\ = (saida2(4) & ((saida2(1)) # ((saida2(0)) # (saida2(2))))) # (!saida2(4) & ((saida2(1) $ (!saida2(0))) # (!saida2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(4),
	datac => saida2(0),
	datad => saida2(2),
	combout => \display_unidade[5]~84_combout\);

-- Location: LCCOMB_X5_Y27_N20
\display_unidade[5]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~187_combout\ = (saida2(5) & (saida2(6))) # (!saida2(5) & ((saida2(6) & (\display_unidade[5]~85_combout\)) # (!saida2(6) & ((\display_unidade[5]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(6),
	datac => \display_unidade[5]~85_combout\,
	datad => \display_unidade[5]~84_combout\,
	combout => \display_unidade[5]~187_combout\);

-- Location: LCCOMB_X5_Y27_N28
\display_unidade[5]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~88_combout\ = (saida2(0)) # ((saida2(4)) # ((saida2(2)) # (saida2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(0),
	datab => saida2(4),
	datac => saida2(2),
	datad => saida2(1),
	combout => \display_unidade[5]~88_combout\);

-- Location: LCCOMB_X5_Y27_N12
\display_unidade[5]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~188_combout\ = (saida2(5) & ((\display_unidade[5]~187_combout\ & ((\display_unidade[5]~88_combout\))) # (!\display_unidade[5]~187_combout\ & (\display_unidade[5]~87_combout\)))) # (!saida2(5) & (((\display_unidade[5]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[5]~87_combout\,
	datab => saida2(5),
	datac => \display_unidade[5]~187_combout\,
	datad => \display_unidade[5]~88_combout\,
	combout => \display_unidade[5]~188_combout\);

-- Location: LCCOMB_X5_Y27_N18
\display_unidade[5]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]~206_combout\ = (saida2(3) & (\display_unidade[5]~89_combout\)) # (!saida2(3) & ((\display_unidade[5]~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(3),
	datac => \display_unidade[5]~89_combout\,
	datad => \display_unidade[5]~188_combout\,
	combout => \display_unidade[5]~206_combout\);

-- Location: LCCOMB_X5_Y27_N10
\display_unidade[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[5]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[5]~206_combout\))) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[5]$latch~combout\,
	datab => \display_unidade[6]~210clkctrl_outclk\,
	datad => \display_unidade[5]~206_combout\,
	combout => \display_unidade[5]$latch~combout\);

-- Location: LCCOMB_X4_Y27_N2
\display_unidade[6]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~132_combout\ = (saida2(6) & ((saida2(4) $ (saida2(2))))) # (!saida2(6) & ((saida2(4) & ((saida2(2)) # (!saida2(3)))) # (!saida2(4) & ((!saida2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(3),
	datac => saida2(4),
	datad => saida2(2),
	combout => \display_unidade[6]~132_combout\);

-- Location: LCCOMB_X4_Y27_N20
\display_unidade[6]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~133_combout\ = (saida2(6)) # ((saida2(3) & ((saida2(4)) # (!saida2(2)))) # (!saida2(3) & (saida2(4) $ (saida2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(3),
	datac => saida2(4),
	datad => saida2(2),
	combout => \display_unidade[6]~133_combout\);

-- Location: LCCOMB_X4_Y27_N8
\display_unidade[6]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~129_combout\ = (saida2(3) & ((saida2(6) & ((saida2(4)) # (!saida2(2)))) # (!saida2(6) & ((saida2(2)) # (!saida2(4)))))) # (!saida2(3) & (saida2(6) $ (saida2(4) $ (!saida2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(3),
	datac => saida2(4),
	datad => saida2(2),
	combout => \display_unidade[6]~129_combout\);

-- Location: LCCOMB_X4_Y27_N18
\display_unidade[6]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~130_combout\ = (saida2(3) & ((saida2(6)) # (saida2(4) $ (!saida2(2))))) # (!saida2(3) & ((saida2(4)) # (saida2(6) $ (!saida2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(3),
	datac => saida2(4),
	datad => saida2(2),
	combout => \display_unidade[6]~130_combout\);

-- Location: LCCOMB_X4_Y27_N12
\display_unidade[6]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~193_combout\ = (saida2(1) & (saida2(5))) # (!saida2(1) & ((saida2(5) & ((\display_unidade[6]~130_combout\))) # (!saida2(5) & (\display_unidade[6]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => saida2(5),
	datac => \display_unidade[6]~129_combout\,
	datad => \display_unidade[6]~130_combout\,
	combout => \display_unidade[6]~193_combout\);

-- Location: LCCOMB_X4_Y27_N4
\display_unidade[6]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~194_combout\ = (saida2(1) & ((\display_unidade[6]~193_combout\ & ((\display_unidade[6]~133_combout\))) # (!\display_unidade[6]~193_combout\ & (\display_unidade[6]~132_combout\)))) # (!saida2(1) & (((\display_unidade[6]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => \display_unidade[6]~132_combout\,
	datac => \display_unidade[6]~133_combout\,
	datad => \display_unidade[6]~193_combout\,
	combout => \display_unidade[6]~194_combout\);

-- Location: LCCOMB_X5_Y27_N8
\display_unidade[6]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~139_combout\ = (saida2(6) & ((saida2(2) & ((saida2(4)) # (saida2(3)))) # (!saida2(2) & ((!saida2(3)) # (!saida2(4)))))) # (!saida2(6) & ((saida2(2) $ (saida2(4))) # (!saida2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(2),
	datac => saida2(4),
	datad => saida2(3),
	combout => \display_unidade[6]~139_combout\);

-- Location: LCCOMB_X5_Y27_N0
\display_unidade[6]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~140_combout\ = (saida2(6)) # ((saida2(2)) # ((saida2(3)) # (!saida2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(2),
	datac => saida2(4),
	datad => saida2(3),
	combout => \display_unidade[6]~140_combout\);

-- Location: LCCOMB_X5_Y27_N30
\display_unidade[6]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~213_combout\ = (saida2(6) & ((saida2(2)) # ((saida2(3)) # (!saida2(4))))) # (!saida2(6) & (saida2(2) $ ((saida2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(2),
	datab => saida2(4),
	datac => saida2(6),
	datad => saida2(3),
	combout => \display_unidade[6]~213_combout\);

-- Location: LCCOMB_X5_Y27_N26
\display_unidade[6]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~214_combout\ = (saida2(1) & (saida2(5))) # (!saida2(1) & ((\display_unidade[6]~213_combout\) # (saida2(5) $ (saida2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(1),
	datac => saida2(3),
	datad => \display_unidade[6]~213_combout\,
	combout => \display_unidade[6]~214_combout\);

-- Location: LCCOMB_X5_Y27_N2
\display_unidade[6]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~196_combout\ = (saida2(1) & ((\display_unidade[6]~214_combout\ & ((\display_unidade[6]~140_combout\))) # (!\display_unidade[6]~214_combout\ & (\display_unidade[6]~139_combout\)))) # (!saida2(1) & (((\display_unidade[6]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(1),
	datab => \display_unidade[6]~139_combout\,
	datac => \display_unidade[6]~140_combout\,
	datad => \display_unidade[6]~214_combout\,
	combout => \display_unidade[6]~196_combout\);

-- Location: LCCOMB_X4_Y27_N0
\display_unidade[6]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]~209_combout\ = (saida2(0) & ((\display_unidade[6]~196_combout\))) # (!saida2(0) & (\display_unidade[6]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(0),
	datac => \display_unidade[6]~194_combout\,
	datad => \display_unidade[6]~196_combout\,
	combout => \display_unidade[6]~209_combout\);

-- Location: LCCOMB_X4_Y27_N10
\display_unidade[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[6]$latch~combout\ = (GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & ((\display_unidade[6]~209_combout\))) # (!GLOBAL(\display_unidade[6]~210clkctrl_outclk\) & (\display_unidade[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[6]$latch~combout\,
	datac => \display_unidade[6]~210clkctrl_outclk\,
	datad => \display_unidade[6]~209_combout\,
	combout => \display_unidade[6]$latch~combout\);

-- Location: LCCOMB_X6_Y27_N18
\display_dezena~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~30_combout\ = (saida2(2) & ((saida2(4)) # ((!saida2(1) & saida2(6))))) # (!saida2(2) & (((saida2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(2),
	datac => saida2(1),
	datad => saida2(6),
	combout => \display_dezena~30_combout\);

-- Location: LCCOMB_X6_Y27_N28
\display_dezena~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~31_combout\ = (saida2(5)) # ((saida2(3) & ((saida2(4)))) # (!saida2(3) & (\display_dezena~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => \display_dezena~30_combout\,
	datac => saida2(4),
	datad => saida2(3),
	combout => \display_dezena~31_combout\);

-- Location: LCCOMB_X4_Y26_N22
\display_dezena~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~28_combout\ = (saida2(6) & ((saida2(4)) # ((saida2(5))))) # (!saida2(6) & (saida2(5) & ((saida2(4)) # (saida2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => saida2(4),
	datac => saida2(5),
	datad => saida2(3),
	combout => \display_dezena~28_combout\);

-- Location: LCCOMB_X4_Y26_N26
\display_unidade[1]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~201_combout\ = (!saida2(5) & !saida2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => saida2(5),
	datad => saida2(6),
	combout => \display_unidade[1]~201_combout\);

-- Location: LCCOMB_X4_Y26_N20
\LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (\display_unidade[1]~201_combout\ & (!saida2(4) & ((\Equal89~34_combout\) # (!saida2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal89~34_combout\,
	datab => \display_unidade[1]~201_combout\,
	datac => saida2(4),
	datad => saida2(3),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X4_Y26_N30
\LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!saida2(3) & ((!saida2(1)) # (!saida2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(2),
	datac => saida2(1),
	datad => saida2(3),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X4_Y26_N8
\display_dezena~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~29_combout\ = (\display_dezena~28_combout\) # ((\LessThan9~0_combout\) # ((saida2(6) & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => \display_dezena~28_combout\,
	datac => \LessThan9~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \display_dezena~29_combout\);

-- Location: LCCOMB_X3_Y26_N4
\display_dezena~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~14_combout\ = (!saida2(5) & !saida2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => saida2(5),
	datad => saida2(4),
	combout => \display_dezena~14_combout\);

-- Location: LCCOMB_X3_Y26_N6
\display_dezena~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~15_combout\ = (\display_dezena~13_combout\) # ((saida2(6) & ((\LessThan3~0_combout\) # (!\display_dezena~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_dezena~13_combout\,
	datab => saida2(6),
	datac => \display_dezena~14_combout\,
	datad => \LessThan3~0_combout\,
	combout => \display_dezena~15_combout\);

-- Location: LCCOMB_X3_Y26_N0
\display_unidade[1]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~205_combout\ = (!saida2(5) & (!saida2(6) & ((!saida2(1)) # (!\display_unidade[1]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[1]~202_combout\,
	datab => saida2(5),
	datac => saida2(1),
	datad => saida2(6),
	combout => \display_unidade[1]~205_combout\);

-- Location: LCCOMB_X4_Y26_N2
\LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (saida2(4) & ((saida2(2)) # (saida2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datac => saida2(2),
	datad => saida2(3),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X4_Y26_N16
\display_dezena~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~16_combout\ = (!saida2(5) & (!saida2(6) & (!\LessThan9~0_combout\ & !\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(5),
	datab => saida2(6),
	datac => \LessThan9~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \display_dezena~16_combout\);

-- Location: LCCOMB_X3_Y26_N20
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!saida2(1) & !saida2(2))) # (!saida2(3))) # (!saida2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(1),
	datac => saida2(2),
	datad => saida2(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y26_N18
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!saida2(5) & \LessThan0~0_combout\)) # (!saida2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saida2(5),
	datac => \LessThan0~0_combout\,
	datad => saida2(6),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X3_Y26_N28
\display_dezena~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~17_combout\ = (\display_dezena~15_combout\ & ((\LessThan0~1_combout\) # ((\display_unidade[1]~205_combout\ & !\display_dezena~16_combout\)))) # (!\display_dezena~15_combout\ & (\display_unidade[1]~205_combout\ & 
-- (!\display_dezena~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_dezena~15_combout\,
	datab => \display_unidade[1]~205_combout\,
	datac => \display_dezena~16_combout\,
	datad => \LessThan0~1_combout\,
	combout => \display_dezena~17_combout\);

-- Location: LCCOMB_X3_Y26_N10
\display_dezena~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~26_combout\ = (!saida2(4) & (!\LessThan3~0_combout\ & (!saida2(5) & saida2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => \LessThan3~0_combout\,
	datac => saida2(5),
	datad => saida2(6),
	combout => \display_dezena~26_combout\);

-- Location: LCCOMB_X3_Y26_N12
\display_unidade[1]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unidade[1]~202_combout\ = (saida2(3) & (saida2(2) & saida2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(3),
	datac => saida2(2),
	datad => saida2(4),
	combout => \display_unidade[1]~202_combout\);

-- Location: LCCOMB_X3_Y26_N26
\display_dezena~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~20_combout\ = (!saida2(6) & ((!\display_unidade[1]~202_combout\) # (!saida2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datac => saida2(5),
	datad => \display_unidade[1]~202_combout\,
	combout => \display_dezena~20_combout\);

-- Location: LCCOMB_X3_Y26_N8
\display_dezena~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~21_combout\ = (saida2(5) & (((saida2(6))) # (!\display_unidade[1]~202_combout\))) # (!saida2(5) & (((!saida2(6)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidade[1]~202_combout\,
	datab => saida2(5),
	datac => \LessThan0~0_combout\,
	datad => saida2(6),
	combout => \display_dezena~21_combout\);

-- Location: LCCOMB_X4_Y26_N0
\display_dezena~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~18_combout\ = (saida2(4) & ((saida2(2)) # ((saida2(1)) # (saida2(3))))) # (!saida2(4) & (((!saida2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(2),
	datac => saida2(1),
	datad => saida2(3),
	combout => \display_dezena~18_combout\);

-- Location: LCCOMB_X4_Y26_N28
\display_dezena~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~19_combout\ = (saida2(5) & (((\display_dezena~18_combout\)))) # (!saida2(5) & (((!\display_dezena~16_combout\)) # (!\LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \display_dezena~18_combout\,
	datac => saida2(5),
	datad => \display_dezena~16_combout\,
	combout => \display_dezena~19_combout\);

-- Location: LCCOMB_X3_Y26_N22
\display_dezena~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~22_combout\ = (\display_dezena~26_combout\ & (\display_dezena~20_combout\ & ((\display_dezena~19_combout\)))) # (!\display_dezena~26_combout\ & (((\display_dezena~20_combout\ & \display_dezena~19_combout\)) # 
-- (!\display_dezena~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_dezena~26_combout\,
	datab => \display_dezena~20_combout\,
	datac => \display_dezena~21_combout\,
	datad => \display_dezena~19_combout\,
	combout => \display_dezena~22_combout\);

-- Location: LCCOMB_X4_Y26_N10
\LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (((!saida2(3)) # (!saida2(1))) # (!saida2(2))) # (!saida2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(4),
	datab => saida2(2),
	datac => saida2(1),
	datad => saida2(3),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X4_Y26_N24
\display_dezena~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~27_combout\ = (saida2(6)) # (((saida2(5)) # (!\LessThan7~0_combout\)) # (!\LessThan8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => \LessThan8~0_combout\,
	datac => saida2(5),
	datad => \LessThan7~0_combout\,
	combout => \display_dezena~27_combout\);

-- Location: LCCOMB_X4_Y26_N6
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (((\Equal89~34_combout\ & !saida2(3))) # (!saida2(4))) # (!saida2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal89~34_combout\,
	datab => saida2(3),
	datac => saida2(5),
	datad => saida2(4),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X3_Y26_N24
\display_dezena~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~23_combout\ = (\display_dezena~21_combout\) # ((saida2(6) & ((!\LessThan3~0_combout\) # (!\display_dezena~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saida2(6),
	datab => \display_dezena~21_combout\,
	datac => \display_dezena~14_combout\,
	datad => \LessThan3~0_combout\,
	combout => \display_dezena~23_combout\);

-- Location: LCCOMB_X3_Y26_N14
\display_dezena~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~24_combout\ = (\display_dezena~23_combout\ & (((\LessThan5~0_combout\ & !saida2(6))) # (!\display_dezena~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \display_dezena~20_combout\,
	datac => \display_dezena~23_combout\,
	datad => saida2(6),
	combout => \display_dezena~24_combout\);

-- Location: LCCOMB_X3_Y26_N16
\display_dezena~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_dezena~25_combout\ = (\display_dezena~23_combout\ & ((\display_dezena~19_combout\) # (!\display_dezena~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_dezena~20_combout\,
	datac => \display_dezena~23_combout\,
	datad => \display_dezena~19_combout\,
	combout => \display_dezena~25_combout\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(5));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(6));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(0));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(1));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(2));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(3));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(4));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(5));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_unidade[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unidade[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_unidade(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(1));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(2));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(3));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(4));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(5));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_dezena[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_dezena~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_dezena(6));
END structure;


