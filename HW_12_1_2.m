clear all;
a = 0 ;
b = 1;
N = 3;
%fx = 1/x
y = int_f(N,a,b,@f)

clear all;
a = 0 ;
b = 1;
N = 3;
%gx =1/sqrt(x)
y = int_f(N,a,b,@g)

clear all;
a = 0 ;
b = 2;
N = 3;
%hx = exp(-(cos(x))^2)
y = int_f(N,a,b,@h)

