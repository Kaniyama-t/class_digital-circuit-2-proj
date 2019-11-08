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

-- DATE "11/08/2019 09:28:25"

-- 
-- Device: Altera 5M570ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	scounter IS
    PORT (
	CLK : IN std_logic;
	nRST : IN std_logic;
	COUNT : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END scounter;

-- Design Ports Information
-- COUNT[0]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[1]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[2]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[3]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nRST	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF scounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_nRST : std_logic;
SIGNAL ww_COUNT : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \nRST~combout\ : std_logic;
SIGNAL \U0|cnt_tmp[0]~49\ : std_logic;
SIGNAL \U0|cnt_tmp[0]~49COUT1_71\ : std_logic;
SIGNAL \U0|cnt_tmp[1]~47\ : std_logic;
SIGNAL \U0|cnt_tmp[2]~45\ : std_logic;
SIGNAL \U0|cnt_tmp[2]~45COUT1_73\ : std_logic;
SIGNAL \U0|cnt_tmp[3]~43\ : std_logic;
SIGNAL \U0|cnt_tmp[3]~43COUT1_75\ : std_logic;
SIGNAL \U0|cnt_tmp[4]~41\ : std_logic;
SIGNAL \U0|cnt_tmp[4]~41COUT1_77\ : std_logic;
SIGNAL \U0|cnt_tmp[5]~39\ : std_logic;
SIGNAL \U0|cnt_tmp[5]~39COUT1_79\ : std_logic;
SIGNAL \U0|cnt_tmp[6]~15\ : std_logic;
SIGNAL \U0|cnt_tmp[7]~17\ : std_logic;
SIGNAL \U0|cnt_tmp[7]~17COUT1_81\ : std_logic;
SIGNAL \U0|cnt_tmp[8]~19\ : std_logic;
SIGNAL \U0|cnt_tmp[8]~19COUT1_83\ : std_logic;
SIGNAL \U0|cnt_tmp[9]~21\ : std_logic;
SIGNAL \U0|cnt_tmp[9]~21COUT1_85\ : std_logic;
SIGNAL \U0|cnt_tmp[10]~23\ : std_logic;
SIGNAL \U0|cnt_tmp[10]~23COUT1_87\ : std_logic;
SIGNAL \U0|cnt_tmp[11]~7\ : std_logic;
SIGNAL \U0|cnt_tmp[12]~9\ : std_logic;
SIGNAL \U0|cnt_tmp[12]~9COUT1_89\ : std_logic;
SIGNAL \U0|cnt_tmp[13]~11\ : std_logic;
SIGNAL \U0|cnt_tmp[13]~11COUT1_91\ : std_logic;
SIGNAL \U0|cnt_tmp[14]~13\ : std_logic;
SIGNAL \U0|cnt_tmp[14]~13COUT1_93\ : std_logic;
SIGNAL \U0|cnt_tmp[15]~1\ : std_logic;
SIGNAL \U0|cnt_tmp[15]~1COUT1_95\ : std_logic;
SIGNAL \U0|cnt_tmp[16]~25\ : std_logic;
SIGNAL \U0|cnt_tmp[17]~3\ : std_logic;
SIGNAL \U0|cnt_tmp[17]~3COUT1_97\ : std_logic;
SIGNAL \U0|cnt_tmp[18]~27\ : std_logic;
SIGNAL \U0|cnt_tmp[18]~27COUT1_99\ : std_logic;
SIGNAL \U0|cnt_tmp[19]~29\ : std_logic;
SIGNAL \U0|cnt_tmp[19]~29COUT1_101\ : std_logic;
SIGNAL \U0|cnt_tmp[20]~31\ : std_logic;
SIGNAL \U0|cnt_tmp[20]~31COUT1_103\ : std_logic;
SIGNAL \U0|cnt_tmp[21]~33\ : std_logic;
SIGNAL \U0|cnt_tmp[22]~35\ : std_logic;
SIGNAL \U0|cnt_tmp[22]~35COUT1_105\ : std_logic;
SIGNAL \U0|cnt_tmp[23]~5\ : std_logic;
SIGNAL \U0|cnt_tmp[23]~5COUT1_107\ : std_logic;
SIGNAL \U0|LessThan0~4_combout\ : std_logic;
SIGNAL \U0|LessThan0~5_combout\ : std_logic;
SIGNAL \U0|LessThan0~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~2_combout\ : std_logic;
SIGNAL \U0|LessThan0~1_combout\ : std_logic;
SIGNAL \U0|LessThan0~3_combout\ : std_logic;
SIGNAL \U0|LessThan0~6_combout\ : std_logic;
SIGNAL \U0|CO~regout\ : std_logic;
SIGNAL \U0|cnt_tmp\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U1|cnt_tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_nRST~combout\ : std_logic;
SIGNAL \U1|ALT_INV_cnt_tmp\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_nRST <= nRST;
COUNT <= ww_COUNT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U0|ALT_INV_LessThan0~6_combout\ <= NOT \U0|LessThan0~6_combout\;
\ALT_INV_nRST~combout\ <= NOT \nRST~combout\;
\U1|ALT_INV_cnt_tmp\(3) <= NOT \U1|cnt_tmp\(3);
\U1|ALT_INV_cnt_tmp\(2) <= NOT \U1|cnt_tmp\(2);
\U1|ALT_INV_cnt_tmp\(1) <= NOT \U1|cnt_tmp\(1);
\U1|ALT_INV_cnt_tmp\(0) <= NOT \U1|cnt_tmp\(0);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nRST,
	combout => \nRST~combout\);

