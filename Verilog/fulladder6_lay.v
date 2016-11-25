/* Verilog for cell 'adder6{lay}' from library 'Project' */
/* Created on Thu Nov 24, 2016 21:01:00 */
/* Last revised on Thu Nov 24, 2016 21:42:26 */
/* Written on Thu Nov 24, 2016 21:44:09 by Electric VLSI Design System, version 8.06 */

module Project__fulladder(a, b, c, cout, s, vdd, gnd);
  input a;
  input b;
  input c;
  output cout;
  output s;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire coutb, net_10, net_11, net_122, net_123, net_124, net_13, net_134;
  wire net_135, net_27, net_30, plnode_0_well, plnode_1_well, plnode_2_well;
  wire plnode_3_well, sumb;

  tranif1 nmos_0(gnd, cout, coutb);
  tranif1 nmos_1(gnd, s, sumb);
  tranif1 nmos_2(net_124, gnd, a);
  tranif1 nmos_3(net_122, net_124, b);
  tranif1 nmos_4(sumb, net_122, c);
  tranif1 nmos_5(net_123, sumb, coutb);
  tranif1 nmos_6(gnd, net_123, c);
  tranif1 nmos_7(net_123, gnd, b);
  tranif1 nmos_8(gnd, net_123, a);
  tranif1 nmos_9(net_134, gnd, a);
  tranif1 nmos_10(coutb, net_134, b);
  tranif1 nmos_11(net_135, coutb, c);
  tranif1 nmos_12(gnd, net_135, b);
  tranif1 nmos_13(net_135, gnd, a);
  tranif0 pmos_0(vdd, cout, coutb);
  tranif0 pmos_1(vdd, s, sumb);
  tranif0 pmos_2(net_10, vdd, a);
  tranif0 pmos_3(net_11, net_10, b);
  tranif0 pmos_4(sumb, net_11, c);
  tranif0 pmos_5(net_27, sumb, coutb);
  tranif0 pmos_6(vdd, net_27, c);
  tranif0 pmos_7(net_27, vdd, b);
  tranif0 pmos_8(vdd, net_27, a);
  tranif0 pmos_9(net_13, vdd, a);
  tranif0 pmos_10(coutb, net_13, b);
  tranif0 pmos_11(net_30, coutb, c);
  tranif0 pmos_12(vdd, net_30, b);
  tranif0 pmos_13(net_30, vdd, a);
endmodule   /* Project__fulladder */

module Project__xor2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_158, net_68, net_70, net_76, net_79, net_87, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_0(gnd, net_79, a);
  tranif1 nmos_1(y, net_76, net_158);
  tranif1 nmos_2(net_76, gnd, net_87);
  tranif1 nmos_3(net_79, y, b);
  tranif1 nmos_4(gnd, net_158, b);
  tranif1 nmos_5(net_87, gnd, a);
  tranif0 pmos_0(vdd, net_68, net_87);
  tranif0 pmos_1(net_68, y, b);
  tranif0 pmos_2(y, net_70, net_158);
  tranif0 pmos_4(net_70, vdd, a);
  tranif0 pmos_5(net_87, vdd, a);
  tranif0 pmos_6(vdd, net_158, b);
endmodule   /* Project__xor2_1x */

