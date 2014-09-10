precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  //from http://en.wikipedia.org/wiki/Rotation_matrix
  mat2 rot = mat2(cos(theta), -sin(theta), sin(theta), cos(theta));

  gl_Position = vec4(position * rot, 0, 1.0);
}
