var int: n;
array[0..9] of var 0..9: values;

constraint n>0;

constraint forall(i in 0..3)(values[i] = n^3 div 10^i mod 10);
%constraint forall(i in 0..3)(n^3 div 10^i > 0);
constraint forall(i in 4..9)(values[i] = n^4 div 10^(i-4) mod 10);
%constraint forall(i in 4..9)(n^4 div 10^(i-4) > 0);
constraint forall(i in 0..9)(count(values, i) >= 1);

solve satisfy;

%output [show(values)]
output ["n = ", show(n), ", n^3 = ", show(n^3), ", n^4 = ", show(n^4)]


