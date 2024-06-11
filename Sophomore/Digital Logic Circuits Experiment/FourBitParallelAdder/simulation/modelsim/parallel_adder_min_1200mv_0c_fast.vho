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

-- DATE "05/22/2024 22:59:55"

-- 
-- Device: Altera EP4CGX15BF14C8 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parallel_adder IS
    PORT (
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	S3 : BUFFER std_logic;
	S2 : BUFFER std_logic;
	S1 : BUFFER std_logic;
	S0 : BUFFER std_logic;
	C4 : BUFFER std_logic;
	overflow : BUFFER std_logic
	);
END parallel_adder;

-- Design Ports Information
-- S3	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \FA2|u3~0_combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \FA3|u3~0_combout\ : std_logic;
SIGNAL \FA4|ha2|u2~combout\ : std_logic;
SIGNAL \FA3|ha2|u2~0_combout\ : std_logic;
SIGNAL \FA2|ha2|u2~0_combout\ : std_logic;
SIGNAL \FA1|ha1|u2~combout\ : std_logic;
SIGNAL \FA4|u3~0_combout\ : std_logic;
SIGNAL \orGate1~0_combout\ : std_logic;

BEGIN

ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
ww_B3 <= B3;
ww_B2 <= B2;
ww_B1 <= B1;
ww_B0 <= B0;
S3 <= ww_S3;
S2 <= ww_S2;
S1 <= ww_S1;
S0 <= ww_S0;
C4 <= ww_C4;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N2
\S3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA4|ha2|u2~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\S2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|ha2|u2~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\S1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|ha2|u2~0_combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\S0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|ha1|u2~combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\C4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA4|u3~0_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\overflow~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \orGate1~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\A3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\B3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\A1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\B0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\A0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X20_Y1_N0
\FA2|u3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA2|u3~0_combout\ = (\A1~input_o\ & ((\B1~input_o\) # ((\B0~input_o\ & \A0~input_o\)))) # (!\A1~input_o\ & (\B0~input_o\ & (\B1~input_o\ & \A0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A0~input_o\,
	combout => \FA2|u3~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\A2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X20_Y1_N26
\FA3|u3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA3|u3~0_combout\ = (\FA2|u3~0_combout\ & ((\A2~input_o\) # (\B2~input_o\))) # (!\FA2|u3~0_combout\ & (\A2~input_o\ & \B2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|u3~0_combout\,
	datac => \A2~input_o\,
	datad => \B2~input_o\,
	combout => \FA3|u3~0_combout\);

-- Location: LCCOMB_X20_Y1_N4
\FA4|ha2|u2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA4|ha2|u2~combout\ = \A3~input_o\ $ (\B3~input_o\ $ (\FA3|u3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \FA3|u3~0_combout\,
	combout => \FA4|ha2|u2~combout\);

-- Location: LCCOMB_X20_Y1_N6
\FA3|ha2|u2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA3|ha2|u2~0_combout\ = \FA2|u3~0_combout\ $ (\A2~input_o\ $ (\B2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA2|u3~0_combout\,
	datac => \A2~input_o\,
	datad => \B2~input_o\,
	combout => \FA3|ha2|u2~0_combout\);

-- Location: LCCOMB_X20_Y1_N8
\FA2|ha2|u2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA2|ha2|u2~0_combout\ = \A1~input_o\ $ (\B1~input_o\ $ (((\B0~input_o\ & \A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A0~input_o\,
	combout => \FA2|ha2|u2~0_combout\);

-- Location: LCCOMB_X20_Y1_N2
\FA1|ha1|u2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA1|ha1|u2~combout\ = \B0~input_o\ $ (\A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \FA1|ha1|u2~combout\);

-- Location: LCCOMB_X20_Y1_N28
\FA4|u3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FA4|u3~0_combout\ = (\A3~input_o\ & ((\B3~input_o\) # (\FA3|u3~0_combout\))) # (!\A3~input_o\ & (\B3~input_o\ & \FA3|u3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \FA3|u3~0_combout\,
	combout => \FA4|u3~0_combout\);

-- Location: LCCOMB_X20_Y1_N14
\orGate1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orGate1~0_combout\ = (\A3~input_o\ & (\B3~input_o\ & !\FA3|u3~0_combout\)) # (!\A3~input_o\ & (!\B3~input_o\ & \FA3|u3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \FA3|u3~0_combout\,
	combout => \orGate1~0_combout\);

ww_S3 <= \S3~output_o\;

ww_S2 <= \S2~output_o\;

ww_S1 <= \S1~output_o\;

ww_S0 <= \S0~output_o\;

ww_C4 <= \C4~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


