function S = trapezoid_2(a,b,m)
% Function trapezoid uses the composite trapezoidal rule
% to approximate the integral of function f
%
% Input: f - function handlle or inline function 
%          the function f should be written to evaluate vector values
%        a - lower limit of integration
%        b - upper limit of integration
%        n - number of intervals
%Output : S an approximation of Int_a^b f(x) dx
%
 h = (b-a)/m; 
 x=[a:h:b]; %  (n+1) equaly spaced   points in [a b]
 y(1:101)=sqrt(1+16*power(x,2)/(1-4*power(x,2))); % evaluates f at the nodes x_k
 
 %S=h/2 * (y_0 +y_n +2 (y_1 + ....+y_{n-1}))
 S =(y(1)+ y(m+1))/2 + sum(y(1:m-1)) ;
 S = S*h;