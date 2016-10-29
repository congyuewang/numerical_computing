function c = bisect_2(a, b,fa,fb, delta)

%% Remember that the function statement must be at the top of
%% your m-file! Comments come after the function statement.
%%
%%
%% bisect.m
%% 
%% Implements the bisection method
%%
%% Input: 	a 	the left endpoint of the interval
%% 		b 	the right endpoint of the interval
%% 		delta	the tolerance/accuracy we desire
%%
%% Output:	c 	the approxmiation to the root of f
%% 
%% Syntax:	bisect(a, b, delta)
%%

%%



if  sign(fa) == sign(fb)	%% sanity check: f(a) and f(b) must have different
				
	error('f must have different signs at the endpoints a and b.  Aborting.')
end
fprintf('initial interval:  a=%d, b=%d, fa=%d, fb=%d\n',a,b,fa,fb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                       %%
%% main routine                                                          %%
%%                                                                       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while ( abs(b - a) > 2*delta )	%% While the size of the interval is
				%% larger than the tolerance

	c = (b + a)/2;		%% Set c to be the midpoint of the interval

	fc = f(c);		%% Calculate the value of f at c

	if sign(fc) ~= sign(fb)	%% If f(c) and f(b) are of different sign, then
				%% f must have a zero between c and b (by the 
				%% Intermediate Value Theorem).
		a = c; 	fa = fc;
	else 			%% This is the case where f(a) and f(c) are of 
				%% different sign.
			        %%	
		b = c;	fb = fc;
	end
				%% Repeat the algorithm on the new interval
        fprintf('   a=%d, b=%d, fa=%d, fb=%d\n',a,b,fa,fb)
end
%%
%% put subroutines here
%%
%%
