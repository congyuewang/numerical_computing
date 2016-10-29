function [t,w]=rk4(f,int,ya,h)
%% RK4: Fourth order Runge-Kutta method for solving initial value 
%     y'=f(t,y), y(a)=y0
%     Used  with f =f(t,y)  to evaluate rhs of differential equation
%     Input:   function or function  handle to (t,y)->f(t,y)  the RHS
%          interval [a,b], initial value ya, step size h (n=(b-a)*h).
%
%     Output: time steps t=[t0, t1,... ,tn],
%          numerical approximation at t values:  
%                        w=[w0, w1,...,wn] 
%          the points(t, w) approximating (t, y(t)) on [a, b]
%

%
n = round((int(2)-int(1))/h);   % number of time steps
t = int(1):h:int(1)+n*h;    % time discretization 
w = zeros(1,n+1);   % initialize y
w(1) = ya;  % assign initial value
for i=1:n
  f1 = f(t(i),w(i));  % approximate slope at t_i
  f2 = f(t(i)+h/2,w(i)+h*f1/2);  % approximate slope at t_i+h/2
  f3 = f(t(i)+h/2,w(i)+h*f2/2);  % improved approx. slope at t_i+h/2
  f4 = f(t(i)+h,w(i)+h*f3);  % approximate slope at t_(i+1)
  w(i+1) = w(i)+h/6*(f1+2*f2+2*f3+f4);  % rk4 step
end
