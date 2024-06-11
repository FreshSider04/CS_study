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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/11/2024 14:25:21"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	half_adder IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : OUT std_logic;
	C : OUT std_logic
	);
END half_adder;

-- Design Ports Information
-- S	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF half_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \U2~combout\ : std_logic;
SIGNAL \U1~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N2
\S~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2~combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y19_N8
U2 : cycloneive_lcell_comb
-- Equation(s):
-- \U2~combout\ = \A~input_o\ $ (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \U2~combout\);

-- Location: LCCOMB_X1_Y19_N10
U1 : cycloneive_lcell_comb
-- Equation(s):
-- \U1~combout\ = (\A~input_o\ & \B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \U1~combout\);

ww_S <= \S~output_o\;

ww_C <= \C~output_o\;
END structure;


