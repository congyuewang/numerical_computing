clear all;
int = [0.00000000001,1];
ya = 0;
h = 1/2^7;
%fx = w/t + t*sec(w/t)

[t,w]=rk4(@f,int,ya,h)