flat out int eg_outlines_lineType;
out float eg_outlines_lineGradient;
out vec3 eg_outlines_vertexPos;

out vec4 eg_outlines_pos1;
out vec4 eg_outlines_pos2;
flat out vec4 eg_outlines_pos3;


int _getOutlineType(float lineWidth, vec4 colourAttribute) {
    if(toint(colourAttribute) == 0x00000066u) {
        return EG_OUTLINES_LINE_TYPE__NORMAL;
    } else if(toint(colourAttribute) == 0x57ffe1ffu) {
        return EG_OUTLINES_LINE_TYPE__HC_INNER;
    } else if(toint(colourAttribute) == 0x000000ffu && lineWidth >= 6.99 && lineWidth <= 7.01) {
        return EG_OUTLINES_LINE_TYPE__HC_OUTER;
    } else if(
        toint(colourAttribute) == 0xffffffffu || // white lines
        (hitbox_APPLY_TO_ALL_LINES && toint(colourAttribute) == 0xff0000ffu) || // red lines
        (hitbox_APPLY_TO_ALL_LINES && toint(colourAttribute) == 0x0000ffffu) || // blue lines
        (hitbox_APPLY_TO_ALL_LINES && toint(colourAttribute) == 0xffff00ffu) // yellow lines
    ) {
        return EG_OUTLINES_LINE_TYPE__ENTITY_HITBOX;
    }
    return EG_OUTLINES_LINE_TYPE__NONE;
}

float _getNewWidthForType(int lineType, float originalWidth, float sphericalDistance) {
    float newWidth = originalWidth;
    switch (lineType) {
        case EG_OUTLINES_LINE_TYPE__NONE:
            return originalWidth;
        case EG_OUTLINES_LINE_TYPE__NORMAL:
            newWidth = float(block_LINE_THICKNESS);
            break;
        case EG_OUTLINES_LINE_TYPE__HC_INNER:
            newWidth = float(hc_block_LINE_THICKNESS);
            break;
        case EG_OUTLINES_LINE_TYPE__HC_OUTER:
            newWidth = float(hc_block_outer_LINE_THICKNESS);
            break;
        case EG_OUTLINES_LINE_TYPE__ENTITY_HITBOX:
            newWidth = float(hitbox_LINE_THICKNESS);
            break;
    }
    return sphericalDistance > 7 ? clamp(newWidth, 0.0, 1.0) : newWidth;
}

float main_modifyLineWidth(float lineWidth, vec4 colourAttribute, vec3 positionAttribute, float gameTime) {
    float sphericalDistance = length(positionAttribute);

    eg_outlines_lineType = _getOutlineType(lineWidth, colourAttribute);
    float newLineWidth = _getNewWidthForType(eg_outlines_lineType, lineWidth, sphericalDistance);

    int id = gl_VertexID % 4;
    eg_outlines_lineGradient = float(id == 0 || id == 1);

    // for line length calculations, credits: https://github.com/DartCat25
    eg_outlines_pos1 = eg_outlines_pos2 = vec4(0);
    eg_outlines_pos3 = vec4(positionAttribute, id == 1);
    if (id == 0) eg_outlines_pos1 = vec4(positionAttribute, 1);
    if (id == 2) eg_outlines_pos2 = vec4(positionAttribute, 1);

    return newLineWidth;
}

vec4 main_setVertexPosVarying(vec4 vertPos) {
    eg_outlines_vertexPos = vertPos.xyz;
    return vertPos;
}

void main_modifyDepth() {
    if(
        (eg_outlines_lineType == EG_OUTLINES_LINE_TYPE__NORMAL && block_IGNORES_DEPTH) ||
        (eg_outlines_lineType == EG_OUTLINES_LINE_TYPE__HC_INNER && hc_block_IGNORES_DEPTH) ||
        (eg_outlines_lineType == EG_OUTLINES_LINE_TYPE__HC_OUTER && hc_block_outer_IGNORES_DEPTH)
    ) {
        gl_Position.z *= 0.01;
    }
}
