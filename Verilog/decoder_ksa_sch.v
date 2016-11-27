/* Verilog for cell 'decoder_ksa{sch}' from library 'Project' */
/* Created on Thu Nov 24, 2016 16:54:56 */
/* Last revised on Sat Nov 26, 2016 23:05:30 */
/* Written on Sat Nov 26, 2016 23:07:32 by Electric VLSI Design System, version 8.06 */

module Project__and3_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_1, net_45, net_9;

  tranif1 nmos_0(net_45, net_9, b);
  tranif1 nmos_1(net_9, net_1, c);
  tranif1 nmos_3(gnd, y, net_1);
  tranif1 nmos_4(gnd, net_45, a);
  tranif0 pmos_0(net_1, vdd, c);
  tranif0 pmos_1(y, vdd, net_1);
  tranif0 pmos_2(net_1, vdd, a);
  tranif0 pmos_3(net_1, vdd, b);
endmodule   /* Project__and3_1x */

module Project__inv_1x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* Project__inv_1x */

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

module Project__and2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_1, net_2;

  tranif1 nmos_0(net_1, net_2, b);
  tranif1 nmos_1(gnd, net_1, a);
  tranif1 nmos_2(gnd, y, net_2);
  tranif0 pmos_0(net_2, vdd, b);
  tranif0 pmos_1(net_2, vdd, a);
  tranif0 pmos_2(y, vdd, net_2);
endmodule   /* Project__and2_1x */

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

module Project__bit_prop_gen(A, B, G, P);
  input A;
  input B;
  output G;
  output P;

  supply1 vdd;
  supply0 gnd;
  Project__and2_1x and2_1x_0(.a(A), .b(B), .y(G));
  Project__xor2_1x xor2_1x_0(.a(A), .b(B), .y(P));
endmodule   /* Project__bit_prop_gen */

module Project__a2o1_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_11, net_19;

  tranif1 nmos_0(gnd, net_19, a);
  tranif1 nmos_1(net_19, net_0, b);
  tranif1 nmos_2(gnd, net_0, c);
  tranif1 nmos_3(gnd, y, net_0);
  tranif0 pmos_0(net_0, net_11, c);
  tranif0 pmos_1(net_11, vdd, b);
  tranif0 pmos_2(net_11, vdd, a);
  tranif0 pmos_3(y, vdd, net_0);
endmodule   /* Project__a2o1_1x */

module Project__group_gen(G0, G1, P1, G2);
  input G0;
  input G1;
  input P1;
  output G2;

  supply1 vdd;
  supply0 gnd;
  Project__a2o1_1x a2o1_1x_0(.a(G0), .b(P1), .c(G1), .y(G2));
endmodule   /* Project__group_gen */

module Project__group_prop_gen(G0, G1, P0, P1, G2, P2);
  input G0;
  input G1;
  input P0;
  input P1;
  output G2;
  output P2;

  supply1 vdd;
  supply0 gnd;
  Project__a2o1_1x a2o1_1x_0(.a(G0), .b(P1), .c(G1), .y(G2));
  Project__and2_1x and2_1x_0(.a(P0), .b(P1), .y(P2));
endmodule   /* Project__group_prop_gen */

