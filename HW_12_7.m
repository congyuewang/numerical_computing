clear all;
a = 0;
b = 1;
m = 10;
%fx = -1/(1+(ln(x))^2)
S = romberg(@f,a,b,m)