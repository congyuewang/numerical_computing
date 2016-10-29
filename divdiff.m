function nf = divdiff ( xi, fi )

%DIVDIFF      compute the coefficients for the Newton forward divided 
%             difference form of the interpolating polynomial 
%             associated with a given set of interpolating points 
%
%     calling sequences:
%             nf = divdiff ( xi, fi )
%             divdiff ( xi, fi )
%
%     inputs:
%             xi      vector containing the interpolating points
%             fi      vector containing function values
%                     the i-th entry in this vector is the function
%                     value associated with the i-th entry in the 'xi'
%                     vector
%
%     output:
%             nf      vector containing coefficients for the Newton 
%                     forward divided difference form of the interpolating 
%                     polynomial associated with the given set of 
%                     interpolating points 
%
%     NOTE:
%             to evaluate the Newton form, apply the routine NF_EVAL
%

n = length ( xi );
m = length ( fi );

if ( n ~= m )
   disp ( 'divdiff error: number of ordinates and number of function values must be equal' )
   return
end

nf = fi;
for j = 2:n
    for i = n:-1:j
	    nf(i) = ( nf(i) - nf(i-1) ) / ( xi(i) - xi(i-j+1) );
	end
end
