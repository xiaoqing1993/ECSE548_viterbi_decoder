module testbench();
	logic signed [5:0] r[0:7];
	logic [3:0] m, m_exp, m_act;
	logic fail;
	integer fail_count = 0;
	integer fp;
	`define NULL 0  
	
	//decoder dec(r,m);
	decoder1 dec(r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], m);
	initial begin
		fp = $fopen("inputs.txt", "r");
		if (fp == `NULL) begin
			$display("NULL FILE");
			$stop;
		end
	end

	always begin
		if (!$feof(fp)) begin
			$fscanf(fp, "%d ",r[0]);
			$fscanf(fp, "%d ",r[1]);
			$fscanf(fp, "%d ",r[2]);
			$fscanf(fp, "%d ",r[3]);
			$fscanf(fp, "%d ",r[4]);
			$fscanf(fp, "%d ",r[5]);
			$fscanf(fp, "%d ",r[6]);
			$fscanf(fp, "%d ",r[7]);
			
			$fscanf(fp, "%d ",m_exp[0]);
			$fscanf(fp, "%d ",m_exp[1]);
			$fscanf(fp, "%d ",m_exp[2]);
			$fscanf(fp, "%d ",m_exp[3]);
			
			$fscanf(fp, "%d ",m_act[0]);
			$fscanf(fp, "%d ",m_act[1]);
			$fscanf(fp, "%d ",m_act[2]);
			$fscanf(fp, "%d ",m_act[3]);
			
			#1;
			assert(m_exp[0]==m[0] && m_exp[1]==m[1] && m_exp[2]==m[2] && m_exp[3]==m[3]) fail = 1'b0;
			else begin
				fail = 1'b1;
				fail_count++;
				$error("decoder failed");
				$stop;
			end
			
		end
		else begin
			$fclose(fp);
			$display("Simulation finished with %d failures!", fail_count);
			$stop;
		end
	end
endmodule

