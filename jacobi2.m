function [V,D] = jacobi2(A,epsilon,show)
%---------------------------------------------------------------------------
%JACOBI2   The cyclic Jacobi`s method of iteration is used
%          to compute the eigenpairs of a symmetric matrix.
% Sample call
%   [V,D] = jacobi2(A,epsilon,show)
% Inputs
%   A         matrix
%   epsilon   convergence tolerance
% Return
%   V         solution: matrix of eigenvectors
%   D         solution: diagonal matrix of eigenvalues
%

%---------------------------------------------------------------------------

if nargin==2, show = 0; end
D = A;
[n,n] = size(A);
V = eye(n);
cnts = 0;
cntr = 0;
done = 0;
working = 1;
stat = working;
while (stat==working),
	 cnts = cnts+1;
	 t = sum(diag(D));
	 stat = done;
    for p = 1:(n-1),
      for q = (p+1):n,
	       if ((abs(D(p,q))/t)>epsilon),
          t = D(p,q)/(D(q,q) - D(p,p));
          c = 1/sqrt(t*t+1);
          s = c*t;
          R = [c s; -s c];
          D([p q],:) = R'*D([p q],:);
          D(:,[p q]) = D(:,[p q])*R;
          V(:,[p q]) = V(:,[p q])*R;
		        cntr = cntr+1;
          if show==1,
            home; if cntr==1, clc; end; 
             
            
          end
		        stat = working;
        end
      end
    end
end
D = diag(diag(D));
V
D