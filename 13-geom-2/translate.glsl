highp mat4 translate(highp vec3 p) {

  //TODO: Construct a matrix, m, which translates all points so that p is at the origin.

  //compare to translation matrix at http://en.wikipedia.org/wiki/Translation_(geometry)
  //discrepancy is due to row major vs column major notation
  return mat4(1, 0, 0, 0,
              0, 1, 0, 0,
              0, 0, 1, 0,
              -p.x, -p.y, -p.z, 1);
}

//Do not remove this line
#pragma glslify: export(translate)
