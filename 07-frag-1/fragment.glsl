precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)

void main() {

  //TODO: Replace this with a function that draws a circle at (256.5,256.5) with radius 128
  const float CIRCLE_RADIUS = 128.0;
  const vec2 CIRCLE_CENTER = vec2(256.0, 256.0);

  if(distance(vec2(gl_FragCoord.x, gl_FragCoord.y), CIRCLE_CENTER) < CIRCLE_RADIUS) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}
