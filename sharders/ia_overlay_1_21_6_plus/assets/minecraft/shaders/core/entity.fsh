#version 150
#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

//%START_CUSTOM_ARMORS_VARS%
#define V1 16
#define V2 50
#define TEX_WIDTH 128
#define TEX_HEIGHT 32
//%END_CUSTOM_ARMORS_VARS%

uniform sampler2D Sampler0;

in float vertexDistance;
in vec4 vertexColor;
in vec4 lightMapColor;
in vec4 overlayColor;
in vec2 texCoord0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;

out vec4 fragColor;

flat in vec4 tint;
flat in vec3 vNormal;

// Emote stuff
in vec2 origTexCoord0;
flat in int isTopLayer;
flat in int isHead;

flat in vec2 textureDimensions;
flat in int isLeatherLayer;
in float vGameTime;

void main() {
    vec4 color;
    //%START_CUSTOM_ARMORS%
#if defined(NO_OVERLAY) && defined(ALPHA_CUTOUT)
    if(isLeatherLayer == 1.0 && tint != vec4(0)) {
        ivec2 atlasSize = textureSize(Sampler0, 0);
        if(atlasSize == ivec2(TEX_WIDTH, TEX_HEIGHT)) {
            float armorAmount = atlasSize.x / (V1 * 4.0);
            float maxFrames = atlasSize.y / (V1 * 2.0);
            vec2 coords = texCoord0;
            coords.x /= armorAmount;
            coords.y /= maxFrames;
            if (texelFetch(Sampler0, ivec2(0, 1), 0) == vec4(1)) {
                vec4 textureProperties = vec4(0);
                vec4 customColor = vec4(0);
                float h_offset = 1.0 / armorAmount;
                vec2 nextFrame = vec2(0);
                float interpolClock = 0;
                vec4 vtc = vertexColor;
                for (int i = 1; i < (armorAmount + 1); i++) {
                    customColor = texelFetch(Sampler0, ivec2(V1 * 4 * i + 0.5, 0), 0);
                    if (tint == customColor) {
                        coords.x += (h_offset * i);
                        vec4 animInfo = texelFetch(Sampler0, ivec2(V1 * 4 * i + 1.5, 0), 0);
                        animInfo.rgb *= animInfo.a * 255;
                        textureProperties = texelFetch(Sampler0, ivec2(V1 * 4 * i + 2.5, 0), 0);
                        textureProperties.rgb *= textureProperties.a * 255;
                        if (animInfo != vec4(0)) {
                            float timer = floor(mod(vGameTime * V2 * animInfo.g, animInfo.r));
                            if (animInfo.b > 0) interpolClock = fract(vGameTime * V2 * animInfo.g);
                            float v_offset = (V1 * 2.0) / atlasSize.y * timer;
                            nextFrame = coords;
                            coords.y += v_offset;
                            nextFrame.y += (V1 * 2.0) / atlasSize.y * mod(timer + 1, animInfo.r);
                        }
                        break;
                    }
                }
                if (textureProperties.g == 1) {
                    if (textureProperties.r > 1) {
                        vtc = tint;
                    } else if (textureProperties.r == 1) {
                        if (texture(Sampler0, vec2(coords.x + h_offset, coords.y)).a != 0) {
                            vtc = tint * texture(Sampler0, vec2(coords.x + h_offset, coords.y)).a;
                        }
                    }
                } else if (textureProperties.g == 0) {
                    if (textureProperties.r > 1) {
                        vtc = vec4(1);
                    } else if (textureProperties.r == 1) {
                        if (texture(Sampler0, vec2(coords.x + h_offset, coords.y)).a != 0) {
                            vtc = vec4(1) * texture(Sampler0, vec2(coords.x + h_offset, coords.y)).a;
                        } else {
                            vtc = minecraft_mix_light(Light0_Direction, Light1_Direction, vNormal, vec4(1)) * lightMapColor;
                        }
                    } else {
                        vtc = minecraft_mix_light(Light0_Direction, Light1_Direction, vNormal, vec4(1)) * lightMapColor;
                    }
                } else {
                    vtc = minecraft_mix_light(Light0_Direction, Light1_Direction, vNormal, vec4(1)) * lightMapColor;
                }
                vec4 armor = mix(texture(Sampler0, coords), texture(Sampler0, nextFrame), interpolClock);
                if (coords.x < (1 / armorAmount))
                color = armor * vertexColor * ColorModulator;
                else
                color = armor * vtc * ColorModulator;

                if (color.a < 0.1) discard;
                fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);

                return;
            }
        }
    }
#endif
    //%END_CUSTOM_ARMORS%

    if (isHead == 1 && gl_FrontFacing == false) discard;

    vec2 UV = texCoord0;
    if (isTopLayer == 1 || origTexCoord0.y >= 0.25)
    UV = origTexCoord0;

    // Vanilla shit
    color = texture(Sampler0, UV);
#ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT) {
        discard;
    }
#endif
    color *= vertexColor * ColorModulator;
#ifndef NO_OVERLAY
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
#endif
#ifndef EMISSIVE
    color *= lightMapColor;
#endif
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}