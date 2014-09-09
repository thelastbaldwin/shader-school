bool inBox(highp vec2 lo, highp vec2 hi, highp vec2 x) {

  //Test if the point x is inside the box bounded by [lo, hi]
  if(all(greaterThanEqual(x, lo)) && all(lessThanEqual(x, hi))){
    return true;
  }

  return false;
}


//Do not change this line or the name of the above function
#pragma glslify: export(inBox)
