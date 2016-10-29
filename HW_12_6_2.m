clear all;
a = 0;
b = 2*pi;
n = 32;
%fx =cos(x)/exp(x)
y1 = gq2( @f, a, b, n )
y2 = trap(@f,a,b,n)
y3 = simp( @f, a, b, n )