#define EG_OUTLINES_LINE_TYPE__NONE 0
#define EG_OUTLINES_LINE_TYPE__NORMAL 1
#define EG_OUTLINES_LINE_TYPE__HC_INNER 2
#define EG_OUTLINES_LINE_TYPE__HC_OUTER 3
#define EG_OUTLINES_LINE_TYPE__ENTITY_HITBOX 4


bool rougheq(vec4 color, vec4 target) {
  return all(lessThan(abs(color - target), vec4(0.0001)));
}

uint toint(vec4 col) {
   ivec4 icol = ivec4(col*255.);
   return uint((icol.r << 24) + (icol.g << 16) + (icol.b << 8) + icol.a);
}
vec4 tovec(uint col) {
    return vec4(col >> 24 % 256, (col >> 16) % 256u, (col >> 8) % 256u, col % 256u) / 255.;
}


// glsl is a stupid language
// gradient using the block_COLOURS array
vec4 drawGradient_block(float time, float smoothness) {
    vec4 gradient = vec4(0.);
    smoothness = clamp(smoothness / 2., 0.0001, 1.);
    
    float fLength = float(block_COLOURS.length());
    int indexAtTime = int(time * fLength);
    
    for(int i = indexAtTime - 1; i < indexAtTime + 1; i++) {
        float _step1 = (float(i) + (0.5 - smoothness))/fLength;
        float _step2 = (float(i) - (-smoothness - 0.5))/fLength;

        gradient = mix(
            i <= 0 ? tovec(block_COLOURS[block_COLOURS.length()-1]) : gradient,
            tovec(block_COLOURS[i]),
            smoothstep(_step1, _step2, time)
        );
    }
    
    return gradient;
}

// gradient using the hc_block_COLOURS array
vec4 drawGradient_hc_block(float time, float smoothness) {
    vec4 gradient = vec4(0.);
    smoothness = clamp(smoothness / 2., 0.0001, 1.);
    
    float fLength = float(hc_block_COLOURS.length());
    int indexAtTime = int(time * fLength);
    
    for(int i = indexAtTime - 1; i < indexAtTime + 1; i++) {
        float _step1 = (float(i) + (0.5 - smoothness))/fLength;
        float _step2 = (float(i) - (-smoothness - 0.5))/fLength;

        gradient = mix(
            i <= 0 ? tovec(hc_block_COLOURS[hc_block_COLOURS.length()-1]) : gradient,
            tovec(hc_block_COLOURS[i]),
            smoothstep(_step1, _step2, time)
        );
    }
    
    return gradient;
}

// gradient using the hc_block_outer_COLOURS array
vec4 drawGradient_hc_block_outer(float time, float smoothness) {
    vec4 gradient = vec4(0.);
    smoothness = clamp(smoothness / 2., 0.0001, 1.);
    
    float fLength = float(hc_block_outer_COLOURS.length());
    int indexAtTime = int(time * fLength);
    
    for(int i = indexAtTime - 1; i < indexAtTime + 1; i++) {
        float _step1 = (float(i) + (0.5 - smoothness))/fLength;
        float _step2 = (float(i) - (-smoothness - 0.5))/fLength;

        gradient = mix(
            i <= 0 ? tovec(hc_block_outer_COLOURS[hc_block_outer_COLOURS.length()-1]) : gradient,
            tovec(hc_block_outer_COLOURS[i]),
            smoothstep(_step1, _step2, time)
        );
    }
    
    return gradient;
}

// gradient using the hitbox_COLOURS array
vec4 drawGradient_hitbox(float time, float smoothness) {
    vec4 gradient = vec4(0.);
    smoothness = clamp(smoothness / 2., 0.0001, 1.);
    
    float fLength = float(hitbox_COLOURS.length());
    int indexAtTime = int(time * fLength);
    
    for(int i = indexAtTime - 1; i < indexAtTime + 1; i++) {
        float _step1 = (float(i) + (0.5 - smoothness))/fLength;
        float _step2 = (float(i) - (-smoothness - 0.5))/fLength;

        gradient = mix(
            i <= 0 ? tovec(hitbox_COLOURS[hitbox_COLOURS.length()-1]) : gradient,
            tovec(hitbox_COLOURS[i]),
            smoothstep(_step1, _step2, time)
        );
    }
    
    return gradient;
}