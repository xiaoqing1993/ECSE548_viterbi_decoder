/* Verilog for cell 'decoder1{sch}' from library 'Project' */
/* Created on Thu Nov 24, 2016 16:54:56 */
/* Last revised on Sat Nov 26, 2016 06:16:09 */
/* Written on Sat Nov 26, 2016 06:16:31 by Electric VLSI Design System, version 8.06 */

module Project__fulladder(a, b, c, cout, s);
  input a;
  input b;
  input c;
  output cout;
  output s;

  supply1 vdd;
  supply0 gnd;
  wire coutb, net_1, net_11, net_111, net_23, net_32, net_33, net_90, net_92;
  wire net_94, net_95, sb;

  tranif1 nmos_0(gnd, net_1, a);
  tranif1 nmos_1(gnd, net_1, b);
  tranif1 nmos_2(net_1, coutb, c);
  tranif1 nmos_3(gnd, net_11, a);
  tranif1 nmos_4(net_11, coutb, b);
  tranif1 nmos_5(gnd, net_23, a);
  tranif1 nmos_6(gnd, net_23, b);
  tranif1 nmos_7(gnd, net_23, c);
  tranif1 nmos_8(net_23, sb, coutb);
  tranif1 nmos_9(gnd, net_33, a);
  tranif1 nmos_10(net_33, net_32, b);
  tranif1 nmos_11(net_32, sb, c);
  tranif1 nmos_12(gnd, cout, coutb);
  tranif1 nmos_13(gnd, s, sb);
  tranif0 pmos_1(sb, net_92, c);
  tranif0 pmos_2(net_92, net_90, b);
  tranif0 pmos_3(net_90, vdd, a);
  tranif0 pmos_4(sb, net_94, coutb);
  tranif0 pmos_5(net_94, vdd, b);
  tranif0 pmos_6(net_94, vdd, c);
  tranif0 pmos_7(net_94, vdd, a);
  tranif0 pmos_8(cout, vdd, coutb);
  tranif0 pmos_9(net_95, vdd, a);
  tranif0 pmos_10(coutb, net_95, b);
  tranif0 pmos_11(net_111, vdd, a);
  tranif0 pmos_12(net_111, vdd, b);
  tranif0 pmos_13(coutb, net_111, c);
  tranif0 pmos_14(s, vdd, sb);
endmodule   /* Project__fulladder */

module Project__xor2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire ab, bb, net_3, net_4, net_7, net_8;

  tranif1 nmos_0(gnd, net_3, a);
  tranif1 nmos_1(gnd, net_4, ab);
  tranif1 nmos_2(net_3, y, b);
  tranif1 nmos_3(net_4, y, bb);
  tranif1 nmos_4(gnd, bb, b);
  tranif1 nmos_5(gnd, ab, a);
  tranif0 pmos_0(y, net_7, b);
  tranif0 pmos_1(net_7, vdd, ab);
  tranif0 pmos_2(y, net_8, bb);
  tranif0 pmos_3(net_8, vdd, a);
  tranif0 pmos_4(bb, vdd, b);
  tranif0 pmos_5(ab, vdd, a);
endmodule   /* Project__xor2_1x */

module Project__fulladder6(a, b, cin, Ovf, cout, s);
  input [5:0] a;
  input [5:0] b;
  input cin;
  output Ovf;
  output cout;
  output [5:0] s;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_2, net_3, net_4;

  Project__fulladder fulladde_0(.a(a[0]), .b(b[0]), .c(cin), .cout(net_0), 
      .s(s[0]));
  Project__fulladder fulladde_1(.a(a[1]), .b(b[1]), .c(net_0), .cout(net_1), 
      .s(s[1]));
  Project__fulladder fulladde_4(.a(a[2]), .b(b[2]), .c(net_1), .cout(net_2), 
      .s(s[2]));
  Project__fulladder fulladde_5(.a(a[3]), .b(b[3]), .c(net_2), .cout(net_3), 
      .s(s[3]));
  Project__fulladder fulladde_6(.a(a[4]), .b(b[4]), .c(net_3), .cout(net_4), 
      .s(s[4]));
  Project__fulladder fulladde_7(.a(a[5]), .b(b[5]), .c(net_4), .cout(cout), 
      .s(s[5]));
  Project__xor2_1x xor2_1x_0(.a(net_4), .b(cout), .y(Ovf));
endmodule   /* Project__fulladder6 */

