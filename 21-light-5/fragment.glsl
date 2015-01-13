precision highp float;

#pragma glslify: PointLight = require(./light.glsl)

uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient;
uniform PointLight lights[4];

varying vec3 fragNormal, fragPosition, lightDirections[4];

void main() {
  vec3 eyeDirection = normalize(fragPosition);
  vec3 normal = normalize(fragNormal);
  vec4 finalColor = vec4(ambient, 0);
  float lambert, phong;
  vec3 light;

  for(int i = 0; i < 4; ++i){
    light = normalize(lightDirections[i]);
    lambert = dot(normal, light);
    float phong = pow(max(dot(reflect(light, normal), eyeDirection), 0.0), lights[i].shininess);
    vec4 lightContribution = vec4(lights[i].diffuse * lambert + lights[i].specular * phong, 0.0);
    finalColor += lightContribution;
  }

  gl_FragColor = finalColor;
}
