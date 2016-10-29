function y = trap ( f, a, b, n )

%TRAP       approximate the definite integral of an arbitrary function
%           using the composite Trapezoidal rule (i.e., the closed
%           Newton-Cotes quadrature rule with n=1)
%
%     calling sequences:
%             y = trap ( 'f', a, b, n )
%             trap ( 'f', a, b, n )
%
%     inputs:
%             f       string containing name of m-file defining integrand
%             a       lower limit of integration
%             b       upper limit of integration
%             n       number of uniformly sized subintervals into which
%                     integration interval is to be divided
%                     (the resulting approximation will require n+1
%                     function evaluations)
%
%     output:
%             y       approximate value of the definite integral of f(x)
%                     over the interval a < x < b
%
%     NOTE:
%             if TRAP is called with no output arguments, the approximate 
%             value of the definite integral of f(x) over the interval 
%             a < x < b will be displayed
%

h = (b-a)/n;
x = linspace ( a, b, n+1 );
for i = 1:n+1
    fx(i) = feval ( f, x(i) );
end
w = [ 0 ones(1,n) ] + [ ones(1,n) 0 ];

if ( nargout == 1 ) 
   y = (h/2) * sum ( w .* fx );
else
   disp ( (h/2) * sum ( w .* fx ) );
end