precision highp float;

uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient, diffuse, lightDirection;

varying vec3 vNormal;

float lambertWeight(vec3 n, vec3 d) {
  return max(dot(n, d), 0.0);
}


void main() {
    gl_FragColor = vec4(ambient + lambertWeight(normalize(vNormal), normalize(lightDirection)) * diffuse, 1.0);
}
