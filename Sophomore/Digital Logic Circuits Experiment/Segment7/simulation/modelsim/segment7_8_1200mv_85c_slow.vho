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

-- DATE "05/01/2024 16:56:11"

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

ENTITY 	segment7 IS
    PORT (
	A1 : IN std_logic_vector(3 DOWNTO 0);
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	com : OUT std_logic_vector(3 DOWNTO 0)
	);
END segment7;

-- Design Ports Information
-- a	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF segment7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_com : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \com[0]~output_o\ : std_logic;
SIGNAL \com[1]~output_o\ : std_logic;
SIGNAL \com[2]~output_o\ : std_logic;
SIGNAL \com[3]~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \e~0_combout\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;

BEGIN

ww_A1 <= A1;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
com <= ww_com;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X16_Y0_N23
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\com[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \com[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\com[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \com[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\com[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \com[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\com[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \com[3]~output_o\);

-- Location: IOIBUF_X23_Y24_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X21_Y23_N24
\a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a~0_combout\ = (\A[2]~input_o\ & ((\A[1]~input_o\) # (\A[3]~input_o\ $ (\A[0]~input_o\)))) # (!\A[2]~input_o\ & ((\A[1]~input_o\ $ (\A[3]~input_o\)) # (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \a~0_combout\);

-- Location: LCCOMB_X21_Y23_N26
\b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((!\A[3]~input_o\))) # (!\A[0]~input_o\ & (!\A[2]~input_o\)))) # (!\A[1]~input_o\ & ((\A[3]~input_o\ $ (!\A[0]~input_o\)) # (!\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \b~0_combout\);

-- Location: LCCOMB_X21_Y23_N28
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\A[2]~input_o\ & (((!\A[1]~input_o\ & \A[0]~input_o\)) # (!\A[3]~input_o\))) # (!\A[2]~input_o\ & (((\A[3]~input_o\) # (\A[0]~input_o\)) # (!\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X21_Y23_N30
\d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~0_combout\ = (\A[1]~input_o\ & ((\A[2]~input_o\ & ((!\A[0]~input_o\))) # (!\A[2]~input_o\ & ((\A[0]~input_o\) # (!\A[3]~input_o\))))) # (!\A[1]~input_o\ & ((\A[3]~input_o\) # (\A[2]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \d~0_combout\);

-- Location: LCCOMB_X21_Y23_N8
\e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e~0_combout\ = (\A[1]~input_o\ & (((\A[3]~input_o\) # (!\A[0]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ & (\A[3]~input_o\)) # (!\A[2]~input_o\ & ((!\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \e~0_combout\);

-- Location: LCCOMB_X21_Y23_N10
\f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~0_combout\ = (\A[1]~input_o\ & ((\A[2]~input_o\) # ((\A[3]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ $ (\A[3]~input_o\)) # (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \f~0_combout\);

-- Location: LCCOMB_X21_Y23_N20
\g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g~0_combout\ = (\A[0]~input_o\ & ((\A[3]~input_o\) # (\A[2]~input_o\ $ (\A[1]~input_o\)))) # (!\A[0]~input_o\ & ((\A[1]~input_o\) # (\A[2]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \g~0_combout\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_com(0) <= \com[0]~output_o\;

ww_com(1) <= \com[1]~output_o\;

ww_com(2) <= \com[2]~output_o\;

ww_com(3) <= \com[3]~output_o\;
END structure;


