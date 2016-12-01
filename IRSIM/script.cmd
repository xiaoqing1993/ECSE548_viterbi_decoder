stepsize 30
h vdd
l gnd
vector A a[3] a[2] a[1] a[0]
vector B b[3] b[2] b[1] b[0]
vector R result[7] result[6] result[5] result[4] result[3] result[2] result[1] result[0]
w A B R
analyzer A B R
set A 0000
set B 0000
s
set A 0001
set B 0001
s
set A 0010
set B 0010
s
set A 0011
set B 0011
s
set A 0100
set B 0100
s
set A 0101
set B 0101
s
set A 0110
set B 0110
s
set A 0111
set B 0111
s
set A 1000
set B 1000
s

