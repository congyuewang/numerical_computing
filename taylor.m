function [t,x] = taylor(tRange, x0, n)
% taylor4: 4th order Taylor method for solving a single ODE
% tRange: [t0,tEnd], the starting and ending times
% x0: initial value of x
% n: number of time steps so time values are t(1) to t(n+1)
% [t,x]: an m by 2 matrix containing the (t,x) values
% t and x are each column vectors.

t0 = tRange(1);
tEnd = tRange(2);
h = 1/n;
t = (t0 : h : tEnd)'; % column vector
x = zeros(length(t),1);
x(1)=x0;


for k = 1 : length(t)-1
   x1 =  x(k)^2 + x(k);
   x2 = x1 + 2*x(k)*x1;
   x3 = x2 + 2*x1*x1 + 2*x(k)*x2;
   x4 = x3 + 6*x1*x2 + 2*x(k)*x3;
   x5 = x4 + 6*x2*x2 + 8*x1*x3+2*x(k)*x4;
   x(k+1) = x(k) + h*(x1 + (h/2)*(x2 + (h/3)*(x3 + (h/4)*(x4+(h/5)*x5))));
  
end