module Project__six_bit_kogge_stone_adder(A, B, S);
  input [5:0] A;
  input [5:0] B;
  output [5:0] S;

  supply1 vdd;
  supply0 gnd;
  wire bit_prop_5_G, net_0, net_115, net_119, net_120, net_14, net_141, net_142;
  wire net_143, net_144, net_15, net_18, net_19, net_2, net_20, net_21, net_24;
  wire net_25, net_26, net_27, net_4, net_6, net_71;
  wire [5:0] P;

  Project__bit_prop_gen bit_prop_0(.A(A[0]), .B(B[0]), .G(net_0), .P(P[0]));
  Project__bit_prop_gen bit_prop_1(.A(A[1]), .B(B[1]), .G(net_2), .P(P[1]));
  Project__bit_prop_gen bit_prop_2(.A(A[2]), .B(B[2]), .G(net_4), .P(P[2]));
  Project__bit_prop_gen bit_prop_3(.A(A[3]), .B(B[3]), .G(net_6), .P(P[3]));
  Project__bit_prop_gen bit_prop_4(.A(A[4]), .B(B[4]), .G(net_144), .P(P[4]));
  Project__bit_prop_gen bit_prop_5(.A(A[5]), .B(B[5]), .G(bit_prop_5_G), 
      .P(P[5]));
  Project__group_gen group_ge_0(.G0(gnd), .G1(net_0), .P1(P[0]), .G2(net_71));
  Project__group_gen group_ge_1(.G0(gnd), .G1(net_20), .P1(net_21), 
      .G2(net_143));
  Project__group_gen group_ge_2(.G0(net_71), .G1(net_18), .P1(net_19), 
      .G2(net_120));
  Project__group_gen group_ge_3(.G0(gnd), .G1(net_26), .P1(net_27), 
      .G2(net_119));
  Project__group_gen group_ge_4(.G0(net_71), .G1(net_24), .P1(net_25), 
      .G2(net_115));
  Project__group_prop_gen group_pr_0(.G0(net_2), .G1(net_4), .P0(P[1]), 
      .P1(P[2]), .G2(net_18), .P2(net_19));
  Project__group_prop_gen group_pr_1(.G0(net_0), .G1(net_2), .P0(P[0]), 
      .P1(P[1]), .G2(net_20), .P2(net_21));
  Project__group_prop_gen group_pr_2(.G0(net_4), .G1(net_6), .P0(P[2]), 
      .P1(P[3]), .G2(net_141), .P2(net_142));
  Project__group_prop_gen group_pr_3(.G0(net_6), .G1(net_144), .P0(P[3]), 
      .P1(P[4]), .G2(net_14), .P2(net_15));
  Project__group_prop_gen group_pr_5(.G0(net_20), .G1(net_141), .P0(net_21), 
      .P1(net_142), .G2(net_26), .P2(net_27));
  Project__group_prop_gen group_pr_6(.G0(net_18), .G1(net_14), .P0(net_19), 
      .P1(net_15), .G2(net_24), .P2(net_25));
  Project__xor2_1x xor2_1x_0(.a(net_115), .b(P[5]), .y(S[5]));
  Project__xor2_1x xor2_1x_4(.a(net_119), .b(P[4]), .y(S[4]));
  Project__xor2_1x xor2_1x_5(.a(net_120), .b(P[3]), .y(S[3]));
  Project__xor2_1x xor2_1x_6(.a(net_143), .b(P[2]), .y(S[2]));
  Project__xor2_1x xor2_1x_7(.a(net_71), .b(P[1]), .y(S[1]));
  Project__xor2_1x xor2_1x_8(.a(gnd), .b(P[0]), .y(S[0]));
endmodule   /* Project__six_bit_kogge_stone_adder */

module Project__adder6_ksa(a, b, y);
  input [5:0] a;
  input [5:0] b;
  output [5:0] y;

  supply1 vdd;
  supply0 gnd;
  wire net_19, net_20, net_21, net_22, net_24;
  wire [5:0] net_15;
  wire [5:0] s;

  Project__and3_1x and3_1x_0(.a(b[5]), .b(net_21), .c(a[5]), .y(net_19));
  Project__and3_1x and3_1x_1(.a(net_22), .b(s[5]), .c(net_24), .y(net_20));
  Project__inv_1x inv_1x_0(.a(s[5]), .y(net_21));
  Project__inv_1x inv_1x_1(.a(a[5]), .y(net_24));
  Project__inv_1x inv_1x_2(.a(b[5]), .y(net_22));
  Project__mux6 mux6_0(.d0(s[5:0]), .d1({vdd, gnd, gnd, gnd, gnd, gnd}), 
      .s(net_19), .y(net_15[5:0]));
  Project__mux6 mux6_1(.d0(net_15[5:0]), .d1({gnd, vdd, vdd, vdd, vdd, vdd}), 
      .s(net_20), .y(y[5:0]));
  Project__six_bit_kogge_stone_adder six_bit__0(.A(a[5:0]), .B(b[5:0]), 
      .S(s[5:0]));
endmodule   /* Project__adder6_ksa */

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

