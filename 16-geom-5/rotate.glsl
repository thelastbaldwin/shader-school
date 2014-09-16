highp mat4 transpose(in highp mat4 inMatrix) {
highp vec4 i0 = inMatrix[0];
highp vec4 i1 = inMatrix[1];
highp vec4 i2 = inMatrix[2];
highp vec4 i3 = inMatrix[3];

highp mat4 outMatrix = mat4(
                 vec4(i0.x, i1.x, i2.x, i3.x),
                 vec4(i0.y, i1.y, i2.y, i3.y),
                 vec4(i0.z, i1.z, i2.z, i3.z),
                 vec4(i0.w, i1.w, i2.w, i3.w)
                 );
return outMatrix;
}

highp mat4 rotation(highp vec3 n, highp float theta) {

//sources: http://en.wikipedia.org/wiki/Rotation_matrix
//http://www.neilmendoza.com/glsl-rotation-about-an-arbitrary-axis/

  n = normalize(n);
    float s = sin(theta);
    float c = cos(theta);
    float oc = 1.0 - c;
    
    return transpose(mat4(oc * n.x * n.x + c,  oc * n.x * n.y - n.z * s,  oc * n.z * n.x + n.y * s,  0.0,
                oc * n.x * n.y + n.z * s, oc * n.y * n.y + c, oc * n.y * n.z - n.x * s, 0.0,
                oc * n.z * n.x - n.y * s, oc * n.y * n.z + n.x * s,  oc * n.z * n.z + c, 0.0,
                0.0, 0.0, 0.0, 1.0));
}

#pragma glslify: export(rotation)