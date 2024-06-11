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

-- DATE "05/09/2024 14:45:48"

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

ENTITY 	Seg_2digit IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	com : BUFFER std_logic_vector(3 DOWNTO 0);
	data_out : BUFFER std_logic_vector(6 DOWNTO 0);
	p : BUFFER std_logic
	);
END Seg_2digit;

-- Design Ports Information
-- com[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Seg_2digit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_com : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_p : std_logic;
SIGNAL \C1|U3|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|U0|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|U2|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|U1|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \com[0]~output_o\ : std_logic;
SIGNAL \com[1]~output_o\ : std_logic;
SIGNAL \com[2]~output_o\ : std_logic;
SIGNAL \com[3]~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \p~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \C1|U0|count[0]~2_combout\ : std_logic;
SIGNAL \C1|U0|count[1]~1_combout\ : std_logic;
SIGNAL \C1|U0|count[2]~0_combout\ : std_logic;
SIGNAL \C1|U0|count[2]~feeder_combout\ : std_logic;
SIGNAL \C1|U0|LessThan0~combout\ : std_logic;
SIGNAL \C1|U0|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|U1|count[0]~2_combout\ : std_logic;
SIGNAL \C1|U1|count[1]~1_combout\ : std_logic;
SIGNAL \C1|U1|count[2]~0_combout\ : std_logic;
SIGNAL \C1|U1|count[2]~feeder_combout\ : std_logic;
SIGNAL \C1|U1|LessThan0~combout\ : std_logic;
SIGNAL \C1|U1|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|U2|count[0]~2_combout\ : std_logic;
SIGNAL \C1|U2|count[1]~1_combout\ : std_logic;
SIGNAL \C1|U2|count[2]~0_combout\ : std_logic;
SIGNAL \C1|U2|count[2]~feeder_combout\ : std_logic;
SIGNAL \C1|U2|LessThan0~combout\ : std_logic;
SIGNAL \C1|U2|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|U3|count[0]~2_combout\ : std_logic;
SIGNAL \C1|U3|count[1]~1_combout\ : std_logic;
SIGNAL \C1|U3|count[2]~0_combout\ : std_logic;
SIGNAL \C1|U3|count[2]~feeder_combout\ : std_logic;
SIGNAL \C1|U3|LessThan0~combout\ : std_logic;
SIGNAL \C1|U3|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|U4|count[0]~2_combout\ : std_logic;
SIGNAL \C1|U4|count[1]~1_combout\ : std_logic;
SIGNAL \C1|U4|count[2]~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \M1|z~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \M1|z~0_combout\ : std_logic;
SIGNAL \M1|z~2_combout\ : std_logic;
SIGNAL \M2|z~1_combout\ : std_logic;
SIGNAL \M2|z~0_combout\ : std_logic;
SIGNAL \M2|z~2_combout\ : std_logic;
SIGNAL \M3|z~1_combout\ : std_logic;
SIGNAL \M3|z~0_combout\ : std_logic;
SIGNAL \M3|z~2_combout\ : std_logic;
SIGNAL \M4|z~1_combout\ : std_logic;
SIGNAL \M4|z~0_combout\ : std_logic;
SIGNAL \M4|z~2_combout\ : std_logic;
SIGNAL \M5|z~1_combout\ : std_logic;
SIGNAL \M5|z~0_combout\ : std_logic;
SIGNAL \M5|z~2_combout\ : std_logic;
SIGNAL \M6|z~1_combout\ : std_logic;
SIGNAL \M6|z~0_combout\ : std_logic;
SIGNAL \M6|z~2_combout\ : std_logic;
SIGNAL \M7|z~0_combout\ : std_logic;
SIGNAL \M7|z~1_combout\ : std_logic;
SIGNAL \M7|z~2_combout\ : std_logic;
SIGNAL \C1|U1|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|U2|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|U3|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|U4|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|U0|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|U4|ALT_INV_count\ : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_a <= a;
ww_b <= b;
ww_clock <= clock;
com <= ww_com;
data_out <= ww_data_out;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C1|U3|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|U3|LessThan0~combout\);

\C1|U0|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|U0|LessThan0~combout\);

\C1|U2|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|U2|LessThan0~combout\);

