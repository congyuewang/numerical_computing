function [t,w]=rk5(f,int,ya,h)
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
  f3 = f(t(i)+h/2,w(i)+h*f2/4+h*f1/4);  % improved approx. slope at t_i+h/2
  f4 = f(t(i)+h,w(i)+2*h*f3-h*f2);  % approximate slope at t_(i+1)
  f5 = f(t(i)+2/3*h,w(i)+10/27*h*f2+7/27*h*f1+1/27*f4);  % improved approx. slope at t_i+h/2
  f6 = f(t(i)+1/5*h,w(i)+28/625*h*f1+546/625*h*f3-1/5*h*f2+54/625*h*f4-378/625*h*f5);  % approximate slope at t_(i+1)
  w(i+1) = w(i)+h*(1/24*f1+5/48*f4+27/56*f5+125/336*f6);  % rk4 step
end
