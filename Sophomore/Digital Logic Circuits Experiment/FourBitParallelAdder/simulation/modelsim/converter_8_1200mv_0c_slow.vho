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

-- DATE "05/22/2024 22:48:24"

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

ENTITY 	converter IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	ten_seg : OUT std_logic_vector(3 DOWNTO 0);
	one_seg : OUT std_logic_vector(3 DOWNTO 0)
	);
END converter;

-- Design Ports Information
-- ten_seg[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ten_seg[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ten_seg[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ten_seg[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- one_seg[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- one_seg[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- one_seg[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- one_seg[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF converter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_ten_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_one_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ten_seg[0]~output_o\ : std_logic;
SIGNAL \ten_seg[1]~output_o\ : std_logic;
SIGNAL \ten_seg[2]~output_o\ : std_logic;
SIGNAL \ten_seg[3]~output_o\ : std_logic;
SIGNAL \one_seg[0]~output_o\ : std_logic;
SIGNAL \one_seg[1]~output_o\ : std_logic;
SIGNAL \one_seg[2]~output_o\ : std_logic;
SIGNAL \one_seg[3]~output_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \ten_seg~0_combout\ : std_logic;
SIGNAL \ten_seg~1_combout\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \one_seg~0_combout\ : std_logic;
SIGNAL \one_seg~1_combout\ : std_logic;
SIGNAL \one_seg~2_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ten_seg <= ww_ten_seg;
one_seg <= ww_one_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y17_N16
\ten_seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ten_seg~0_combout\,
	devoe => ww_devoe,
	o => \ten_seg[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\ten_seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ten_seg~1_combout\,
	devoe => ww_devoe,
	o => \ten_seg[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\ten_seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ten_seg[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\ten_seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ten_seg[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\one_seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e~input_o\,
	devoe => ww_devoe,
	o => \one_seg[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\one_seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \one_seg~0_combout\,
	devoe => ww_devoe,
	o => \one_seg[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\one_seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \one_seg~1_combout\,
	devoe => ww_devoe,
	o => \one_seg[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\one_seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \one_seg~2_combout\,
	devoe => ww_devoe,
	o => \one_seg[3]~output_o\);

-- Location: IOIBUF_X13_Y24_N15
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X19_Y18_N24
\ten_seg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ten_seg~0_combout\ = (\b~input_o\ & ((\d~input_o\ & ((\c~input_o\) # (!\a~input_o\))) # (!\d~input_o\ & (\c~input_o\ & !\a~input_o\)))) # (!\b~input_o\ & (((!\c~input_o\ & \a~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \d~input_o\,
	datac => \c~input_o\,
	datad => \a~input_o\,
	combout => \ten_seg~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\ten_seg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ten_seg~1_combout\ = (\a~input_o\ & ((\b~input_o\) # (\c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \c~input_o\,
	datad => \a~input_o\,
	combout => \ten_seg~1_combout\);

-- Location: IOIBUF_X34_Y4_N15
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: LCCOMB_X19_Y18_N12
\one_seg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_seg~0_combout\ = (\b~input_o\ & ((\d~input_o\ & (!\c~input_o\ & \a~input_o\)) # (!\d~input_o\ & (\c~input_o\ & !\a~input_o\)))) # (!\b~input_o\ & (\d~input_o\ $ (((!\c~input_o\ & \a~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \d~input_o\,
	datac => \c~input_o\,
	datad => \a~input_o\,
	combout => \one_seg~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\one_seg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_seg~1_combout\ = (\c~input_o\ & (!\a~input_o\ & ((\d~input_o\) # (!\b~input_o\)))) # (!\c~input_o\ & (\a~input_o\ & ((\b~input_o\) # (!\d~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \d~input_o\,
	datac => \c~input_o\,
	datad => \a~input_o\,
	combout => \one_seg~1_combout\);

-- Location: LCCOMB_X19_Y18_N8
\one_seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_seg~2_combout\ = (\b~input_o\ & (!\d~input_o\ & ((\c~input_o\) # (!\a~input_o\)))) # (!\b~input_o\ & (\d~input_o\ & (!\c~input_o\ & \a~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \d~input_o\,
	datac => \c~input_o\,
	datad => \a~input_o\,
	combout => \one_seg~2_combout\);

ww_ten_seg(0) <= \ten_seg[0]~output_o\;

ww_ten_seg(1) <= \ten_seg[1]~output_o\;

ww_ten_seg(2) <= \ten_seg[2]~output_o\;

ww_ten_seg(3) <= \ten_seg[3]~output_o\;

ww_one_seg(0) <= \one_seg[0]~output_o\;

ww_one_seg(1) <= \one_seg[1]~output_o\;

ww_one_seg(2) <= \one_seg[2]~output_o\;

ww_one_seg(3) <= \one_seg[3]~output_o\;
END structure;


