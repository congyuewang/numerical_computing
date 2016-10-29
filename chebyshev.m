function val = chebyshev(n,x)
 if n == 0
 val = ones(size(x)) ;
 else
if n == 1
 val = x ;
 else
 val = 2 .* x .* chebyshev(n-1,x) - chebyshev(n-2,x) ;
 end
 end