module decoder(	input		logic signed [5:0] r[0:7],
								output	logic [3:0] m);
	
	wire [5:0] y01, y24, y67, y35;
	wire [5:0] y12, y04, y37, y56;
	wire [5:0] y14, y02, y57, y36;
	wire [5:0] y0124, y3567;
	wire y0124_L_0, y01_L_y24, y12_L_y04, y14_L_y02;
	wire y3567_L_0, y67_L_y35, y37_L_y56, y57_L_y36;
	
	wire [5:0] stage_L0, stage_L1, stage_L2, stage_L3;
	wire [5:0] stage_R0, stage_R1, stage_R2, stage_R3;

	wire [5:0] stage_LR0, stage_LR1, stage_LR2, stage_LR3;
	wire stage_LR0_L_stage_LR1, stage_LR2_L_stage_LR3;
	
	wire [5:0] stage_LR01, stage_LR23;
	wire stageLR01_L_stageLR23;
	
	wire m0_0, m0_1, m0_2, m0_3, m0_01, m0_23;
	wire m1_0, m1_1, m1_2, m1_3, m1_01, m1_23;
	wire m2_0, m2_1, m2_2, m2_3, m2_01, m2_23;
	wire m3_0, m3_1, m3_2, m3_3, m3_01, m3_23;
	
	adder xadd_1 (r[0], r[1], y01);
	adder xadd_2 (r[2], r[4], y24);
	adder xadd_3 (r[6], r[7], y67);
	adder xadd_4 (r[3], r[5], y35);
	
	adder xadd_5 (r[1], r[2], y12);
	adder xadd_6 (r[0], r[4], y04);
	adder xadd_7 (r[3], r[7], y37);
	adder xadd_8 (r[5], r[6], y56);
	
	adder xadd_9 (r[1], r[4], y14);
	adder xadd_10(r[0], r[2], y02);
	adder xadd_11(r[5], r[7], y57);
	adder xadd_12(r[3], r[6], y36);
	
	adder xadd_13(y01, y24, y0124);
	adder xadd_14(y35, y67, y3567);
	
	adder xadd_15(stage_L0, stage_R0, stage_LR0);
	adder xadd_16(stage_L1, stage_R1, stage_LR1);
	adder xadd_17(stage_L2, stage_R2, stage_LR2);
	adder xadd_18(stage_L3, stage_R3, stage_LR3);
	
	  
	comp	xcomp_1 (y0124, 6'b000000, y0124_L_0);
	comp	xcomp_2 (y01, y24, y01_L_y24);
	comp	xcomp_3 (y12, y04, y12_L_y04);
	comp	xcomp_4 (y14, y02, y14_L_y02);
	
	comp	xcomp_5 (y3567, 6'b000000, y3567_L_0);
	comp	xcomp_6 (y67, y35, y67_L_y35);
	comp	xcomp_7 (y37, y56, y37_L_y56);
	comp	xcomp_8 (y57, y36, y57_L_y36);
	
	comp	xcomp_9 (stage_LR0, stage_LR1, stage_LR0_L_stage_LR1);
	comp	xcomp_10(stage_LR2, stage_LR3, stage_LR2_L_stage_LR3);
	comp	xcomp_11(stage_LR01, stage_LR23, stageLR01_L_stageLR23);

	
	mux6	xmux6_1 (6'b000000, y0124, y0124_L_0, stage_L0);
	mux6	xmux6_2 (y24, y01, y01_L_y24, stage_L1);
	mux6	xmux6_3 (y04, y12, y12_L_y04, stage_L2);
	mux6	xmux6_4 (y02, y14, y14_L_y02, stage_L3);
	
	mux6	xmux6_5 (6'b000000, y3567, y3567_L_0, stage_R0);
	mux6	xmux6_6 (y35, y67, y67_L_y35, stage_R1);
	mux6	xmux6_7 (y56, y37, y37_L_y56, stage_R2);
	mux6	xmux6_8 (y36, y57, y57_L_y36, stage_R3);

	mux6	xmux6_9 (stage_LR1, stage_LR0, stage_LR0_L_stage_LR1, stage_LR01);
	mux6	xmux6_10(stage_LR3, stage_LR2, stage_LR2_L_stage_LR3, stage_LR23);
	
	inv	xinv_1 (y0124_L_0, m0_0);
	assign m1_0 = m0_0;
	assign m2_0 = m0_0;
	inv	xinv_2 (y3567_L_0, m3_0);
	
	inv	xinv_3 (y01_L_y24, m0_1);
	assign m1_1 = m0_1;
	assign m2_1 = y01_L_y24;
	assign m3_1 = y67_L_y35;
	
	assign m0_2 = y12_L_y04;
	inv	xinv_4 (y12_L_y04, m1_2);
	assign m2_2 = m1_2;
	inv	xinv_5 (y37_L_y56, m3_2);
	
	assign m0_3 = y14_L_y02;
	inv	xinv_6(y14_L_y02,m1_3);
	assign m2_3 = y14_L_y02;
	assign m3_3 = y57_L_y36;
	
	mux1	xmux1_1 (m0_1, m0_0, stage_LR0_L_stage_LR1, m0_01);
	mux1	xmux1_2 (m1_1, m1_0, stage_LR0_L_stage_LR1, m1_01);
	mux1	xmux1_3 (m2_1, m2_0, stage_LR0_L_stage_LR1, m2_01);
	mux1	xmux1_4 (m3_1, m3_0, stage_LR0_L_stage_LR1, m3_01);
	
	mux1	xmux1_5 (m0_3, m0_2, stage_LR2_L_stage_LR3, m0_23);
	mux1	xmux1_6 (m1_3, m1_2, stage_LR2_L_stage_LR3, m1_23);
	mux1	xmux1_7 (m2_3, m2_2, stage_LR2_L_stage_LR3, m2_23);
	mux1	xmux1_8 (m3_3, m3_2, stage_LR2_L_stage_LR3, m3_23);
	
	mux1	xmux1_9 (m0_23, m0_01, stageLR01_L_stageLR23, m[0]);
	mux1	xmux1_10(m1_23, m1_01, stageLR01_L_stageLR23, m[1]);
	mux1	xmux1_11(m2_23, m2_01, stageLR01_L_stageLR23, m[2]);
	mux1	xmux1_12(m3_23, m3_01, stageLR01_L_stageLR23, m[3]);
	
endmodule

module adder_ideal(	input		logic	signed [5:0] a, b,
							output	logic	signed [5:0] y);
  
  wire signed [5:0] s;
  wire and1, and2;
  
  assign s = a+b;
  assign and1 = ~a[5] & ~b[5] & s[5];
  assign and2 = a[5] & b[5] & ~s[5];
  
  assign y = and1==0 ? (and2==0 ? s : -32) : 31;
endmodule


module comp_ideal(	input		logic	signed [5:0] a, b,
							output	logic alb);
	assign alb = a<b ? 1 : 0;
endmodule


module mux6_ideal(	input		logic	signed [5:0] a, b,
						input		logic s,
						output	logic	signed [5:0] y);
	
	assign y = s==1'b0 ? a : b;
endmodule

module mux1(	input		logic	signed a, b,
						input		logic s,
						output	logic	signed y);
	
	assign y = s==1'b0 ? a : b;
endmodule

module inv(	input		logic a,
						output	logic y);
	assign y = ~a;
endmodule
