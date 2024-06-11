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

-- DATE "05/08/2024 10:56:08"

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

ENTITY 	cnt IS
    PORT (
	clk : IN std_logic;
	outclk : OUT std_logic
	);
END cnt;

-- Design Ports Information
-- outclk	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_outclk : std_logic;
SIGNAL \U3|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outclk~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|count[0]~2_combout\ : std_logic;
SIGNAL \U0|count[1]~1_combout\ : std_logic;
SIGNAL \U0|count[2]~0_combout\ : std_logic;
SIGNAL \U0|count[2]~feeder_combout\ : std_logic;
SIGNAL \U0|LessThan0~combout\ : std_logic;
SIGNAL \U0|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \U1|count[0]~2_combout\ : std_logic;
SIGNAL \U1|count[1]~1_combout\ : std_logic;
SIGNAL \U1|count[2]~0_combout\ : std_logic;
SIGNAL \U1|count[2]~feeder_combout\ : std_logic;
SIGNAL \U1|LessThan0~combout\ : std_logic;
SIGNAL \U1|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \U2|count[0]~2_combout\ : std_logic;
SIGNAL \U2|count[1]~1_combout\ : std_logic;
SIGNAL \U2|count[2]~0_combout\ : std_logic;
SIGNAL \U2|count[2]~feeder_combout\ : std_logic;
SIGNAL \U2|LessThan0~combout\ : std_logic;
SIGNAL \U2|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \U3|count[0]~2_combout\ : std_logic;
SIGNAL \U3|count[1]~1_combout\ : std_logic;
SIGNAL \U3|count[2]~0_combout\ : std_logic;
SIGNAL \U3|count[2]~feeder_combout\ : std_logic;
SIGNAL \U3|LessThan0~combout\ : std_logic;
SIGNAL \U3|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \U4|count[0]~2_combout\ : std_logic;
SIGNAL \U4|count[1]~1_combout\ : std_logic;
SIGNAL \U4|count[2]~0_combout\ : std_logic;
SIGNAL \U1|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U3|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|count\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
outclk <= ww_outclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U3|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|LessThan0~combout\);

\U0|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|LessThan0~combout\);

\U2|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|LessThan0~combout\);

\U1|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|LessThan0~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X18_Y24_N16
\outclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|count\(2),
	devoe => ww_devoe,
	o => \outclk~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N26
\U0|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|count[0]~2_combout\ = !\U0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|count\(0),
	combout => \U0|count[0]~2_combout\);

-- Location: FF_X32_Y12_N27
\U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(0));

-- Location: LCCOMB_X32_Y12_N28
\U0|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|count[1]~1_combout\ = \U0|count\(1) $ (\U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|count\(1),
	datad => \U0|count\(0),
	combout => \U0|count[1]~1_combout\);

-- Location: FF_X32_Y12_N29
\U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(1));

-- Location: LCCOMB_X32_Y12_N24
\U0|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|count[2]~0_combout\ = \U0|count\(2) $ (((\U0|count\(0) & \U0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(2),
	datac => \U0|count\(0),
	datad => \U0|count\(1),
	combout => \U0|count[2]~0_combout\);

-- Location: LCCOMB_X32_Y12_N30
\U0|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|count[2]~feeder_combout\ = \U0|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|count[2]~0_combout\,
	combout => \U0|count[2]~feeder_combout\);

-- Location: FF_X32_Y12_N31
\U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(2));

-- Location: LCCOMB_X33_Y12_N16
\U0|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan0~combout\ = LCELL(\U0|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|count\(2),
	combout => \U0|LessThan0~combout\);

-- Location: CLKCTRL_G8
\U0|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N22
\U1|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[0]~2_combout\ = !\U1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|count\(0),
	combout => \U1|count[0]~2_combout\);

-- Location: FF_X1_Y11_N23
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|LessThan0~clkctrl_outclk\,
	d => \U1|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LCCOMB_X1_Y11_N24
\U1|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[1]~1_combout\ = \U1|count\(1) $ (\U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|count\(1),
	datad => \U1|count\(0),
	combout => \U1|count[1]~1_combout\);

-- Location: FF_X1_Y11_N25
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|LessThan0~clkctrl_outclk\,
	d => \U1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LCCOMB_X1_Y11_N20
