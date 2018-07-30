# ECE 475 4bit BCD Counter
Lab 2
Authors: Rachel & Danya

The objective is to build a 4-bit BCD counter using VHDL using structural modeling.
A BCD counter has 4-bits for outputs. Those 4-bits start at 0000 and count in binary 
all the way up to 1111, whereafter it rolls back to 0000 and continues counting.

We created a state table of the current and next states of each 4-bit combination
and used flip-flops for the design.

This lab taught us more about SIGNALS between the output gate of one component to the 
input of another component. SIGNALS are different from IN and OUT in VHDL, which can only
be inputs or outputs respectively. We do not have direct access to SIGNALs.

Equipment Used:
Xilinx IDE, Isim, iMPACT
ML501 Xilinx board with Virtex-5 LX Xilinx chip

We decided to design using JK flip flops.
To create the design, we had to look at the JK Flip-Flop State Exitation table.
From that, we created our state table uncluding present states, next states, and JK values.
After the state table was created, we drew 8 K-mpas, one of reach of J1, K1, J2, K2, J3, K3, 
J4, and K4.

The results of the minimization produced the following equations:
J1 = 1  ;      K1 = 1
J2 = Q1 ;      K2 = Q1
J3 = Q1 Q2;    K3 = Q1 Q2
J4 = Q1 Q2 Q3; K4 = Q1 Q2 Q3

The VHDL code was created based on these equations. 
Xilinx generated an RTL schematic that reflected our VHDL design.
The code was tested first by generating a waveform over a few clock cycles.
Since the waveform appeared to work as intended, the design was implemented and tested on the 
Xilinx development board.
