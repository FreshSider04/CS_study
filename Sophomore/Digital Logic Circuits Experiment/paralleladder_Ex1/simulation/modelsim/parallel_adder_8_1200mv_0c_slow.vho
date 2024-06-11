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

-- DATE "04/17/2024 23:24:31"

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

ENTITY 	parallel_adder IS
    PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	C0 : IN std_logic;
	C4 : OUT std_logic
	);
END parallel_adder;

-- Design Ports Information
-- S0	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parallel_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \C0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \FA0|HA2|U2~0_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \FA0|U3~0_combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \FA1|HA2|U2~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \FA1|U3~0_combout\ : std_logic;
SIGNAL \FA2|HA2|U2~combout\ : std_logic;
SIGNAL \FA2|U3~0_combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \FA3|HA2|U2~combout\ : std_logic;
SIGNAL \FA3|U3~0_combout\ : std_logic;

BEGIN

ww_A0 <= A0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_B0 <= B0;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
ww_C0 <= C0;
C4 <= ww_C4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X3_Y24_N23
\S0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|HA2|U2~0_combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|HA2|U2~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|HA2|U2~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|HA2|U2~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\C4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|U3~0_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\C0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C0,
	o => \C0~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\B0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X2_Y7_N16
\FA0|HA2|U2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|HA2|U2~0_combout\ = \A0~input_o\ $ (\C0~input_o\ $ (\B0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datac => \C0~input_o\,
	datad => \B0~input_o\,
	combout => \FA0|HA2|U2~0_combout\);

-- Location: IOIBUF_X0_Y9_N8
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X2_Y7_N26
\FA0|U3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|U3~0_combout\ = (\A0~input_o\ & ((\C0~input_o\) # (\B0~input_o\))) # (!\A0~input_o\ & (\C0~input_o\ & \B0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datac => \C0~input_o\,
	datad => \B0~input_o\,
	combout => \FA0|U3~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X2_Y7_N4
\FA1|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|HA2|U2~combout\ = \A1~input_o\ $ (\FA0|U3~0_combout\ $ (\B1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \FA0|U3~0_combout\,
	datad => \B1~input_o\,
	combout => \FA1|HA2|U2~combout\);

-- Location: IOIBUF_X1_Y0_N22
\B2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X2_Y7_N6
\FA1|U3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|U3~0_combout\ = (\A1~input_o\ & ((\FA0|U3~0_combout\) # (\B1~input_o\))) # (!\A1~input_o\ & (\FA0|U3~0_combout\ & \B1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \FA0|U3~0_combout\,
	datad => \B1~input_o\,
	combout => \FA1|U3~0_combout\);

-- Location: LCCOMB_X2_Y7_N0
\FA2|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|HA2|U2~combout\ = \B2~input_o\ $ (\A2~input_o\ $ (\FA1|U3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2~input_o\,
	datac => \A2~input_o\,
	datad => \FA1|U3~0_combout\,
	combout => \FA2|HA2|U2~combout\);

-- Location: LCCOMB_X2_Y7_N2
\FA2|U3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|U3~0_combout\ = (\B2~input_o\ & ((\A2~input_o\) # (\FA1|U3~0_combout\))) # (!\B2~input_o\ & (\A2~input_o\ & \FA1|U3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2~input_o\,
	datac => \A2~input_o\,
	datad => \FA1|U3~0_combout\,
	combout => \FA2|U3~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\B3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X2_Y7_N12
\FA3|HA2|U2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|HA2|U2~combout\ = \FA2|U3~0_combout\ $ (\A3~input_o\ $ (\B3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|U3~0_combout\,
	datac => \A3~input_o\,
	datad => \B3~input_o\,
	combout => \FA3|HA2|U2~combout\);

-- Location: LCCOMB_X2_Y7_N14
\FA3|U3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|U3~0_combout\ = (\FA2|U3~0_combout\ & ((\A3~input_o\) # (\B3~input_o\))) # (!\FA2|U3~0_combout\ & (\A3~input_o\ & \B3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|U3~0_combout\,
	datac => \A3~input_o\,
	datad => \B3~input_o\,
	combout => \FA3|U3~0_combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_C4 <= \C4~output_o\;
END structure;