-- Location: LC_X10_Y2_N3
\U0|cnt_tmp[0]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(0) = DFFEAS((!\U0|cnt_tmp\(0)), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[0]~49\ = CARRY((\U0|cnt_tmp\(0)))
-- \U0|cnt_tmp[0]~49COUT1_71\ = CARRY((\U0|cnt_tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(0),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(0),
	cout0 => \U0|cnt_tmp[0]~49\,
	cout1 => \U0|cnt_tmp[0]~49COUT1_71\);

-- Location: LC_X10_Y2_N4
\U0|cnt_tmp[1]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(1) = DFFEAS(\U0|cnt_tmp\(1) $ ((((\U0|cnt_tmp[0]~49\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[1]~47\ = CARRY(((!\U0|cnt_tmp[0]~49COUT1_71\)) # (!\U0|cnt_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(1),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin0 => \U0|cnt_tmp[0]~49\,
	cin1 => \U0|cnt_tmp[0]~49COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(1),
	cout => \U0|cnt_tmp[1]~47\);

-- Location: LC_X10_Y2_N5
\U0|cnt_tmp[2]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(2) = DFFEAS(\U0|cnt_tmp\(2) $ ((((!\U0|cnt_tmp[1]~47\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[2]~45\ = CARRY((\U0|cnt_tmp\(2) & ((!\U0|cnt_tmp[1]~47\))))
-- \U0|cnt_tmp[2]~45COUT1_73\ = CARRY((\U0|cnt_tmp\(2) & ((!\U0|cnt_tmp[1]~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(2),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[1]~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(2),
	cout0 => \U0|cnt_tmp[2]~45\,
	cout1 => \U0|cnt_tmp[2]~45COUT1_73\);

-- Location: LC_X10_Y2_N6
\U0|cnt_tmp[3]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(3) = DFFEAS(\U0|cnt_tmp\(3) $ (((((!\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[2]~45\) # (\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[2]~45COUT1_73\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[3]~43\ = CARRY(((!\U0|cnt_tmp[2]~45\)) # (!\U0|cnt_tmp\(3)))
-- \U0|cnt_tmp[3]~43COUT1_75\ = CARRY(((!\U0|cnt_tmp[2]~45COUT1_73\)) # (!\U0|cnt_tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(3),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[1]~47\,
	cin0 => \U0|cnt_tmp[2]~45\,
	cin1 => \U0|cnt_tmp[2]~45COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(3),
	cout0 => \U0|cnt_tmp[3]~43\,
	cout1 => \U0|cnt_tmp[3]~43COUT1_75\);

-- Location: LC_X10_Y2_N7
\U0|cnt_tmp[4]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(4) = DFFEAS((\U0|cnt_tmp\(4) $ ((!(!\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[3]~43\) # (\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[3]~43COUT1_75\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[4]~41\ = CARRY(((\U0|cnt_tmp\(4) & !\U0|cnt_tmp[3]~43\)))
-- \U0|cnt_tmp[4]~41COUT1_77\ = CARRY(((\U0|cnt_tmp\(4) & !\U0|cnt_tmp[3]~43COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(4),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[1]~47\,
	cin0 => \U0|cnt_tmp[3]~43\,
	cin1 => \U0|cnt_tmp[3]~43COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(4),
	cout0 => \U0|cnt_tmp[4]~41\,
	cout1 => \U0|cnt_tmp[4]~41COUT1_77\);

-- Location: LC_X10_Y2_N8
\U0|cnt_tmp[5]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(5) = DFFEAS(\U0|cnt_tmp\(5) $ (((((!\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[4]~41\) # (\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[4]~41COUT1_77\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[5]~39\ = CARRY(((!\U0|cnt_tmp[4]~41\)) # (!\U0|cnt_tmp\(5)))
-- \U0|cnt_tmp[5]~39COUT1_79\ = CARRY(((!\U0|cnt_tmp[4]~41COUT1_77\)) # (!\U0|cnt_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(5),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[1]~47\,
	cin0 => \U0|cnt_tmp[4]~41\,
	cin1 => \U0|cnt_tmp[4]~41COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(5),
	cout0 => \U0|cnt_tmp[5]~39\,
	cout1 => \U0|cnt_tmp[5]~39COUT1_79\);

-- Location: LC_X10_Y2_N9
\U0|cnt_tmp[6]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(6) = DFFEAS((\U0|cnt_tmp\(6) $ ((!(!\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[5]~39\) # (\U0|cnt_tmp[1]~47\ & \U0|cnt_tmp[5]~39COUT1_79\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[6]~15\ = CARRY(((\U0|cnt_tmp\(6) & !\U0|cnt_tmp[5]~39COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(6),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[1]~47\,
	cin0 => \U0|cnt_tmp[5]~39\,
	cin1 => \U0|cnt_tmp[5]~39COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(6),
	cout => \U0|cnt_tmp[6]~15\);

-- Location: LC_X11_Y2_N0
\U0|cnt_tmp[7]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(7) = DFFEAS((\U0|cnt_tmp\(7) $ ((\U0|cnt_tmp[6]~15\))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[7]~17\ = CARRY(((!\U0|cnt_tmp[6]~15\) # (!\U0|cnt_tmp\(7))))
-- \U0|cnt_tmp[7]~17COUT1_81\ = CARRY(((!\U0|cnt_tmp[6]~15\) # (!\U0|cnt_tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(7),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[6]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(7),
	cout0 => \U0|cnt_tmp[7]~17\,
	cout1 => \U0|cnt_tmp[7]~17COUT1_81\);

-- Location: LC_X11_Y2_N1
\U0|cnt_tmp[8]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(8) = DFFEAS((\U0|cnt_tmp\(8) $ ((!(!\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[7]~17\) # (\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[7]~17COUT1_81\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[8]~19\ = CARRY(((\U0|cnt_tmp\(8) & !\U0|cnt_tmp[7]~17\)))
-- \U0|cnt_tmp[8]~19COUT1_83\ = CARRY(((\U0|cnt_tmp\(8) & !\U0|cnt_tmp[7]~17COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(8),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[6]~15\,
	cin0 => \U0|cnt_tmp[7]~17\,
	cin1 => \U0|cnt_tmp[7]~17COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(8),
	cout0 => \U0|cnt_tmp[8]~19\,
	cout1 => \U0|cnt_tmp[8]~19COUT1_83\);

-- Location: LC_X11_Y2_N2
\U0|cnt_tmp[9]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(9) = DFFEAS((\U0|cnt_tmp\(9) $ (((!\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[8]~19\) # (\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[8]~19COUT1_83\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[9]~21\ = CARRY(((!\U0|cnt_tmp[8]~19\) # (!\U0|cnt_tmp\(9))))
-- \U0|cnt_tmp[9]~21COUT1_85\ = CARRY(((!\U0|cnt_tmp[8]~19COUT1_83\) # (!\U0|cnt_tmp\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(9),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[6]~15\,
	cin0 => \U0|cnt_tmp[8]~19\,
	cin1 => \U0|cnt_tmp[8]~19COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(9),
	cout0 => \U0|cnt_tmp[9]~21\,
	cout1 => \U0|cnt_tmp[9]~21COUT1_85\);

-- Location: LC_X11_Y2_N3
\U0|cnt_tmp[10]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(10) = DFFEAS(\U0|cnt_tmp\(10) $ ((((!(!\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[9]~21\) # (\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[9]~21COUT1_85\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[10]~23\ = CARRY((\U0|cnt_tmp\(10) & ((!\U0|cnt_tmp[9]~21\))))
-- \U0|cnt_tmp[10]~23COUT1_87\ = CARRY((\U0|cnt_tmp\(10) & ((!\U0|cnt_tmp[9]~21COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(10),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[6]~15\,
	cin0 => \U0|cnt_tmp[9]~21\,
	cin1 => \U0|cnt_tmp[9]~21COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(10),
	cout0 => \U0|cnt_tmp[10]~23\,
	cout1 => \U0|cnt_tmp[10]~23COUT1_87\);

-- Location: LC_X11_Y2_N4
\U0|cnt_tmp[11]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(11) = DFFEAS(\U0|cnt_tmp\(11) $ (((((!\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[10]~23\) # (\U0|cnt_tmp[6]~15\ & \U0|cnt_tmp[10]~23COUT1_87\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[11]~7\ = CARRY(((!\U0|cnt_tmp[10]~23COUT1_87\)) # (!\U0|cnt_tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(11),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[6]~15\,
	cin0 => \U0|cnt_tmp[10]~23\,
	cin1 => \U0|cnt_tmp[10]~23COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(11),
	cout => \U0|cnt_tmp[11]~7\);

-- Location: LC_X11_Y2_N5
\U0|cnt_tmp[12]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(12) = DFFEAS(\U0|cnt_tmp\(12) $ ((((!\U0|cnt_tmp[11]~7\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[12]~9\ = CARRY((\U0|cnt_tmp\(12) & ((!\U0|cnt_tmp[11]~7\))))
-- \U0|cnt_tmp[12]~9COUT1_89\ = CARRY((\U0|cnt_tmp\(12) & ((!\U0|cnt_tmp[11]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(12),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[11]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(12),
	cout0 => \U0|cnt_tmp[12]~9\,
	cout1 => \U0|cnt_tmp[12]~9COUT1_89\);

-- Location: LC_X11_Y2_N6
\U0|cnt_tmp[13]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(13) = DFFEAS(\U0|cnt_tmp\(13) $ (((((!\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[12]~9\) # (\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[12]~9COUT1_89\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[13]~11\ = CARRY(((!\U0|cnt_tmp[12]~9\)) # (!\U0|cnt_tmp\(13)))
-- \U0|cnt_tmp[13]~11COUT1_91\ = CARRY(((!\U0|cnt_tmp[12]~9COUT1_89\)) # (!\U0|cnt_tmp\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(13),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[11]~7\,
	cin0 => \U0|cnt_tmp[12]~9\,
	cin1 => \U0|cnt_tmp[12]~9COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(13),
	cout0 => \U0|cnt_tmp[13]~11\,
	cout1 => \U0|cnt_tmp[13]~11COUT1_91\);

-- Location: LC_X11_Y2_N7
\U0|cnt_tmp[14]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(14) = DFFEAS((\U0|cnt_tmp\(14) $ ((!(!\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[13]~11\) # (\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[13]~11COUT1_91\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[14]~13\ = CARRY(((\U0|cnt_tmp\(14) & !\U0|cnt_tmp[13]~11\)))
-- \U0|cnt_tmp[14]~13COUT1_93\ = CARRY(((\U0|cnt_tmp\(14) & !\U0|cnt_tmp[13]~11COUT1_91\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(14),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[11]~7\,
	cin0 => \U0|cnt_tmp[13]~11\,
	cin1 => \U0|cnt_tmp[13]~11COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(14),
	cout0 => \U0|cnt_tmp[14]~13\,
	cout1 => \U0|cnt_tmp[14]~13COUT1_93\);

-- Location: LC_X11_Y2_N8
\U0|cnt_tmp[15]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(15) = DFFEAS(\U0|cnt_tmp\(15) $ (((((!\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[14]~13\) # (\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[14]~13COUT1_93\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[15]~1\ = CARRY(((!\U0|cnt_tmp[14]~13\)) # (!\U0|cnt_tmp\(15)))
-- \U0|cnt_tmp[15]~1COUT1_95\ = CARRY(((!\U0|cnt_tmp[14]~13COUT1_93\)) # (!\U0|cnt_tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(15),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[11]~7\,
	cin0 => \U0|cnt_tmp[14]~13\,
	cin1 => \U0|cnt_tmp[14]~13COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(15),
	cout0 => \U0|cnt_tmp[15]~1\,
	cout1 => \U0|cnt_tmp[15]~1COUT1_95\);

-- Location: LC_X11_Y2_N9
\U0|cnt_tmp[16]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(16) = DFFEAS((\U0|cnt_tmp\(16) $ ((!(!\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[15]~1\) # (\U0|cnt_tmp[11]~7\ & \U0|cnt_tmp[15]~1COUT1_95\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[16]~25\ = CARRY(((\U0|cnt_tmp\(16) & !\U0|cnt_tmp[15]~1COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(16),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[11]~7\,
	cin0 => \U0|cnt_tmp[15]~1\,
	cin1 => \U0|cnt_tmp[15]~1COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(16),
	cout => \U0|cnt_tmp[16]~25\);

-- Location: LC_X12_Y2_N0
\U0|cnt_tmp[17]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(17) = DFFEAS((\U0|cnt_tmp\(17) $ ((\U0|cnt_tmp[16]~25\))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[17]~3\ = CARRY(((!\U0|cnt_tmp[16]~25\) # (!\U0|cnt_tmp\(17))))
-- \U0|cnt_tmp[17]~3COUT1_97\ = CARRY(((!\U0|cnt_tmp[16]~25\) # (!\U0|cnt_tmp\(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(17),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[16]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(17),
	cout0 => \U0|cnt_tmp[17]~3\,
	cout1 => \U0|cnt_tmp[17]~3COUT1_97\);

-- Location: LC_X12_Y2_N1
\U0|cnt_tmp[18]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(18) = DFFEAS((\U0|cnt_tmp\(18) $ ((!(!\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[17]~3\) # (\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[17]~3COUT1_97\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[18]~27\ = CARRY(((\U0|cnt_tmp\(18) & !\U0|cnt_tmp[17]~3\)))
-- \U0|cnt_tmp[18]~27COUT1_99\ = CARRY(((\U0|cnt_tmp\(18) & !\U0|cnt_tmp[17]~3COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(18),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[16]~25\,
	cin0 => \U0|cnt_tmp[17]~3\,
	cin1 => \U0|cnt_tmp[17]~3COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(18),
	cout0 => \U0|cnt_tmp[18]~27\,
	cout1 => \U0|cnt_tmp[18]~27COUT1_99\);

-- Location: LC_X12_Y2_N2
\U0|cnt_tmp[19]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(19) = DFFEAS((\U0|cnt_tmp\(19) $ (((!\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[18]~27\) # (\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[18]~27COUT1_99\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[19]~29\ = CARRY(((!\U0|cnt_tmp[18]~27\) # (!\U0|cnt_tmp\(19))))
-- \U0|cnt_tmp[19]~29COUT1_101\ = CARRY(((!\U0|cnt_tmp[18]~27COUT1_99\) # (!\U0|cnt_tmp\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(19),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[16]~25\,
	cin0 => \U0|cnt_tmp[18]~27\,
	cin1 => \U0|cnt_tmp[18]~27COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(19),
	cout0 => \U0|cnt_tmp[19]~29\,
	cout1 => \U0|cnt_tmp[19]~29COUT1_101\);

-- Location: LC_X12_Y2_N3
\U0|cnt_tmp[20]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(20) = DFFEAS(\U0|cnt_tmp\(20) $ ((((!(!\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[19]~29\) # (\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[19]~29COUT1_101\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[20]~31\ = CARRY((\U0|cnt_tmp\(20) & ((!\U0|cnt_tmp[19]~29\))))
-- \U0|cnt_tmp[20]~31COUT1_103\ = CARRY((\U0|cnt_tmp\(20) & ((!\U0|cnt_tmp[19]~29COUT1_101\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(20),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[16]~25\,
	cin0 => \U0|cnt_tmp[19]~29\,
	cin1 => \U0|cnt_tmp[19]~29COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(20),
	cout0 => \U0|cnt_tmp[20]~31\,
	cout1 => \U0|cnt_tmp[20]~31COUT1_103\);

-- Location: LC_X12_Y2_N4
\U0|cnt_tmp[21]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(21) = DFFEAS((\U0|cnt_tmp\(21) $ (((!\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[20]~31\) # (\U0|cnt_tmp[16]~25\ & \U0|cnt_tmp[20]~31COUT1_103\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[21]~33\ = CARRY(((!\U0|cnt_tmp[20]~31COUT1_103\) # (!\U0|cnt_tmp\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(21),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[16]~25\,
	cin0 => \U0|cnt_tmp[20]~31\,
	cin1 => \U0|cnt_tmp[20]~31COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(21),
	cout => \U0|cnt_tmp[21]~33\);

-- Location: LC_X12_Y2_N5
\U0|cnt_tmp[22]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(22) = DFFEAS(\U0|cnt_tmp\(22) $ ((((!\U0|cnt_tmp[21]~33\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[22]~35\ = CARRY((\U0|cnt_tmp\(22) & ((!\U0|cnt_tmp[21]~33\))))
-- \U0|cnt_tmp[22]~35COUT1_105\ = CARRY((\U0|cnt_tmp\(22) & ((!\U0|cnt_tmp[21]~33\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(22),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[21]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(22),
	cout0 => \U0|cnt_tmp[22]~35\,
	cout1 => \U0|cnt_tmp[22]~35COUT1_105\);

-- Location: LC_X12_Y2_N6
\U0|cnt_tmp[23]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(23) = DFFEAS(\U0|cnt_tmp\(23) $ (((((!\U0|cnt_tmp[21]~33\ & \U0|cnt_tmp[22]~35\) # (\U0|cnt_tmp[21]~33\ & \U0|cnt_tmp[22]~35COUT1_105\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )
-- \U0|cnt_tmp[23]~5\ = CARRY(((!\U0|cnt_tmp[22]~35\)) # (!\U0|cnt_tmp\(23)))
-- \U0|cnt_tmp[23]~5COUT1_107\ = CARRY(((!\U0|cnt_tmp[22]~35COUT1_105\)) # (!\U0|cnt_tmp\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U0|cnt_tmp\(23),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[21]~33\,
	cin0 => \U0|cnt_tmp[22]~35\,
	cin1 => \U0|cnt_tmp[22]~35COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(23),
	cout0 => \U0|cnt_tmp[23]~5\,
	cout1 => \U0|cnt_tmp[23]~5COUT1_107\);

-- Location: LC_X12_Y2_N7
\U0|cnt_tmp[24]\ : maxv_lcell
-- Equation(s):
-- \U0|cnt_tmp\(24) = DFFEAS((\U0|cnt_tmp\(24) $ ((!(!\U0|cnt_tmp[21]~33\ & \U0|cnt_tmp[23]~5\) # (\U0|cnt_tmp[21]~33\ & \U0|cnt_tmp[23]~5COUT1_107\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\U0|LessThan0~6_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U0|cnt_tmp\(24),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \U0|ALT_INV_LessThan0~6_combout\,
	cin => \U0|cnt_tmp[21]~33\,
	cin0 => \U0|cnt_tmp[23]~5\,
	cin1 => \U0|cnt_tmp[23]~5COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|cnt_tmp\(24));

-- Location: LC_X12_Y2_N8
\U0|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~4_combout\ = (((!\U0|cnt_tmp\(16) & !\U0|cnt_tmp\(17))) # (!\U0|cnt_tmp\(19))) # (!\U0|cnt_tmp\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "37ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_tmp\(16),
	datab => \U0|cnt_tmp\(18),
	datac => \U0|cnt_tmp\(17),
	datad => \U0|cnt_tmp\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~4_combout\);

-- Location: LC_X12_Y2_N9
\U0|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~5_combout\ = (((\U0|LessThan0~4_combout\) # (!\U0|cnt_tmp\(22))) # (!\U0|cnt_tmp\(21))) # (!\U0|cnt_tmp\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_tmp\(20),
	datab => \U0|cnt_tmp\(21),
	datac => \U0|cnt_tmp\(22),
	datad => \U0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~5_combout\);

-- Location: LC_X10_Y2_N0
\U0|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~0_combout\ = ((!\U0|cnt_tmp\(15) & (!\U0|cnt_tmp\(17) & !\U0|cnt_tmp\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|cnt_tmp\(15),
	datac => \U0|cnt_tmp\(17),
	datad => \U0|cnt_tmp\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~0_combout\);

-- Location: LC_X11_Y3_N9
\U0|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~2_combout\ = (!\U0|cnt_tmp\(7) & (!\U0|cnt_tmp\(8) & (!\U0|cnt_tmp\(9) & !\U0|cnt_tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_tmp\(7),
	datab => \U0|cnt_tmp\(8),
	datac => \U0|cnt_tmp\(9),
	datad => \U0|cnt_tmp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~2_combout\);

-- Location: LC_X11_Y3_N2
\U0|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~1_combout\ = (((!\U0|cnt_tmp\(11)) # (!\U0|cnt_tmp\(14))) # (!\U0|cnt_tmp\(12))) # (!\U0|cnt_tmp\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_tmp\(13),
	datab => \U0|cnt_tmp\(12),
	datac => \U0|cnt_tmp\(14),
	datad => \U0|cnt_tmp\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~1_combout\);

-- Location: LC_X10_Y2_N1
\U0|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~3_combout\ = (\U0|LessThan0~0_combout\ & ((\U0|LessThan0~1_combout\) # ((!\U0|cnt_tmp\(10) & \U0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_tmp\(10),
	datab => \U0|LessThan0~0_combout\,
	datac => \U0|LessThan0~2_combout\,
	datad => \U0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~3_combout\);

-- Location: LC_X10_Y2_N2
\U0|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \U0|LessThan0~6_combout\ = ((\U0|LessThan0~3_combout\) # ((!\U0|cnt_tmp\(23) & \U0|LessThan0~5_combout\))) # (!\U0|cnt_tmp\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff75",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_tmp\(24),
	datab => \U0|cnt_tmp\(23),
	datac => \U0|LessThan0~5_combout\,
	datad => \U0|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~6_combout\);

-- Location: LC_X10_Y3_N2
\U0|CO\ : maxv_lcell
-- Equation(s):
-- \U0|CO~regout\ = DFFEAS((((!\U0|LessThan0~6_combout\))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \U0|LessThan0~6_combout\,
	aclr => \ALT_INV_nRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|CO~regout\);

-- Location: LC_X8_Y7_N6
\U1|cnt_tmp[2]\ : maxv_lcell
-- Equation(s):
-- \U1|cnt_tmp\(2) = DFFEAS((!\U1|cnt_tmp\(3) & (\U1|cnt_tmp\(2) $ (((\U1|cnt_tmp\(1) & \U1|cnt_tmp\(0)))))), GLOBAL(\U0|CO~regout\), GLOBAL(\nRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "060a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO~regout\,
	dataa => \U1|cnt_tmp\(2),
	datab => \U1|cnt_tmp\(1),
	datac => \U1|cnt_tmp\(3),
	datad => \U1|cnt_tmp\(0),
	aclr => \ALT_INV_nRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cnt_tmp\(2));

-- Location: LC_X8_Y7_N9
\U1|cnt_tmp[3]\ : maxv_lcell
-- Equation(s):
-- \U1|cnt_tmp\(3) = DFFEAS((\U1|cnt_tmp\(2) & (\U1|cnt_tmp\(1) & (!\U1|cnt_tmp\(3) & \U1|cnt_tmp\(0)))) # (!\U1|cnt_tmp\(2) & (!\U1|cnt_tmp\(1) & (\U1|cnt_tmp\(3) & !\U1|cnt_tmp\(0)))), GLOBAL(\U0|CO~regout\), GLOBAL(\nRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0810",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO~regout\,
	dataa => \U1|cnt_tmp\(2),
	datab => \U1|cnt_tmp\(1),
	datac => \U1|cnt_tmp\(3),
	datad => \U1|cnt_tmp\(0),
	aclr => \ALT_INV_nRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cnt_tmp\(3));

-- Location: LC_X8_Y7_N7
\U1|cnt_tmp[1]\ : maxv_lcell
-- Equation(s):
-- \U1|cnt_tmp\(1) = DFFEAS(((!\U1|cnt_tmp\(3) & (\U1|cnt_tmp\(1) $ (\U1|cnt_tmp\(0))))), GLOBAL(\U0|CO~regout\), GLOBAL(\nRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO~regout\,
	datab => \U1|cnt_tmp\(1),
	datac => \U1|cnt_tmp\(3),
	datad => \U1|cnt_tmp\(0),
	aclr => \ALT_INV_nRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cnt_tmp\(1));

-- Location: LC_X8_Y7_N8
\U1|cnt_tmp[0]\ : maxv_lcell
-- Equation(s):
-- \U1|cnt_tmp\(0) = DFFEAS((!\U1|cnt_tmp\(0) & (((!\U1|cnt_tmp\(1) & !\U1|cnt_tmp\(2))) # (!\U1|cnt_tmp\(3)))), GLOBAL(\U0|CO~regout\), GLOBAL(\nRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0155",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO~regout\,
	dataa => \U1|cnt_tmp\(0),
	datab => \U1|cnt_tmp\(1),
	datac => \U1|cnt_tmp\(2),
	datad => \U1|cnt_tmp\(3),
	aclr => \ALT_INV_nRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cnt_tmp\(0));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_cnt_tmp\(0),
	oe => VCC,
	padio => ww_COUNT(0));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_cnt_tmp\(1),
	oe => VCC,
	padio => ww_COUNT(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_cnt_tmp\(2),
	oe => VCC,
	padio => ww_COUNT(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_cnt_tmp\(3),
	oe => VCC,
	padio => ww_COUNT(3));
END structure;