module Project__mux2_c_1x(d0, d1, s, y);
  input d0;
  input d1;
  input s;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_12, net_15, net_3, net_4, net_5, sb;

  tranif1 nmos_0(gnd, net_3, d1);
  tranif1 nmos_1(gnd, net_4, d0);
  tranif1 nmos_2(net_3, net_5, s);
  tranif1 nmos_3(net_4, net_5, sb);
  tranif1 nmos_4(gnd, y, net_5);
  tranif1 nmos_5(gnd, sb, s);
  tranif0 pmos_0(net_5, net_15, sb);
  tranif0 pmos_1(net_15, vdd, d1);
  tranif0 pmos_2(net_5, net_12, s);
  tranif0 pmos_3(net_12, vdd, d0);
  tranif0 pmos_4(y, vdd, net_5);
  tranif0 pmos_5(sb, vdd, s);
endmodule   /* Project__mux2_c_1x */

module Project__mux6(d0, d1, s, y);
  input [5:0] d0;
  input [5:0] d1;
  input s;
  output [5:0] y;

  supply1 vdd;
  supply0 gnd;
  Project__mux2_c_1x mux2_c_1_0(.d0(d0[0]), .d1(d1[0]), .s(s), .y(y[0]));
  Project__mux2_c_1x mux2_c_1_1(.d0(d0[1]), .d1(d1[1]), .s(s), .y(y[1]));
  Project__mux2_c_1x mux2_c_1_2(.d0(d0[2]), .d1(d1[2]), .s(s), .y(y[2]));
  Project__mux2_c_1x mux2_c_1_3(.d0(d0[3]), .d1(d1[3]), .s(s), .y(y[3]));
  Project__mux2_c_1x mux2_c_1_4(.d0(d0[4]), .d1(d1[4]), .s(s), .y(y[4]));
  Project__mux2_c_1x mux2_c_1_5(.d0(d0[5]), .d1(d1[5]), .s(s), .y(y[5]));
endmodule   /* Project__mux6 */

module Project__adder6(a, b, y);
  input [5:0] a;
  input [5:0] b;
  output [5:0] y;

  supply1 vdd;
  supply0 gnd;
  wire fulladde_0_cout, ovf;
  wire [5:0] net_28;
  wire [5:0] s;

  Project__fulladder6 fulladde_0(.a(a[5:0]), .b(b[5:0]), .cin(gnd), .Ovf(ovf), 
      .cout(fulladde_0_cout), .s(s[5:0]));
  Project__mux6 mux6_0(.d0({vdd, gnd, gnd, gnd, gnd, gnd}), .d1({gnd, vdd, vdd, 
      vdd, vdd, vdd}), .s(s[5]), .y(net_28[5:0]));
  Project__mux6 mux6_1(.d0(s[5:0]), .d1(net_28[5:0]), .s(ovf), .y(y[5:0]));
endmodule   /* Project__adder6 */

module Project__inv_1x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* Project__inv_1x */

module Project__inv6_1x(a, y);
  input [5:0] a;
  output [5:0] y;

  supply1 vdd;
  supply0 gnd;
  Project__inv_1x inv_1x_0(.a(a[5]), .y(y[5]));
  Project__inv_1x inv_1x_2(.a(a[4]), .y(y[4]));
  Project__inv_1x inv_1x_3(.a(a[3]), .y(y[3]));
  Project__inv_1x inv_1x_4(.a(a[2]), .y(y[2]));
  Project__inv_1x inv_1x_5(.a(a[1]), .y(y[1]));
  Project__inv_1x inv_1x_6(.a(a[0]), .y(y[0]));
endmodule   /* Project__inv6_1x */

module Project__comp6(a, b, alb);
  input [5:0] a;
  input [5:0] b;
  output alb;

  supply1 vdd;
  supply0 gnd;
  wire fulladde_0_cout, net_35;
  wire [5:0] net_1;
  wire [5:0] s;

  Project__fulladder6 fulladde_0(.a(a[5:0]), .b(net_1[5:0]), .cin(vdd), 
      .Ovf(net_35), .cout(fulladde_0_cout), .s(s[5:0]));
  Project__inv6_1x inv6_1x_0(.a(b[5:0]), .y(net_1[5:0]));
  Project__xor2_1x xor2_1x_0(.a(net_35), .b(s[5]), .y(alb));
endmodule   /* Project__comp6 */