\C1|U1|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|U1|LessThan0~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\C1|U4|ALT_INV_count\(2) <= NOT \C1|U4|count\(2);

-- Location: IOOBUF_X3_Y0_N2
\com[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => \C1|U4|count\(2),
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
	i => \C1|U4|ALT_INV_count\(2),
	devoe => ww_devoe,
	o => \com[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M4|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M5|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M6|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M7|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\p~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y11_N30
\C1|U0|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U0|count[0]~2_combout\ = !\C1|U0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U0|count\(0),
	combout => \C1|U0|count[0]~2_combout\);

-- Location: FF_X3_Y11_N31
\C1|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \C1|U0|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U0|count\(0));

-- Location: LCCOMB_X3_Y11_N20
\C1|U0|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U0|count[1]~1_combout\ = \C1|U0|count\(1) $ (\C1|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U0|count\(1),
	datad => \C1|U0|count\(0),
	combout => \C1|U0|count[1]~1_combout\);

-- Location: FF_X3_Y11_N21
\C1|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \C1|U0|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U0|count\(1));

-- Location: LCCOMB_X3_Y11_N16
\C1|U0|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U0|count[2]~0_combout\ = \C1|U0|count\(2) $ (((\C1|U0|count\(0) & \C1|U0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|U0|count\(2),
	datac => \C1|U0|count\(0),
	datad => \C1|U0|count\(1),
	combout => \C1|U0|count[2]~0_combout\);

-- Location: LCCOMB_X3_Y11_N24
\C1|U0|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U0|count[2]~feeder_combout\ = \C1|U0|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U0|count[2]~0_combout\,
	combout => \C1|U0|count[2]~feeder_combout\);

-- Location: FF_X3_Y11_N25
\C1|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \C1|U0|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U0|count\(2));

-- Location: LCCOMB_X3_Y11_N2
\C1|U0|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U0|LessThan0~combout\ = LCELL(\C1|U0|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U0|count\(2),
	combout => \C1|U0|LessThan0~combout\);

-- Location: CLKCTRL_G3
\C1|U0|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|U0|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|U0|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N30
\C1|U1|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U1|count[0]~2_combout\ = !\C1|U1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U1|count\(0),
	combout => \C1|U1|count[0]~2_combout\);

-- Location: FF_X2_Y11_N31
\C1|U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U0|LessThan0~clkctrl_outclk\,
	d => \C1|U1|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U1|count\(0));

-- Location: LCCOMB_X2_Y11_N28
\C1|U1|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U1|count[1]~1_combout\ = \C1|U1|count\(1) $ (\C1|U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U1|count\(1),
	datad => \C1|U1|count\(0),
	combout => \C1|U1|count[1]~1_combout\);

-- Location: FF_X2_Y11_N29
\C1|U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U0|LessThan0~clkctrl_outclk\,
	d => \C1|U1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U1|count\(1));

-- Location: LCCOMB_X2_Y11_N24
\C1|U1|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U1|count[2]~0_combout\ = \C1|U1|count\(2) $ (((\C1|U1|count\(0) & \C1|U1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|U1|count\(2),
	datac => \C1|U1|count\(0),
	datad => \C1|U1|count\(1),
	combout => \C1|U1|count[2]~0_combout\);

-- Location: LCCOMB_X2_Y11_N4
\C1|U1|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U1|count[2]~feeder_combout\ = \C1|U1|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U1|count[2]~0_combout\,
	combout => \C1|U1|count[2]~feeder_combout\);

-- Location: FF_X2_Y11_N5
\C1|U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U0|LessThan0~clkctrl_outclk\,
	d => \C1|U1|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U1|count\(2));

-- Location: LCCOMB_X1_Y11_N16
\C1|U1|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U1|LessThan0~combout\ = LCELL(\C1|U1|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U1|count\(2),
	combout => \C1|U1|LessThan0~combout\);

-- Location: CLKCTRL_G4
\C1|U1|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|U1|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|U1|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N22
\C1|U2|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U2|count[0]~2_combout\ = !\C1|U2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U2|count\(0),
	combout => \C1|U2|count[0]~2_combout\);

-- Location: FF_X1_Y11_N23
\C1|U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U1|LessThan0~clkctrl_outclk\,
	d => \C1|U2|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U2|count\(0));

