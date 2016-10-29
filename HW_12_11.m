clear all;
a = 0;
b = 0.5;
n = 10;

%f =sqrt(1+16*power(x,2)/(1-4*power(x,2)));
S = trap(@h,a,b,n)
A = 4*S 