module decoder1(r0, r1, r2, r3, r4, r5, r6, r7, m);
  input [5:0] r0;
  input [5:0] r1;
  input [5:0] r2;
  input [5:0] r3;
  input [5:0] r4;
  input [5:0] r5;
  input [5:0] r6;
  input [5:0] r7;
  output [3:0] m;

  supply1 vdd;
  supply0 gnd;
  wire net_152, net_155, net_157, net_159, net_195, net_197, net_276, net_277;
  wire net_278, net_285, net_290, net_300, net_306, net_309, net_313, net_322;
  wire net_355, net_368, net_378, net_388, net_441, net_78, net_81, net_83;
  wire net_85;
  wire [5:0] net_130;
  wire [5:0] net_169;
  wire [5:0] net_173;
  wire [5:0] net_175;
  wire [5:0] net_182;
  wire [5:0] net_183;
  wire [5:0] net_184;
  wire [5:0] net_185;
  wire [5:0] net_186;
  wire [5:0] net_187;
  wire [5:0] net_188;
  wire [5:0] net_189;
  wire [5:0] net_190;
  wire [5:0] net_334;
  wire [5:0] net_336;
  wire [5:0] net_337;
  wire [5:0] net_338;
  wire [5:0] net_342;
  wire [5:0] net_344;
  wire [5:0] net_345;
  wire [5:0] net_407;
  wire [5:0] net_432;
  wire [5:0] net_433;
  wire [5:0] net_434;
  wire [5:0] net_435;
  wire [5:0] net_436;
  wire [5:0] net_437;
  wire [5:0] net_59;

  Project__adder6 adder6_0(.a(r0[5:0]), .b(r1[5:0]), .y(net_336[5:0]));
  Project__adder6 adder6_1(.a(r2[5:0]), .b(r4[5:0]), .y(net_334[5:0]));
  Project__adder6 adder6_2(.a(r1[5:0]), .b(r2[5:0]), .y(net_338[5:0]));
  Project__adder6 adder6_3(.a(r0[5:0]), .b(r4[5:0]), .y(net_169[5:0]));
  Project__adder6 adder6_4(.a(r1[5:0]), .b(r4[5:0]), .y(net_337[5:0]));
  Project__adder6 adder6_5(.a(r0[5:0]), .b(r2[5:0]), .y(net_182[5:0]));
  Project__adder6 adder6_6(.a(net_336[5:0]), .b(net_334[5:0]), 
      .y(net_59[5:0]));
  Project__adder6 adder6_8(.a(net_407[5:0]), .b(net_342[5:0]), 
      .y(net_130[5:0]));
  Project__adder6 adder6_9(.a(r6[5:0]), .b(r7[5:0]), .y(net_407[5:0]));
  Project__adder6 adder6_10(.a(r3[5:0]), .b(r5[5:0]), .y(net_342[5:0]));
  Project__adder6 adder6_11(.a(r7[5:0]), .b(r3[5:0]), .y(net_345[5:0]));
  Project__adder6 adder6_12(.a(r6[5:0]), .b(r5[5:0]), .y(net_175[5:0]));
  Project__adder6 adder6_13(.a(r7[5:0]), .b(r5[5:0]), .y(net_344[5:0]));
  Project__adder6 adder6_14(.a(r6[5:0]), .b(r3[5:0]), .y(net_173[5:0]));
  Project__adder6 adder6_16(.a(net_184[5:0]), .b(net_183[5:0]), 
      .y(net_433[5:0]));
  Project__adder6 adder6_17(.a(net_189[5:0]), .b(net_190[5:0]), 
      .y(net_434[5:0]));
  Project__adder6 adder6_18(.a(net_187[5:0]), .b(net_188[5:0]), 
      .y(net_435[5:0]));
  Project__adder6 adder6_19(.a(net_185[5:0]), .b(net_186[5:0]), 
      .y(net_432[5:0]));
  Project__comp6 comp6_0(.a(net_336[5:0]), .b(net_334[5:0]), .alb(net_81));
  Project__comp6 comp6_1(.a(net_338[5:0]), .b(net_169[5:0]), .alb(net_83));
  Project__comp6 comp6_2(.a(net_337[5:0]), .b(net_182[5:0]), .alb(net_85));
  Project__comp6 comp6_3(.a(net_59[5:0]), .b({gnd, gnd, gnd, gnd, gnd, gnd}), 
      .alb(net_78));
  Project__comp6 comp6_4(.a(net_407[5:0]), .b(net_342[5:0]), .alb(net_155));
  Project__comp6 comp6_5(.a(net_345[5:0]), .b(net_175[5:0]), .alb(net_157));
  Project__comp6 comp6_6(.a(net_344[5:0]), .b(net_173[5:0]), .alb(net_159));
  Project__comp6 comp6_7(.a(net_130[5:0]), .b({gnd, gnd, gnd, gnd, gnd, gnd}), 
      .alb(net_152));
  Project__comp6 comp6_8(.a(net_433[5:0]), .b(net_434[5:0]), .alb(net_195));
  Project__comp6 comp6_10(.a(net_435[5:0]), .b(net_432[5:0]), .alb(net_197));
  Project__comp6 comp6_11(.a(net_436[5:0]), .b(net_437[5:0]), .alb(net_278));
  Project__inv_1x inv_1x_1(.a(net_78), .y(net_322));
  Project__inv_1x inv_1x_2(.a(net_81), .y(net_355));
  Project__inv_1x inv_1x_3(.a(net_152), .y(net_368));
  Project__inv_1x inv_1x_4(.a(net_83), .y(net_378));
  Project__inv_1x inv_1x_5(.a(net_85), .y(net_388));
  Project__inv_1x inv_1x_7(.a(net_157), .y(net_441));
  Project__mux2_c_1x mux2_c_1_0(.d0(net_155), .d1(net_368), .s(net_195), 
      .y(net_300));
  Project__mux2_c_1x mux2_c_1_1(.d0(net_81), .d1(net_322), .s(net_195), 
      .y(net_290));
  Project__mux2_c_1x mux2_c_1_2(.d0(net_355), .d1(net_322), .s(net_195), 
      .y(net_285));
  Project__mux2_c_1x mux2_c_1_3(.d0(net_355), .d1(net_322), .s(net_195), 
      .y(net_276));
  Project__mux2_c_1x mux2_c_1_4(.d0(net_85), .d1(net_83), .s(net_197), 
      .y(net_313));
  Project__mux2_c_1x mux2_c_1_5(.d0(net_388), .d1(net_378), .s(net_197), 
      .y(net_309));
  Project__mux2_c_1x mux2_c_1_6(.d0(net_85), .d1(net_378), .s(net_197), 
      .y(net_306));
  Project__mux2_c_1x mux2_c_1_7(.d0(net_159), .d1(net_441), .s(net_197), 
      .y(net_277));
  Project__mux2_c_1x mux2_c_1_12(.d0(net_306), .d1(net_290), .s(net_278), 
      .y(m[2]));
  Project__mux2_c_1x mux2_c_1_13(.d0(net_309), .d1(net_285), .s(net_278), 
      .y(m[1]));
  Project__mux2_c_1x mux2_c_1_14(.d0(net_313), .d1(net_276), .s(net_278), 
      .y(m[0]));
  Project__mux2_c_1x mux2_c_1_15(.d0(net_277), .d1(net_300), .s(net_278), 
      .y(m[3]));
  Project__mux6 mux6_0(.d0({gnd, gnd, gnd, gnd, gnd, gnd}), .d1(net_59[5:0]), 
      .s(net_78), .y(net_183[5:0]));
  Project__mux6 mux6_1(.d0(net_334[5:0]), .d1(net_336[5:0]), .s(net_81), 
      .y(net_190[5:0]));
  Project__mux6 mux6_2(.d0(net_169[5:0]), .d1(net_338[5:0]), .s(net_83), 
      .y(net_188[5:0]));
  Project__mux6 mux6_3(.d0(net_182[5:0]), .d1(net_337[5:0]), .s(net_85), 
      .y(net_186[5:0]));
  Project__mux6 mux6_4(.d0({gnd, gnd, gnd, gnd, gnd, gnd}), .d1(net_130[5:0]), 
      .s(net_152), .y(net_184[5:0]));
  Project__mux6 mux6_5(.d0(net_342[5:0]), .d1(net_407[5:0]), .s(net_155), 
      .y(net_189[5:0]));
  Project__mux6 mux6_6(.d0(net_175[5:0]), .d1(net_345[5:0]), .s(net_157), 
      .y(net_187[5:0]));
  Project__mux6 mux6_7(.d0(net_173[5:0]), .d1(net_344[5:0]), .s(net_159), 
      .y(net_185[5:0]));
  Project__mux6 mux6_8(.d0(net_434[5:0]), .d1(net_433[5:0]), .s(net_195), 
      .y(net_436[5:0]));
  Project__mux6 mux6_9(.d0(net_432[5:0]), .d1(net_435[5:0]), .s(net_197), 
      .y(net_437[5:0]));
endmodule   /* decoder1 */
