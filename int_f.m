function y = int_f(N,a,b,f)
% This function evaluates \int_a^b f(x) dx using
% the Gaussian quadrature of order N.
xw = GaussPoints(N); % get quadrature points and weights
y = 0.0;
for j = 1:N
x = a + 0.5*(b-a)*(1+xw(j,1));
y = y + f(x)*xw(j,2);
end
y = 0.5*(b-a)*y;
return