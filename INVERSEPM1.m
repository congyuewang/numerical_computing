function sol=INVERSEPM1(A,X,maxI)
n=length(A);
B=inv(A);
for k = 1:maxI;
X=B*X;
m=abs(X(1,1));
for i = 1:n;
if abs(m) < abs(X(i,1));
m=X(i,1);
end; end
k
m
X=X/m

end