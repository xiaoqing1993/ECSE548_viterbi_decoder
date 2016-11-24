/* Verilog for cell 'comp6{sch}' from library 'Project' */
/* Created on Thu Nov 24, 2016 11:53:05 */
/* Last revised on Thu Nov 24, 2016 12:28:12 */
/* Written on Thu Nov 24, 2016 12:28:21 by Electric VLSI Design System, version 8.06 */

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

module Project__fulladder6(a, b, cin, cout, s);
  input [5:0] a;
  input [5:0] b;
  input cin;
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
endmodule   /* Project__fulladder6 */

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

module comp(a, b, alb);
  input [5:0] a;
  input [5:0] b;
  output alb;

  supply1 vdd;
  supply0 gnd;
  wire net_5;
  wire [5:0] net_1;
  wire [5:0] s;

  Project__fulladder6 fulladde_0(.a(a[5:0]), .b(net_1[5:0]), .cin(vdd), 
      .cout(net_5), .s(s[5:0]));
  Project__inv6_1x inv6_1x_0(.a(b[5:0]), .y(net_1[5:0]));
  Project__xor2_1x xor2_1x_0(.a(net_5), .b(s[5]), .y(alb));
endmodule   /* comp6 */
