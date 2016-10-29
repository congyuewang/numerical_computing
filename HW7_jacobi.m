clear all
A = [ 8   -1    3   -1;
     -1    6    2    0;
      3    2    9    1;
     -1    0    1    7];

epsilon = 1e-16;
show = 1
[V,D] = jacobi2(A,epsilon,show);