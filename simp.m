function y = simp ( f, a, b, n )

%SIMP       approximate the definite integral of an arbitrary function
%           using the composite Simpson's rule (i.e., the closed
%           Newton-Cotes quadrature rule with n=2)
%
%     calling sequences:
%             y = simp ( 'f', a, b, n )
%             simp ( 'f', a, b, n )
%
%     inputs:
%             f       string containing name of m-file defining integrand
%             a       lower limit of integration
%             b       upper limit of integration
%             n       number of uniformly sized subintervals into which
%                     integration interval is to be divided - must be even
%                     (the resulting approximation will require n+1
%                     function evaluations)
%
%     output:
%             y       approximate value of the definite integral of f(x)
%                     over the interval a < x < b
%
%     NOTE:
%             if SIMP is called with no output arguments, the approximate 
%             value of the definite integral of f(x) over the interval 
%             a < x < b will be displayed
%

if ( rem(n,2) ~= 0 )
   disp ( 'n must be an even integer' )
   return
end

h = (b-a)/n;
x = linspace ( a, b, n+1 );
for i = 1:n+1
    fx(i) = feval ( f, x(i) );
end
w = [ 1 zeros(1,n-1) 1 ];
w(2:2:n) = 4*ones(1,n/2);
w(3:2:n-1) = 2*ones(1,n/2-1);

if ( nargout == 1 ) 
   y = (h/3) * sum ( w .* fx );
else
   disp ( (h/3) * sum ( w .* fx ) );
end