module Project__fulladder6(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, 
      b_5, cin, Ovf, cout, s, s_1, s_2, s_3, s_4, s_5, vdd, vdd_1, vdd_1_1, 
      vdd_2, vdd_3, vdd_4, vdd_5, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, 
      gnd_5);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input cin;
  output Ovf;
  output cout;
  output [0:0] s;
  output [1:1] s_1;
  output [2:2] s_2;
  output [3:3] s_3;
  output [4:4] s_4;
  output [5:5] s_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_2, net_3, net_4;

  Project__fulladder fulladde_0(.a(a[0]), .b(b[0]), .c(cin), .cout(net_4), 
      .s(s[0]), .vdd(vdd_1), .gnd(gnd));
  Project__fulladder fulladde_1(.a(a_1[1]), .b(b_1[1]), .c(net_4), 
      .cout(net_3), .s(s_1[1]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__fulladder fulladde_2(.a(a_2[2]), .b(b_2[2]), .c(net_3), 
      .cout(net_0), .s(s_2[2]), .vdd(vdd_2), .gnd(gnd_2));
  Project__fulladder fulladde_3(.a(a_3[3]), .b(b_3[3]), .c(net_0), 
      .cout(net_1), .s(s_3[3]), .vdd(vdd_3), .gnd(gnd_3));
  Project__fulladder fulladde_4(.a(a_4[4]), .b(b_4[4]), .c(net_1), 
      .cout(net_2), .s(s_4[4]), .vdd(vdd_4), .gnd(gnd_4));
  Project__fulladder fulladde_5(.a(a_5[5]), .b(b_5[5]), .c(net_2), .cout(cout), 
      .s(s_5[5]), .vdd(vdd_5), .gnd(gnd_5));
  Project__xor2_1x xor2_1x_0(.a(net_2), .b(cout), .y(Ovf), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* Project__fulladder6 */

module Project__mux2_c_1x(d0, d1, s, y, vdd, gnd);
  input d0;
  input d1;
  input s;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_114, net_186, net_187, net_188, net_189, net_80, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_1(gnd, net_189, d1);
  tranif1 nmos_2(net_189, net_80, s);
  tranif1 nmos_3(net_80, net_188, net_114);
  tranif1 nmos_4(net_188, gnd, d0);
  tranif1 nmos_5(net_114, gnd, s);
  tranif1 nmos_6(gnd, y, net_80);
  tranif0 pmos_0(vdd, net_187, d1);
  tranif0 pmos_1(net_187, net_80, net_114);
  tranif0 pmos_2(net_80, net_186, s);
  tranif0 pmos_3(net_186, vdd, d0);
  tranif0 pmos_4(net_114, vdd, s);
  tranif0 pmos_5(vdd, y, net_80);
endmodule   /* Project__mux2_c_1x */

module Project__mux6(d0, d0_1, d0_2, d0_3, d0_4, d0_5, d1, d1_1, d1_2, d1_3, 
      d1_4, d1_5, s, y, y_1, y_2, y_3, y_4, y_5, vdd, vdd_1, vdd_1_1, vdd_2, 
      vdd_3, vdd_4, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4);
  input [0:0] d0;
  input [1:1] d0_1;
  input [2:2] d0_2;
  input [3:3] d0_3;
  input [4:4] d0_4;
  input [5:5] d0_5;
  input [0:0] d1;
  input [1:1] d1_1;
  input [2:2] d1_2;
  input [3:3] d1_3;
  input [4:4] d1_4;
  input [5:5] d1_5;
  input s;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;

  supply1 vdd;
  supply0 gnd;
  Project__mux2_c_1x mux2_c_1_0(.d0(d0[0]), .d1(d1[0]), .s(s), .y(y[0]), 
      .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_1(.d0(d0_1[1]), .d1(d1_1[1]), .s(s), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__mux2_c_1x mux2_c_1_2(.d0(d0_2[2]), .d1(d1_2[2]), .s(s), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  Project__mux2_c_1x mux2_c_1_3(.d0(d0_3[3]), .d1(d1_3[3]), .s(s), .y(y_3[3]), 
      .vdd(vdd_3), .gnd(gnd_3));
  Project__mux2_c_1x mux2_c_1_4(.d0(d0_4[4]), .d1(d1_4[4]), .s(s), .y(y_4[4]), 
      .vdd(vdd_4), .gnd(gnd_4));
  Project__mux2_c_1x mux2_c_1_5(.d0(d0_5[5]), .d1(d1_5[5]), .s(s), .y(y_5[5]), 
      .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* Project__mux6 */

module adder(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, b_5, y, y_1, 
      y_2, y_3, y_4, y_5);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  /*
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
*/
  supply1 vdd,vdd_1,vdd_1_1,vdd_2,vdd_3,vdd_4,vdd_5;
  supply0 gnd,gnd_1,gnd_1_1,gnd_2,gnd_3,gnd_4,gnd_5;
  wire fulladde_0_cout, net_10, net_12, net_14, net_16, net_21, net_24, net_27;
  wire net_30, net_33, net_4, net_6, net_8, net_88;

  Project__fulladder6 fulladde_0(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .b(b[0:0]), 
      .b_1(b_1[1:1]), .b_2(b_2[2:2]), .b_3(b_3[3:3]), .b_4(b_4[4:4]), 
      .b_5(b_5[5:5]), .cin(gnd_1), .Ovf(net_88), .cout(fulladde_0_cout), 
      .s({net_33}), .s_1({net_30}), .s_2({net_27}), .s_3({net_24}), 
      .s_4({net_21}), .s_5({net_16}), .vdd(vdd_1), .vdd_1(vdd), 
      .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), 
      .vdd_5(vdd_5), .gnd(gnd_1), .gnd_1(gnd), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), .gnd_5(gnd_5));
  Project__mux6 mux6_0(.d0({gnd_1}), .d0_1({gnd_1_1}), .d0_2({gnd_2}), 
      .d0_3({gnd_3}), .d0_4({gnd_4}), .d0_5({vdd_5}), .d1({vdd}), 
      .d1_1({vdd_1_1}), .d1_2({vdd_2}), .d1_3({vdd_3}), .d1_4({vdd_4}), 
      .d1_5({gnd_5}), .s(net_16), .y({net_4}), .y_1({net_6}), .y_2({net_8}), 
      .y_3({net_10}), .y_4({net_12}), .y_5({net_14}), .vdd(vdd), .vdd_1(vdd_5), 
      .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), 
      .gnd(gnd_1), .gnd_1(gnd_5), .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), 
      .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__mux6 mux6_1(.d0({net_33}), .d0_1({net_30}), .d0_2({net_27}), 
      .d0_3({net_24}), .d0_4({net_21}), .d0_5({net_16}), .d1({net_4}), 
      .d1_1({net_6}), .d1_2({net_8}), .d1_3({net_10}), .d1_4({net_12}), 
      .d1_5({net_14}), .s(net_88), .y(y[0:0]), .y_1(y_1[1:1]), .y_2(y_2[2:2]), 
      .y_3(y_3[3:3]), .y_4(y_4[4:4]), .y_5(y_5[5:5]), .vdd(vdd), .vdd_1(vdd_5), 
      .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), 
      .gnd(gnd_1), .gnd_1(gnd_5), .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), 
      .gnd_3(gnd_3), .gnd_4(gnd_4));
endmodule   /* adder6 */
