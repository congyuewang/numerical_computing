clear all;
a = 0;
b = 1;
m = 10;
%fx =1/(1+x)
S = romberg(@f,a,b,m)

clear all;
a = 0;
b = 1;
m = 10;
%gx =exp(x)
S = romberg(@g,a,b,m)

clear all;
a = 0;
b = 1;
m = 10;
%hx =1/(1+x^2)
S = romberg(@h,a,b,m)