-- Location: LCCOMB_X1_Y11_N24
\C1|U2|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U2|count[1]~1_combout\ = \C1|U2|count\(1) $ (\C1|U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U2|count\(1),
	datad => \C1|U2|count\(0),
	combout => \C1|U2|count[1]~1_combout\);

-- Location: FF_X1_Y11_N25
\C1|U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U1|LessThan0~clkctrl_outclk\,
	d => \C1|U2|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U2|count\(1));

-- Location: LCCOMB_X1_Y11_N18
\C1|U2|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U2|count[2]~0_combout\ = \C1|U2|count\(2) $ (((\C1|U2|count\(0) & \C1|U2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|U2|count\(2),
	datac => \C1|U2|count\(0),
	datad => \C1|U2|count\(1),
	combout => \C1|U2|count[2]~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\C1|U2|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U2|count[2]~feeder_combout\ = \C1|U2|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U2|count[2]~0_combout\,
	combout => \C1|U2|count[2]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\C1|U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U1|LessThan0~clkctrl_outclk\,
	d => \C1|U2|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U2|count\(2));

-- Location: LCCOMB_X1_Y11_N28
\C1|U2|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U2|LessThan0~combout\ = LCELL(\C1|U2|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U2|count\(2),
	combout => \C1|U2|LessThan0~combout\);

-- Location: CLKCTRL_G1
\C1|U2|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|U2|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|U2|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N30
\C1|U3|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U3|count[0]~2_combout\ = !\C1|U3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U3|count\(0),
	combout => \C1|U3|count[0]~2_combout\);

-- Location: FF_X33_Y12_N31
\C1|U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U2|LessThan0~clkctrl_outclk\,
	d => \C1|U3|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U3|count\(0));

-- Location: LCCOMB_X33_Y12_N20
\C1|U3|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U3|count[1]~1_combout\ = \C1|U3|count\(1) $ (\C1|U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U3|count\(1),
	datad => \C1|U3|count\(0),
	combout => \C1|U3|count[1]~1_combout\);

-- Location: FF_X33_Y12_N21
\C1|U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U2|LessThan0~clkctrl_outclk\,
	d => \C1|U3|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U3|count\(1));

-- Location: LCCOMB_X33_Y12_N28
\C1|U3|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U3|count[2]~0_combout\ = \C1|U3|count\(2) $ (((\C1|U3|count\(0) & \C1|U3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|U3|count\(2),
	datac => \C1|U3|count\(0),
	datad => \C1|U3|count\(1),
	combout => \C1|U3|count[2]~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\C1|U3|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U3|count[2]~feeder_combout\ = \C1|U3|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U3|count[2]~0_combout\,
	combout => \C1|U3|count[2]~feeder_combout\);

-- Location: FF_X33_Y12_N11
\C1|U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U2|LessThan0~clkctrl_outclk\,
	d => \C1|U3|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U3|count\(2));

-- Location: LCCOMB_X33_Y12_N24
\C1|U3|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U3|LessThan0~combout\ = LCELL(\C1|U3|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|U3|count\(2),
	combout => \C1|U3|LessThan0~combout\);

-- Location: CLKCTRL_G9
\C1|U3|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|U3|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|U3|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y2_N2
\C1|U4|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U4|count[0]~2_combout\ = !\C1|U4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U4|count\(0),
	combout => \C1|U4|count[0]~2_combout\);

-- Location: FF_X16_Y2_N3
\C1|U4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U3|LessThan0~clkctrl_outclk\,
	d => \C1|U4|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U4|count\(0));

-- Location: LCCOMB_X16_Y2_N0
\C1|U4|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U4|count[1]~1_combout\ = \C1|U4|count\(1) $ (\C1|U4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|U4|count\(1),
	datad => \C1|U4|count\(0),
	combout => \C1|U4|count[1]~1_combout\);

-- Location: FF_X16_Y2_N1
\C1|U4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U3|LessThan0~clkctrl_outclk\,
	d => \C1|U4|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U4|count\(1));

