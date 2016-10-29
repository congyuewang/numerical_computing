clear all;
a = 0;
b = pi;
m = 100;

%g = sin(x);
S = trapezoid(@g,a,b,m)

clear all;
a = 0;
b = 1;
m = 100;

%f = exp(x)
S = trapezoid(@f,a,b,m)

clear all;
a = 0;
b = 1;
m = 100;

%h = atan(x)
S = trapezoid(@h,a,b,m)