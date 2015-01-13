precision highp float;

#pragma glslify: PointLight = require(./light.glsl)

attribute vec4 position, normal;

uniform mat4 model, view, projection;
uniform mat4 inverseModel, inverseView, inverseProjection;
uniform vec3 ambient;
uniform PointLight lights[4];

varying vec3 fragNormal, fragPosition, lightDirections[4];

void main() {
    vec4 viewPosition = view * model * position;
    vec4 viewNormal = normal * inverseModel * inverseView;

    gl_Position = projection * viewPosition;
    fragNormal = viewNormal.xyz;
    fragPosition = viewPosition.xyz;

    for(int i = 0; i < 4; ++i){
        lightDirections[i] = (view * vec4(lights[i].position, 1.0)).xyz - viewPosition.xyz;
    }
}
