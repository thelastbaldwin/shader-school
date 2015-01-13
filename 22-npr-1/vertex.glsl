precision highp float;

attribute vec4 position, normal;
uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 diffuse, lightDirection;
uniform float numBands;

varying vec3 vNormal;

void main() {
  gl_Position = projection * view * model * position;

  vec4 worldNormal = normal * inverseModel;
  vNormal = worldNormal.xyz;
}
