#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

#moj_import <minecraft:globals.glsl>
#moj_import <minecraft:eg_custom_outline_creator/config.glsl>
#moj_import <minecraft:eg_custom_outline_creator/util.glsl>
#moj_import <minecraft:eg_custom_outline_creator/lines.fsh>

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;

out vec4 fragColor;

void main() {
    vec4 color = main_modifyLineColour(vertexColor, GameTime) * ColorModulator;
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
