function [L,U] = doolittle(A,n)  % returns two matrices
U=zeros(n);
L=zeros(n);
for j=1:n
    L(j,j)=1;
end
for j=1:n
    U(1,j)=A(1,j);
end
for i=2:n
    for j=1:n
        for k=1:i-1
            s1=0;
            if k==1
                s1=0;
            else
            for p=1:k-1
                s1=s1+L(i,p)*U(p,k);
            end
            end
            L(i,k)=(A(i,k)-s1)/U(k,k);
           end
         for k=i:n
             s2=0;
           for p=1:i-1
               s2=s2+L(i,p)*U(p,k);
           end
           U(i,k)=A(i,k)-s2;
         end
    end
end