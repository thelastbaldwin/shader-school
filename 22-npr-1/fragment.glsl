precision highp float;

uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 diffuse, lightDirection;
uniform float numBands;

varying vec3 vNormal;

float celIntensity(vec3 n, vec3 d, float numBands){
    return ceil(max(dot(n, d), 0.0) * numBands) / numBands;
}

void main() {
  gl_FragColor = vec4(celIntensity(normalize(vNormal), normalize(lightDirection), numBands) * diffuse, 1);
}
