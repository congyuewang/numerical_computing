clear all;
a = 0 ;
b = 1;
N = 3;
%f=log(1-x)/x
y = int_f(N,a,b,@f)

clear all;
a = 0 ;
b = 1;
N = 3;
%gx = log(1+x)/x
y = int_f(N,a,b,@g)

clear all;
a = 0 ;
b = 1;
N = 3;
%hx = log(1+x^2)/x
y = int_f(N,a,b,@h)
