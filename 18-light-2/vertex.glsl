precision highp float;

attribute vec4 position, normal;
uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient, diffuse, lightDirection;

varying vec3 vNormal;

void main() {
  gl_Position = projection * view * model * position;
  vNormal = normal.xyz;
}
