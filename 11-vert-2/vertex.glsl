precision highp float;

attribute vec4 position;
attribute vec3 color;

varying vec3 vertexColor;

void main() {
  gl_Position = position;
  vertexColor = color;
}
