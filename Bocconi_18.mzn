var 0..59: h;
var 0..60^2-1: m;
var 0..60^3-1: s;

constraint m = 60*h;
constraint s = 60*m;

constraint abs((h mod 60) - (m mod 60)) == 20;
constraint abs((h mod 60) - (s mod 60)) == 20;
constraint abs((m mod 60) - (s mod 60)) == 20;

output [show(h), show(m), show(s)]


