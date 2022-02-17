int: perimeterSquares = 18;

var 2..perimeterSquares: length;
var 2..perimeterSquares: width;

constraint length + width == perimeterSquares/2;

solve maximize (length-1)*(width-1);

output [
"Surrounded a " ++ show(length-1) ++ "x" ++ show(width-1),
" rectangle of area " ++ show((length-1)*(width-1))
];

