precision highp float;

#define WHITE vec4(1.0, 1.0, 1.0, 1.0)

void main() {
  const float CHECKER_SIZE = 16.0;
  float remainder = floor(gl_FragCoord.x/CHECKER_SIZE) + floor(gl_FragCoord.y/CHECKER_SIZE);
  //diagonal bands
  //remainder = floor((gl_FragCoord.x + gl_FragCoord.y)/CHECKER_SIZE);
  //scanlines
  //remainder = floor(gl_FragCoord.y/CHECKER_SIZE);

  if(mod(remainder, 2.0) == 0.0){
    gl_FragColor = WHITE;
  }else{
    discard;
  }
}