-- Location: LCCOMB_X16_Y2_N16
\C1|U4|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|U4|count[2]~0_combout\ = \C1|U4|count\(2) $ (((\C1|U4|count\(1) & \C1|U4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|U4|count\(1),
	datac => \C1|U4|count\(2),
	datad => \C1|U4|count\(0),
	combout => \C1|U4|count[2]~0_combout\);

-- Location: FF_X16_Y2_N17
\C1|U4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|U3|LessThan0~clkctrl_outclk\,
	d => \C1|U4|count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|U4|count\(2));

-- Location: IOIBUF_X16_Y24_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X17_Y20_N4
\M1|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|z~1_combout\ = (\a[2]~input_o\ & (!\a[1]~input_o\ & (\a[0]~input_o\ $ (!\a[3]~input_o\)))) # (!\a[2]~input_o\ & (\a[0]~input_o\ & (\a[1]~input_o\ $ (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M1|z~1_combout\);

-- Location: IOIBUF_X23_Y24_N1
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X21_Y3_N20
\M1|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|z~0_combout\ = (\b[2]~input_o\ & (!\b[1]~input_o\ & (\b[3]~input_o\ $ (!\b[0]~input_o\)))) # (!\b[2]~input_o\ & (\b[0]~input_o\ & (\b[1]~input_o\ $ (!\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M1|z~0_combout\);

-- Location: LCCOMB_X21_Y3_N10
\M1|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M1|z~2_combout\ = (\C1|U4|count\(2) & ((!\M1|z~0_combout\))) # (!\C1|U4|count\(2) & (!\M1|z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1|z~1_combout\,
	datac => \C1|U4|count\(2),
	datad => \M1|z~0_combout\,
	combout => \M1|z~2_combout\);

-- Location: LCCOMB_X17_Y20_N2
\M2|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|z~1_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & ((!\a[3]~input_o\))) # (!\a[0]~input_o\ & (!\a[2]~input_o\)))) # (!\a[1]~input_o\ & ((\a[0]~input_o\ $ (!\a[3]~input_o\)) # (!\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M2|z~1_combout\);

