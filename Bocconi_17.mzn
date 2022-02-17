int: arrLength = 18;
int: cutoff = 9;
int: base = 12;

var 0..base^2: n;

array[0..arrLength-1] of var 0..base-1: values;

constraint forall(i in 0..base-1) (count(values, i) >= 1);
constraint n^3 = sum(i in 0..cutoff-1)(values[i] * base^i);
constraint n^4 = sum(i in cutoff..arrLength-1)(values[i] * base^(i-cutoff));

solve satisfy;

output ["n = ", show(n), ", n^3 = ", show(n^3), ", n^4 = ", show(n^4)]

