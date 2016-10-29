function y = gq2 ( f, a, b, n )

%GQ2        approximate the definite integral of an arbitrary function
%           using the composite two-point Gaussian quadrature rule
%           (i.e., Gauss-Legendre quadrature)
%
%     calling sequences:
%             y = gq2 ( 'f', a, b, n )
%             gq2 ( 'f', a, b, n )
%
%     inputs:
%             f       string containing name of m-file defining integrand
%             a       lower limit of integration
%             b       upper limit of integration
%             n       number of uniformly sized subintervals into which
%                     integration interval is to be divided
%                     (the resulting approximation will require 2*n
%                     function evaluations)
%
%     output:
%             y       approximate value of the definite integral of f(x)
%                     over the interval a < x < b
%
%     NOTE:
%             if GQ2 is called with no output arguments, the approximate 
%             value of the definite integral of f(x) over the interval 
%             a < x < b will be displayed
%

h2 = (b-a)/(2*n);
sqthird = sqrt(3.0)/3.0;
x = linspace ( a, b, n+1 );

sum = 0.0;
for i = 1:n
    sum = sum + feval ( f, x(i) + h2 - sqthird * h2 );
	sum = sum + feval ( f, x(i) + h2 + sqthird * h2 );
end

if ( nargout == 1 ) 
   y = (h2) * sum;
else
   disp ( (h2) * sum );
end