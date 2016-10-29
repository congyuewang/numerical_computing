function root=newton(x,xtol,ftol,n_max,display)
% Newton¡¯s method.
%
%input:
% fn string that names the function f(x).
% fd string that names the derivative f¡¯(x).
% x the initial point
% xtol and ftol termination tolerances
% n_max the maximum number of iteration
% display = 1 if step-by-step display is desired,
% = 0 otherwise
%output: root is the computed root of f(x)=0
%
%n = 0;
fx = fn(x);
%if display,
%disp(' n x f(x)')
%disp('-------------------------------------')
%disp(sprintf('%4d %23.15e %23.15e', n, x, fx))
%end
if abs(fx) <= xtol
root = x;
return
end
for n = 1:n_max
fdx = fd(x);
d = fx/fdx;
x = x - d;
fx = fn(x);
if display,
disp(sprintf('%4d %23.15e %23.15e',n,x,fx))
end
if abs(d) <= xtol | abs(fx) <= ftol
root = x;
return
end
end