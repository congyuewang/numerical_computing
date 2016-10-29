clear;
clc;
syms x
t=taylor(exp(x),'Order',20)
vpa(t)
p=taylor(erf(x),'Order',8)
erf(1)

w=taylor(exp(-x^2),'order',10)

