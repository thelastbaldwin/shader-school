precision highp float;

uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient, diffuse, lightDirection;

varying vec3 vNormal;

float lambertWeight(vec3 n, vec3 d) {
  return max(dot(n, d), 0.0);
}

float parallelDistance(
  vec3 surfacePoint,
  vec3 surfaceNormal,
  vec3 p
) {
  return dot(p - surfacePoint, surfaceNormal);
}

vec3 reflectedLight(
  vec3 normal,
  vec3 lightDirection,
  vec3 ambient,
  vec3 diffuse
) {
  float brightness = dot(normal, lightDirection);
  // equivalent
  // float brightness = lambertWeight(normal, lightDirection);
  return ambient + diffuse * max(brightness, 0.0);
}

void main() {
    vec3 reflectedL = reflectedLight(normalize(vNormal), normalize(lightDirection), ambient, diffuse);
    gl_FragColor = vec4(reflectedL, 1.0);
}
