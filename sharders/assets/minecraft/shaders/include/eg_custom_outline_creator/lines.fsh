flat in int eg_outlines_lineType;
in float eg_outlines_lineGradient;
in vec3 eg_outlines_vertexPos;

in vec4 eg_outlines_pos1;
in vec4 eg_outlines_pos2;
flat in vec4 eg_outlines_pos3;


float _gradientMix(bool animAlongLines, float lineGradient, float lineLength, float fragDistance) {
    return animAlongLines ? lineGradient * lineLength : fragDistance / 2.0;
}

float _gradientAnimation(float time, bool animAlongLines, float gradientMix, bool animWithDistance, float animSpeed, int animDirection, float colourPeriod) {
    float animMix = animAlongLines ? gradientMix : gradientMix * int(animWithDistance);
    return fract((animMix + time * animSpeed * animDirection) / colourPeriod);
}

vec4 main_modifyLineColour(vec4 colourAttribute, float gameTime) {
    if(eg_outlines_lineType == EG_OUTLINES_LINE_TYPE__NONE) return colourAttribute;

    vec3 pos = eg_outlines_pos3.w == 0 ? eg_outlines_pos1.xyz / eg_outlines_pos1.w : eg_outlines_pos2.xyz / eg_outlines_pos2.w;
    float lineLength = round(length(pos - eg_outlines_pos3.xyz) * 0x1000) / 0x1000;
    float fragDistance = length(eg_outlines_vertexPos);

    vec4 gradient = colourAttribute;
    float gradientMix = 0.0;
    float gradientAnimation = 0.0;

    switch (eg_outlines_lineType) {
        case EG_OUTLINES_LINE_TYPE__NORMAL:
            gradientMix = _gradientMix(
                block_ANIMATE_ALONG_LINES, 
                eg_outlines_lineGradient, 
                lineLength, 
                fragDistance
            );
            gradientAnimation = _gradientAnimation(
                gameTime, 
                block_ANIMATE_ALONG_LINES, 
                gradientMix, 
                block_ANIMATE_WITH_DISTANCE, 
                block_ANIM_SPEED, 
                block_ANIM_DIRECTION, 
                float(block_COLOUR_PERIOD)
            );
            gradient = drawGradient_block(gradientAnimation, block_SMOOTHNESS);
            break;
        case EG_OUTLINES_LINE_TYPE__HC_INNER:
            gradientMix = _gradientMix(
                hc_block_ANIMATE_ALONG_LINES, 
                eg_outlines_lineGradient, 
                lineLength, 
                fragDistance
            );
            gradientAnimation = _gradientAnimation(
                gameTime, 
                hc_block_ANIMATE_ALONG_LINES, 
                gradientMix, 
                hc_block_ANIMATE_WITH_DISTANCE, 
                hc_block_ANIM_SPEED, 
                hc_block_ANIM_DIRECTION, 
                float(hc_block_COLOUR_PERIOD)
            );
            gradient = drawGradient_hc_block(gradientAnimation, hc_block_SMOOTHNESS);
            break;
        case EG_OUTLINES_LINE_TYPE__HC_OUTER:
            gradientMix = _gradientMix(
                hc_block_outer_ANIMATE_ALONG_LINES, 
                eg_outlines_lineGradient, 
                lineLength, 
                fragDistance
            );
            gradientAnimation = _gradientAnimation(
                gameTime, 
                hc_block_outer_ANIMATE_ALONG_LINES, 
                gradientMix, 
                hc_block_outer_ANIMATE_WITH_DISTANCE, 
                hc_block_outer_ANIM_SPEED, 
                hc_block_outer_ANIM_DIRECTION, 
                float(hc_block_outer_COLOUR_PERIOD)
            );
            gradient = drawGradient_hc_block_outer(gradientAnimation, hc_block_outer_SMOOTHNESS);
            break;
        case EG_OUTLINES_LINE_TYPE__ENTITY_HITBOX:
            gradientMix = _gradientMix(
                hitbox_ANIMATE_ALONG_LINES, 
                eg_outlines_lineGradient, 
                lineLength, 
                fragDistance
            );
            gradientAnimation = _gradientAnimation(
                gameTime, 
                hitbox_ANIMATE_ALONG_LINES, 
                gradientMix, 
                hitbox_ANIMATE_WITH_DISTANCE, 
                hitbox_ANIM_SPEED, 
                hitbox_ANIM_DIRECTION, 
                float(hitbox_COLOUR_PERIOD)
            );
            gradient = drawGradient_hitbox(gradientAnimation, hitbox_SMOOTHNESS);
            break;
    }

    return gradient;
}