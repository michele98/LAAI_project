array[1..4] of var 0..9: d;
array[1..3] of var 0..9: dn;

function var int: convert4d(array[1..4] of var 0..9: arr) =
  arr[1] + 10*arr[2] + 100*arr[3] + 1000*arr[4];

function var int: convert3d(array[1..3] of var 0..9: arr) =
  arr[1] + 10*arr[2] + 100*arr[3];

constraint d[4] != 0;

constraint %the 0 can be in the first, second or third position
  (
    d[1] == 0 /\
    forall(i in 2..4) (
      d[i] == dn[i-1]
    )
  ) \/ (
    d[1] == dn[1] /\
    d[2] == 0 /\
    forall(i in 3..4) (
      d[i] == dn[i-1]
    )
  ) \/ (
    forall(i in 1..2) (
      d[i] == dn[i]
    ) /\
    d[3] == 0 /\
    d[4] == dn[3]
  );

constraint convert4d(d) mod convert3d(dn) == 0;
constraint convert4d(d)/convert3d(dn) == 9;

solve minimize convert4d(d);

output [
"The smallest number that satisfies the given condition is: " ++ show(convert4d(d)),
"\nwith " ++ show(convert3d(dn))
];

