function x = gauss_seidel ( A, b, xold, TOL, Nmax )

%GAUSS_SEIDEL approximate the solution of the linear system Ax = b by applying
%             the Gauss-Seidel method (successive relaxation)
%
%     calling sequences:
%             x = gauss_seidel ( A, b, xold, TOL, Nmax )
%             gauss_seidel ( A, b, xold, TOL, Nmax )
%
%     inputs:
%             A       coefficient matrix for linear system - must be a
%                     square matrix
%             b       right-hand side vector for linear system
%             xold    vector containing initial guess for solution of 
%                     linear system
%             TOL     convergence tolerance - applied to maximum norm of
%                     difference between successive approximations
%             NMax    maximum number of iterations to be performed
%
%     output:
%             x       approximate solution of linear system
%
%     NOTE:
%             if GAUSS_SEIDEL is called with no output arguments, the 
%             iteration number and the current approximation to the 
%             solution are displayed
%
%             if the maximum number of iterations is exceeded, a meesage
%             to this effect will be displayed and the current approximation 
%             will be returned in the output value
%

n = length ( b );
[r c] = size ( A );
if ( c ~= n ) 
   disp ( 'gauss_seidel error: matrix dimensions and vector dimension not compatible' )
   return
end;
xnew = zeros ( 1, n );

if ( nargout == 0 )
   s = sprintf ( '%3d \t %10f ', 0, xold(1) );
   for j = 2 : n 
	   s = sprintf ( '%s%10f ', s, xold(j) );
   end;
   disp ( s );
end;

for its = 1 : Nmax
    xnew(1) = ( b(1) - sum ( A(1,2:n) * xold(2:n) ) ) / A(1,1);
	for i = 2 : n-1
	    xnew(i) = ( b(i) - sum ( A(i,1:i-1) * xnew(1:i-1) ) - sum ( A(i,i+1:n) * xold(i+1:n) ) ) / A(i,i);
	end;
	xnew(n) = ( b(n) - sum ( A(n,1:n-1) * xnew(1:n-1) ) ) / A(n,n);
	
    if ( nargout == 0 )
	   s = sprintf ( '%3d \t %10f ', its, xnew(1) );
	   for j = 2 : n 
	       s = sprintf ( '%s%10f ', s, xnew(j) );
	   end;
	   disp ( s );
	end;

    conv = max ( abs ( xnew - xold ) );
	if ( conv < TOL )
	   x = xnew;
	   return
	else
	   xold = xnew;
	end;
end;
disp ( 'gauss_seidel error: maximum number of iterations exceeded' );
if ( nargout == 1 ) x = xnew; end;
	   