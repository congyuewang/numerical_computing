clear;
clc;
syms x
f = x*exp(x)
p1=int(f,x,0,1)
p1;
p2 = int(x^2*exp(x),x,0,1)

w2=vpa(p2)
w2
p3 =int(x^3*exp(x),x,0,1)
w3 = vpa(p3)

for n = 1 : 20;
   % intlib::byparts(hold(int)(x^n*exp(x), x = a..b), exp(x))
  p= int(x^n*exp(x),x,0,1)
  p
  w=vpa(p)
end

q=int(x*exp(x),x,0,1)
for n= 1:20;
    
    q = exp(1) -(n+1)*q
    z = vpa(q)
  
end
