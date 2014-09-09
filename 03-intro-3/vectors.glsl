highp vec2 func(highp vec2 a, highp vec2 b) {

    //formula found here: https://proofwiki.org/wiki/Angle_Bisector_Vector
    vec2 bisector = length(a) * b + length(b) * a;
    return normalize(bisector);
}

//Do not change this line
#pragma glslify: export(func)