-- Location: LCCOMB_X21_Y3_N12
\M2|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|z~0_combout\ = (\b[1]~input_o\ & ((\b[0]~input_o\ & ((!\b[3]~input_o\))) # (!\b[0]~input_o\ & (!\b[2]~input_o\)))) # (!\b[1]~input_o\ & ((\b[3]~input_o\ $ (!\b[0]~input_o\)) # (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M2|z~0_combout\);

-- Location: LCCOMB_X18_Y3_N28
\M2|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|z~2_combout\ = (\C1|U4|count\(2) & ((\M2|z~0_combout\))) # (!\C1|U4|count\(2) & (\M2|z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2|z~1_combout\,
	datac => \C1|U4|count\(2),
	datad => \M2|z~0_combout\,
	combout => \M2|z~2_combout\);

-- Location: LCCOMB_X17_Y20_N28
\M3|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|z~1_combout\ = (\a[2]~input_o\ & (((\a[0]~input_o\ & !\a[1]~input_o\)) # (!\a[3]~input_o\))) # (!\a[2]~input_o\ & ((\a[0]~input_o\) # ((\a[3]~input_o\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M3|z~1_combout\);

-- Location: LCCOMB_X21_Y3_N14
\M3|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|z~0_combout\ = (\b[2]~input_o\ & (((!\b[1]~input_o\ & \b[0]~input_o\)) # (!\b[3]~input_o\))) # (!\b[2]~input_o\ & (((\b[3]~input_o\) # (\b[0]~input_o\)) # (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M3|z~0_combout\);

-- Location: LCCOMB_X18_Y3_N26
\M3|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M3|z~2_combout\ = (\C1|U4|count\(2) & ((\M3|z~0_combout\))) # (!\C1|U4|count\(2) & (\M3|z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3|z~1_combout\,
	datac => \C1|U4|count\(2),
	datad => \M3|z~0_combout\,
	combout => \M3|z~2_combout\);

-- Location: LCCOMB_X17_Y20_N30
\M4|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|z~1_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & (\a[2]~input_o\)) # (!\a[0]~input_o\ & (!\a[2]~input_o\ & \a[3]~input_o\)))) # (!\a[1]~input_o\ & (!\a[3]~input_o\ & (\a[0]~input_o\ $ (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M4|z~1_combout\);

-- Location: LCCOMB_X21_Y3_N24
\M4|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|z~0_combout\ = (\b[1]~input_o\ & ((\b[2]~input_o\ & ((\b[0]~input_o\))) # (!\b[2]~input_o\ & (\b[3]~input_o\ & !\b[0]~input_o\)))) # (!\b[1]~input_o\ & (!\b[3]~input_o\ & (\b[2]~input_o\ $ (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M4|z~0_combout\);

-- Location: LCCOMB_X18_Y3_N4
\M4|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|z~2_combout\ = (\C1|U4|count\(2) & ((!\M4|z~0_combout\))) # (!\C1|U4|count\(2) & (!\M4|z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4|z~1_combout\,
	datac => \C1|U4|count\(2),
	datad => \M4|z~0_combout\,
	combout => \M4|z~2_combout\);

-- Location: LCCOMB_X17_Y20_N12
\M5|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|z~1_combout\ = (\a[1]~input_o\ & (((\a[3]~input_o\)) # (!\a[0]~input_o\))) # (!\a[1]~input_o\ & ((\a[2]~input_o\ & ((\a[3]~input_o\))) # (!\a[2]~input_o\ & (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M5|z~1_combout\);

-- Location: LCCOMB_X21_Y3_N2
\M5|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|z~0_combout\ = (\b[1]~input_o\ & (((\b[3]~input_o\) # (!\b[0]~input_o\)))) # (!\b[1]~input_o\ & ((\b[2]~input_o\ & (\b[3]~input_o\)) # (!\b[2]~input_o\ & ((!\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M5|z~0_combout\);

-- Location: LCCOMB_X18_Y3_N10
\M5|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|z~2_combout\ = (\C1|U4|count\(2) & ((\M5|z~0_combout\))) # (!\C1|U4|count\(2) & (\M5|z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|U4|count\(2),
	datab => \M5|z~1_combout\,
	datac => \M5|z~0_combout\,
	combout => \M5|z~2_combout\);

-- Location: LCCOMB_X17_Y20_N10
\M6|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|z~1_combout\ = (\a[1]~input_o\ & (((\a[2]~input_o\) # (\a[3]~input_o\)))) # (!\a[1]~input_o\ & ((\a[2]~input_o\ $ (\a[3]~input_o\)) # (!\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M6|z~1_combout\);

-- Location: LCCOMB_X21_Y3_N0
\M6|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|z~0_combout\ = (\b[1]~input_o\ & ((\b[2]~input_o\) # ((\b[3]~input_o\)))) # (!\b[1]~input_o\ & ((\b[2]~input_o\ $ (\b[3]~input_o\)) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M6|z~0_combout\);

-- Location: LCCOMB_X21_Y3_N26
\M6|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M6|z~2_combout\ = (\C1|U4|count\(2) & ((\M6|z~0_combout\))) # (!\C1|U4|count\(2) & (\M6|z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M6|z~1_combout\,
	datac => \C1|U4|count\(2),
	datad => \M6|z~0_combout\,
	combout => \M6|z~2_combout\);

-- Location: LCCOMB_X17_Y20_N20
\M7|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M7|z~0_combout\ = (\a[0]~input_o\ & ((\a[3]~input_o\) # (\a[1]~input_o\ $ (\a[2]~input_o\)))) # (!\a[0]~input_o\ & ((\a[1]~input_o\) # (\a[2]~input_o\ $ (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \M7|z~0_combout\);

-- Location: LCCOMB_X21_Y3_N28
\M7|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M7|z~1_combout\ = (\b[0]~input_o\ & ((\b[3]~input_o\) # (\b[2]~input_o\ $ (\b[1]~input_o\)))) # (!\b[0]~input_o\ & ((\b[1]~input_o\) # (\b[2]~input_o\ $ (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \M7|z~1_combout\);

-- Location: LCCOMB_X21_Y3_N22
\M7|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M7|z~2_combout\ = (\C1|U4|count\(2) & ((\M7|z~1_combout\))) # (!\C1|U4|count\(2) & (\M7|z~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M7|z~0_combout\,
	datac => \C1|U4|count\(2),
	datad => \M7|z~1_combout\,
	combout => \M7|z~2_combout\);

ww_com(0) <= \com[0]~output_o\;

ww_com(1) <= \com[1]~output_o\;

ww_com(2) <= \com[2]~output_o\;

ww_com(3) <= \com[3]~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_p <= \p~output_o\;
END structure;


