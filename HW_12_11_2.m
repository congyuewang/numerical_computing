clear all;
a = 0;
b = 2*pi;
n = 120;
y1 = gq3( @g, a, b, n )
y2 = trap(@g,a,b,n)
y3 = simp(@g, a, b, n )