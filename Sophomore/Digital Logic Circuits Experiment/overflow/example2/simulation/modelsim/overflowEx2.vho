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

-- DATE "04/17/2024 21:28:04"

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

ENTITY 	overflowEx2 IS
    PORT (
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	C1 : IN std_logic;
	C5 : OUT std_logic;
	Overflow : OUT std_logic
	);
END overflowEx2;

-- Design Ports Information
-- S1	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C5	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF overflowEx2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_C5 : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \C5~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \FA0|HA2|U2~combout\ : std_logic;
SIGNAL \FA0|U3~combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \FA1|HA2|U2~combout\ : std_logic;
SIGNAL \FA1|U3~combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \FA2|HA2|U2~combout\ : std_logic;
SIGNAL \FA2|U3~combout\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \FA3|HA2|U2~combout\ : std_logic;
SIGNAL \FA3|U3~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \FA3|HA2|ALT_INV_U2~combout\ : std_logic;
SIGNAL \FA2|HA2|ALT_INV_U2~combout\ : std_logic;
SIGNAL \FA1|HA2|ALT_INV_U2~combout\ : std_logic;
SIGNAL \FA0|HA2|ALT_INV_U2~combout\ : std_logic;

BEGIN

ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_A4 <= A4;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
ww_B4 <= B4;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
ww_C1 <= C1;
C5 <= ww_C5;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FA3|HA2|ALT_INV_U2~combout\ <= NOT \FA3|HA2|U2~combout\;
\FA2|HA2|ALT_INV_U2~combout\ <= NOT \FA2|HA2|U2~combout\;
\FA1|HA2|ALT_INV_U2~combout\ <= NOT \FA1|HA2|U2~combout\;
\FA0|HA2|ALT_INV_U2~combout\ <= NOT \FA0|HA2|U2~combout\;

-- Location: IOOBUF_X0_Y18_N23
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|HA2|ALT_INV_U2~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|HA2|ALT_INV_U2~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|HA2|ALT_INV_U2~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\S4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|HA2|ALT_INV_U2~combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\C5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|U3~combout\,
	devoe => ww_devoe,
	o => \C5~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\Overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb~0_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOIBUF_X7_Y0_N1
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\C1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: LCCOMB_X9_Y10_N24
\FA0|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|HA2|U2~combout\ = \A1~input_o\ $ (\B1~input_o\ $ (\C1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \C1~input_o\,
	combout => \FA0|HA2|U2~combout\);

-- Location: LCCOMB_X9_Y10_N26
\FA0|U3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|U3~combout\ = (\A1~input_o\ & ((\C1~input_o\) # (!\B1~input_o\))) # (!\A1~input_o\ & (!\B1~input_o\ & \C1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \C1~input_o\,
	combout => \FA0|U3~combout\);

-- Location: IOIBUF_X0_Y6_N15
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\B2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X9_Y10_N4
\FA1|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|HA2|U2~combout\ = \FA0|U3~combout\ $ (\A2~input_o\ $ (\B2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA0|U3~combout\,
	datac => \A2~input_o\,
	datad => \B2~input_o\,
	combout => \FA1|HA2|U2~combout\);

-- Location: LCCOMB_X9_Y10_N6
\FA1|U3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|U3~combout\ = (\FA0|U3~combout\ & ((\A2~input_o\) # (!\B2~input_o\))) # (!\FA0|U3~combout\ & (\A2~input_o\ & !\B2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA0|U3~combout\,
	datac => \A2~input_o\,
	datad => \B2~input_o\,
	combout => \FA1|U3~combout\);

-- Location: IOIBUF_X0_Y8_N15
\B3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X9_Y10_N8
\FA2|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|HA2|U2~combout\ = \FA1|U3~combout\ $ (\B3~input_o\ $ (\A3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA1|U3~combout\,
	datac => \B3~input_o\,
	datad => \A3~input_o\,
	combout => \FA2|HA2|U2~combout\);

-- Location: LCCOMB_X9_Y10_N2
\FA2|U3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|U3~combout\ = (\FA1|U3~combout\ & ((\A3~input_o\) # (!\B3~input_o\))) # (!\FA1|U3~combout\ & (!\B3~input_o\ & \A3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA1|U3~combout\,
	datac => \B3~input_o\,
	datad => \A3~input_o\,
	combout => \FA2|U3~combout\);

-- Location: IOIBUF_X0_Y6_N22
\B4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\A4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: LCCOMB_X9_Y10_N28
\FA3|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|HA2|U2~combout\ = \FA2|U3~combout\ $ (\B4~input_o\ $ (\A4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|U3~combout\,
	datac => \B4~input_o\,
	datad => \A4~input_o\,
	combout => \FA3|HA2|U2~combout\);

-- Location: LCCOMB_X9_Y10_N30
\FA3|U3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|U3~combout\ = (\FA2|U3~combout\ & ((\A4~input_o\) # (!\B4~input_o\))) # (!\FA2|U3~combout\ & (!\B4~input_o\ & \A4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|U3~combout\,
	datac => \B4~input_o\,
	datad => \A4~input_o\,
	combout => \FA3|U3~combout\);

-- Location: LCCOMB_X9_Y10_N0
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\FA2|U3~combout\ & (\B4~input_o\ & !\A4~input_o\)) # (!\FA2|U3~combout\ & (!\B4~input_o\ & \A4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|U3~combout\,
	datac => \B4~input_o\,
	datad => \A4~input_o\,
	combout => \comb~0_combout\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_C5 <= \C5~output_o\;

ww_Overflow <= \Overflow~output_o\;
END structure;


