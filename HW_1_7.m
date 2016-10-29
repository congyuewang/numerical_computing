clear;
clc;
A=[1 2 3 4 5 7]
b=mean(A)
c=length(A)
B=power((A-b),2)

v=1/(c-1)*sum(B)
q=sqrt(v)