module decoder(r0, r1, r2, r3, r4, r5, r6, r7, m);
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
  wire [5:0] net_436;
  wire [5:0] net_437;
  wire [5:0] net_506;
  wire [5:0] net_518;
  wire [5:0] net_519;
  wire [5:0] net_520;
  wire [5:0] net_533;
  wire [5:0] net_549;
  wire [5:0] net_562;
  wire [5:0] net_581;
  wire [5:0] net_582;
  wire [5:0] net_583;
  wire [5:0] net_584;
  wire [5:0] net_585;
  wire [5:0] net_586;
  wire [5:0] net_587;
  wire [5:0] net_588;
  wire [5:0] net_589;
  wire [5:0] net_590;
  wire [5:0] net_591;
  wire [5:0] net_592;
  wire [5:0] net_593;
  wire [5:0] net_594;
  wire [5:0] net_595;
  wire [5:0] net_596;
  wire [5:0] net_597;
  wire [5:0] net_600;
  wire [5:0] net_603;

  Project__adder6_ksa adder6_k_0(.a(r0[5:0]), .b(r1[5:0]), .y(net_506[5:0]));
  Project__adder6_ksa adder6_k_1(.a(r2[5:0]), .b(r4[5:0]), .y(net_581[5:0]));
  Project__adder6_ksa adder6_k_2(.a(r1[5:0]), .b(r2[5:0]), .y(net_582[5:0]));
  Project__adder6_ksa adder6_k_3(.a(r0[5:0]), .b(r4[5:0]), .y(net_583[5:0]));
  Project__adder6_ksa adder6_k_4(.a(r1[5:0]), .b(r4[5:0]), .y(net_584[5:0]));
  Project__adder6_ksa adder6_k_5(.a(r0[5:0]), .b(r2[5:0]), .y(net_585[5:0]));
  Project__adder6_ksa adder6_k_6(.a(net_506[5:0]), .b(net_581[5:0]), 
      .y(net_586[5:0]));
  Project__adder6_ksa adder6_k_7(.a(net_587[5:0]), .b(net_588[5:0]), 
      .y(net_589[5:0]));
  Project__adder6_ksa adder6_k_8(.a(net_519[5:0]), .b(net_520[5:0]), 
      .y(net_518[5:0]));
  Project__adder6_ksa adder6_k_9(.a(net_590[5:0]), .b(net_591[5:0]), 
      .y(net_592[5:0]));
  Project__adder6_ksa adder6_k_10(.a(net_593[5:0]), .b(net_594[5:0]), 
      .y(net_533[5:0]));
  Project__adder6_ksa adder6_k_11(.a(net_549[5:0]), .b(net_595[5:0]), 
      .y(net_596[5:0]));
  Project__adder6_ksa adder6_k_12(.a(r6[5:0]), .b(r7[5:0]), .y(net_549[5:0]));
  Project__adder6_ksa adder6_k_13(.a(r3[5:0]), .b(r5[5:0]), .y(net_595[5:0]));
  Project__adder6_ksa adder6_k_14(.a(r7[5:0]), .b(r3[5:0]), .y(net_562[5:0]));
  Project__adder6_ksa adder6_k_15(.a(r6[5:0]), .b(r5[5:0]), .y(net_597[5:0]));
  Project__adder6_ksa adder6_k_16(.a(r7[5:0]), .b(r5[5:0]), .y(net_600[5:0]));
  Project__adder6_ksa adder6_k_17(.a(r6[5:0]), .b(r3[5:0]), .y(net_603[5:0]));
  Project__comp6 comp6_0(.a(net_506[5:0]), .b(net_581[5:0]), .alb(net_81));
  Project__comp6 comp6_1(.a(net_582[5:0]), .b(net_583[5:0]), .alb(net_83));
  Project__comp6 comp6_2(.a(net_584[5:0]), .b(net_585[5:0]), .alb(net_85));
  Project__comp6 comp6_3(.a(net_586[5:0]), .b({gnd, gnd, gnd, gnd, gnd, gnd}), 
      .alb(net_78));
  Project__comp6 comp6_4(.a(net_549[5:0]), .b(net_595[5:0]), .alb(net_155));
  Project__comp6 comp6_5(.a(net_562[5:0]), .b(net_597[5:0]), .alb(net_157));
  Project__comp6 comp6_6(.a(net_600[5:0]), .b(net_603[5:0]), .alb(net_159));
  Project__comp6 comp6_7(.a(net_596[5:0]), .b({gnd, gnd, gnd, gnd, gnd, gnd}), 
      .alb(net_152));
  Project__comp6 comp6_8(.a(net_589[5:0]), .b(net_518[5:0]), .alb(net_195));
  Project__comp6 comp6_10(.a(net_592[5:0]), .b(net_533[5:0]), .alb(net_197));
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
  Project__mux6 mux6_0(.d0({gnd, gnd, gnd, gnd, gnd, gnd}), .d1(net_586[5:0]), 
      .s(net_78), .y(net_588[5:0]));
  Project__mux6 mux6_1(.d0(net_581[5:0]), .d1(net_506[5:0]), .s(net_81), 
      .y(net_520[5:0]));
  Project__mux6 mux6_2(.d0(net_583[5:0]), .d1(net_582[5:0]), .s(net_83), 
      .y(net_591[5:0]));
  Project__mux6 mux6_3(.d0(net_585[5:0]), .d1(net_584[5:0]), .s(net_85), 
      .y(net_594[5:0]));
  Project__mux6 mux6_4(.d0({gnd, gnd, gnd, gnd, gnd, gnd}), .d1(net_596[5:0]), 
      .s(net_152), .y(net_587[5:0]));
  Project__mux6 mux6_5(.d0(net_595[5:0]), .d1(net_549[5:0]), .s(net_155), 
      .y(net_519[5:0]));
  Project__mux6 mux6_6(.d0(net_597[5:0]), .d1(net_562[5:0]), .s(net_157), 
      .y(net_590[5:0]));
  Project__mux6 mux6_7(.d0(net_603[5:0]), .d1(net_600[5:0]), .s(net_159), 
      .y(net_593[5:0]));
  Project__mux6 mux6_8(.d0(net_518[5:0]), .d1(net_589[5:0]), .s(net_195), 
      .y(net_436[5:0]));
  Project__mux6 mux6_9(.d0(net_533[5:0]), .d1(net_592[5:0]), .s(net_197), 
      .y(net_437[5:0]));
endmodule   /* decoder_ksa */
