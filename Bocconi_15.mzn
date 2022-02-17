var 10..202: height;
var 10..202: width;

constraint height*width == 2021;
constraint width > height;

solve satisfy;

output["The effective area that has to be cut is ",
  show((width-5)*height) ++ " m^2."
]
