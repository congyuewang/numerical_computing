clear all;
tRange = [1;2.77];
x0 = 0.204663417289155;
n=100;
[t,x] = taylor(tRange, x0, n)