\U1|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[2]~0_combout\ = \U1|count\(2) $ (((\U1|count\(0) & \U1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(2),
	datac => \U1|count\(0),
	datad => \U1|count\(1),
	combout => \U1|count[2]~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\U1|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[2]~feeder_combout\ = \U1|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|count[2]~0_combout\,
	combout => \U1|count[2]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|LessThan0~clkctrl_outclk\,
	d => \U1|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LCCOMB_X1_Y11_N28
\U1|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~combout\ = LCELL(\U1|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|count\(2),
	combout => \U1|LessThan0~combout\);

-- Location: CLKCTRL_G1
\U1|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N26
\U2|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[0]~2_combout\ = !\U2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|count\(0),
	combout => \U2|count[0]~2_combout\);

-- Location: FF_X33_Y12_N27
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|LessThan0~clkctrl_outclk\,
	d => \U2|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X33_Y12_N2
\U2|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[1]~1_combout\ = \U2|count\(1) $ (\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|count\(1),
	datad => \U2|count\(0),
	combout => \U2|count[1]~1_combout\);

-- Location: FF_X33_Y12_N3
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|LessThan0~clkctrl_outclk\,
	d => \U2|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X33_Y12_N28
\U2|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[2]~0_combout\ = \U2|count\(2) $ (((\U2|count\(0) & \U2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datac => \U2|count\(0),
	datad => \U2|count\(1),
	combout => \U2|count[2]~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\U2|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[2]~feeder_combout\ = \U2|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|count[2]~0_combout\,
	combout => \U2|count[2]~feeder_combout\);

-- Location: FF_X33_Y12_N11
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|LessThan0~clkctrl_outclk\,
	d => \U2|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X33_Y12_N20
\U2|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~combout\ = LCELL(\U2|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|count\(2),
	combout => \U2|LessThan0~combout\);

-- Location: CLKCTRL_G5
\U2|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N26
\U3|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[0]~2_combout\ = !\U3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|count\(0),
	combout => \U3|count[0]~2_combout\);

-- Location: FF_X1_Y10_N27
\U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|LessThan0~clkctrl_outclk\,
	d => \U3|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(0));

-- Location: LCCOMB_X1_Y10_N28
\U3|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[1]~1_combout\ = \U3|count\(1) $ (\U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|count\(1),
	datad => \U3|count\(0),
	combout => \U3|count[1]~1_combout\);

-- Location: FF_X1_Y10_N29
\U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|LessThan0~clkctrl_outclk\,
	d => \U3|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(1));

-- Location: LCCOMB_X1_Y10_N2
\U3|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[2]~0_combout\ = \U3|count\(2) $ (((\U3|count\(0) & \U3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(2),
	datac => \U3|count\(0),
	datad => \U3|count\(1),
	combout => \U3|count[2]~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\U3|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[2]~feeder_combout\ = \U3|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|count[2]~0_combout\,
	combout => \U3|count[2]~feeder_combout\);

-- Location: FF_X1_Y10_N31
\U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|LessThan0~clkctrl_outclk\,
	d => \U3|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(2));

-- Location: LCCOMB_X1_Y10_N20
\U3|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan0~combout\ = LCELL(\U3|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|count\(2),
	combout => \U3|LessThan0~combout\);

-- Location: CLKCTRL_G0
\U3|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y23_N2
\U4|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[0]~2_combout\ = !\U4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|count\(0),
	combout => \U4|count[0]~2_combout\);

-- Location: FF_X18_Y23_N3
\U4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|LessThan0~clkctrl_outclk\,
	d => \U4|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(0));

-- Location: LCCOMB_X18_Y23_N0
\U4|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[1]~1_combout\ = \U4|count\(1) $ (\U4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|count\(1),
	datad => \U4|count\(0),
	combout => \U4|count[1]~1_combout\);

-- Location: FF_X18_Y23_N1
\U4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|LessThan0~clkctrl_outclk\,
	d => \U4|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(1));

-- Location: LCCOMB_X18_Y23_N20
\U4|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[2]~0_combout\ = \U4|count\(2) $ (((\U4|count\(1) & \U4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(1),
	datac => \U4|count\(2),
	datad => \U4|count\(0),
	combout => \U4|count[2]~0_combout\);

-- Location: FF_X18_Y23_N21
\U4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|LessThan0~clkctrl_outclk\,
	d => \U4|count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(2));

ww_outclk <= \outclk~output_o\;
END structure;


