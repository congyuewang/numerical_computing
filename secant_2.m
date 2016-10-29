function [xc,nost] = secant_2(f,x0,x1,tol)
%% SECANT:  Secant Method
%       Computes approximate solution of f(x)=0
%       Input: function handle f; initial guesses x0, x1; 
%       It might run forever!
%       Output: approximate solution xc
%       Usage: >> [xc,nost] = secant(f,x0,x1,tol)
%% Secant method
xold = x0;
xc = x1 - (f(x1)*(x1-xold))/(f(x1)-f(xold));
nost = 0;   %number of bisection steps
while abs(xc-xold)>tol
    nost = nost+1;    % count number of bisection steps
    xnew = xc - (f(xc)*(xc-xold))/(f(xc)-f(xold));
    xold = xc;
    xc = xnew;
end