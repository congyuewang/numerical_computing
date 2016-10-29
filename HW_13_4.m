clear all;
int = [1,2];
y0 = -1;
t0 = 1;
h = 1/2^7;
n = 1/h;
k = 4;

fname = @f;
%fx = 1/t^2 - w/t-w^2

[tvals,yvals] = FixedPC(fname,t0,y0,h,k,n)