array[1..6] of var 0..9: timeArray;

function var int: getHour(array[1..6] of var int: timeArray) =
  10*timeArray[1] + timeArray[2];

function var int: getMinute(array[1..6] of var int: timeArray) =
  10*timeArray[3] + timeArray[4];

function var int: getSecond(array[1..6] of var int: timeArray) =
  10*timeArray[5] + timeArray[6];


constraint getHour(timeArray) < 24;
constraint getMinute(timeArray) < 60;
constraint getSecond(timeArray) < 60;

constraint exists(i in 1..6) (timeArray[i] == 0);
constraint exists(i in 1..6) (timeArray[i] == 1);
constraint exists(i in 1..6) (timeArray[i] == 2);
constraint exists(i in 1..6) (timeArray[i] == 3);
constraint exists(i in 1..6) (timeArray[i] == 4);
constraint exists(i in 1..6) (timeArray[i] == 5);

solve satisfy;

output[show(getHour(timeArray)) ++ ".",
  show(getMinute(timeArray)) ++ ".",
  show(getSecond(timeArray))
]



