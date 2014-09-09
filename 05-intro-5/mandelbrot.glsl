vec2 mandelbrot(vec2 z, vec2 c) {
  return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
}

bool mandelbrot(highp vec2 c) {

  vec2 z = vec2(0.0);
  const int ITER_COUNT = 100;

  for(int i = 0; i < ITER_COUNT; ++i){
    z = mandelbrot(z, c);
  }

  return length(z) < 2.0;
}

//Do not change this line or the name of the above function
#pragma glslify: export(mandelbrot)
