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

-- DATE "05/08/2024 10:52:11"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cnt8 IS
    PORT (
	clock_c : IN std_logic;
	outclock_c : OUT std_logic
	);
END cnt8;

-- Design Ports Information
-- outclock_c	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_c	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cnt8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_c : std_logic;
SIGNAL ww_outclock_c : std_logic;
SIGNAL \clock_c~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outclock_c~output_o\ : std_logic;
SIGNAL \clock_c~input_o\ : std_logic;
SIGNAL \clock_c~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~2_combout\ : std_logic;
SIGNAL \count[1]~1_combout\ : std_logic;
SIGNAL \count[2]~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clock_c <= clock_c;
outclock_c <= ww_outclock_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_c~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_c~input_o\);

-- Location: IOOBUF_X18_Y0_N16
\outclock_c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \outclock_c~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock_c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_c,
	o => \clock_c~input_o\);

-- Location: CLKCTRL_G2
\clock_c~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_c~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_c~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y1_N2
\count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~2_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~2_combout\);

-- Location: FF_X18_Y1_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_c~inputclkctrl_outclk\,
	d => \count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X18_Y1_N0
\count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~1_combout\ = count(1) $ (count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \count[1]~1_combout\);

-- Location: FF_X18_Y1_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_c~inputclkctrl_outclk\,
	d => \count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X18_Y1_N28
\count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~0_combout\ = count(2) $ (((count(1) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => count(2),
	datad => count(0),
	combout => \count[2]~0_combout\);

-- Location: FF_X18_Y1_N29
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_c~inputclkctrl_outclk\,
	d => \count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

ww_outclock_c <= \outclock_c~output_o\;
END structure;


