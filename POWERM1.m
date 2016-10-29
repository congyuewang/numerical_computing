function g=POWERM1(A,X,maxI)
n=length(A);
for k = 1:maxI;
X=A*X;
m=abs(X(1,1));
for i = 1:n;
if abs(m) < abs(X(i,1));
m=X(i,1);
end; end
k;m;X=X/m;
g=X/m
end