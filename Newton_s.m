function [solution] = Newton_s(MyFunc,Jacobian,Guess,tol)
% solves the non-linear vector equation F(x)=0
% set using Newton Raphson iteration
% INPUTS;
% Myfunc=Handle to the function which returns the vector F(x)
% Jacobian=Handle to the function which returns the Jacobian Matrix
% Guess = Initial Guess (a vector)
% tol = Tolerance
%
% OUTPUTS
% solution = The solution to F(x) = 0
x = Guess;
%set the error 2*tol to make sure the loop runs at least once
error = 2*tol
while error > tol
%calculate the function values at the current iteration
F = feval(MyFunc,x);
%calculate the jacobian matrix
J = feval(Jacobian,x);
%calculate the update (solve the linear system)
dx = J\(-F);
%update the x value
x = x+dx;
%calculate the error
F = feval(MyFunc,x);
error = max(abs(F));
end %while loop
solution = x;
return