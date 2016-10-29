function [p1,y1,err,P] = secant(f,p0,p1,delta,epsilon,max1)
%---------------------------------------------------------------------------
%SECANT   The secant method is used to locate a root.
% Sample calls
%   [p1,y1,err] = secant('f',p0,p1,delta,epsilon,max1)
%   [p1,y1,err,P] = secant('f',p0,p1,delta,epsilon,max1)
% Inputs
%   f         name of the function
%   p0        starting value
%   p1        starting value
%   delta     convergence tolerance for p1
%   epsilon   convergence tolerance y1
%   max1      maximum number of iterations
% Return
%   p1        solution: the root
%   y1        solution: the function value
%   err       error estimate in the solution p1
%   P         History vector of the iterations
%

%---------------------------------------------------------------------------

P(1) = p0;
P(2) = p1;
y0 = feval(f,p0);
y1 = feval(f,p1);
for k=1:max1,
  df = (y1-y0)/(p1-p0);
  if df == 0,
    dp = 0;
  else
    dp = y1/df;
  end
  p2 = p1 - dp;
  y2 = feval(f,p2);
  err = abs(dp);
  relerr = err/(abs(p2)+eps);
  p0 = p1;
  y0 = y1;
  p1 = p2;
  y1 = y2;
  P = [P,p2];
  if (err<delta)|(relerr<delta)|(abs(y2)<epsilon), break, end
end
