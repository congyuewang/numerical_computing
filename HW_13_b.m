clear all;
int = [1,2];
ya = 1;
h = 1/2^7;
n = 1/h;
%fx = 1/w^2 - w*t
[t,w]=rk4(@f,int,ya,h)
[t,x] = taylor_3_b(int, ya, n)