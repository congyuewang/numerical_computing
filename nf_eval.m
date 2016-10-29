function y = nf_eval ( xi, nf, t )

%NF_EVAL      evaluate the Newton forward divided difference form of the 
%             interpolating polynomial associated with a given set of 
%             interpolating points at a specified set of values for the
%             independent variable
%
%     calling sequences:
%             y = nf_eval ( xi, nf, t )
%             nf_eval ( xi, nf, t )
%
%     inputs:
%             xi      vector containing the interpolating points
%             nf      vector containing coefficients for the Newton 
%                     forward divided difference form of the interpolating 
%                     polynomial associated with the given set of 
%                     interpolating points 
%                     - typically, this would be the output from the 
%                       routine DIVDIFF
%             t       value(s) of independent variable at which to
%                     evalaute the interpolating polynomial
%                     - may be a scalar or a vector
%
%     output:
%             y       value(s) of the interpolating polynomial
%
%     NOTE:
%             this is a companion routine to the routine DIVDIFF
%

n   = length ( t );
deg = length(nf) - 1;

y = nf(deg+1) * ones(1,n);
for j = deg : -1 : 1
	y = y .* ( t - xi(j) * ones(1,n) ) + nf(j) * ones(1,n);
end