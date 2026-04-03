#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:globals.glsl> // GameTime etc.

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler1;
uniform sampler2D Sampler2;

out vec4 vertexColor;
out vec4 lightMapColor;
out vec4 overlayColor;
out vec2 texCoord0;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;

flat out vec4 tint;
flat out vec3 vNormal;

uniform mat3 IViewRotMat;
out vec2 origTexCoord0;
flat out int isTopLayer;
flat out int isHead;

flat out vec2 textureDimensions;
flat out int isLeatherLayer;

out float vGameTime;

#define VANILLA_SKIN_TEX_SIZE 64.
#define BONE_TEX_SIZE 16.
#define BONE_TEX_SIZE_NORM BONE_TEX_SIZE / VANILLA_SKIN_TEX_SIZE
#define PER_BONE_VTXS 24
#define PER_BONE_VTXS_BOTH_LAYERS 48

#define IS_NOT_GUI ProjMat[3][2] != -2.
#define MIGHT_BE_TOP_LAYER UV0.x > 0.5
#define b1 gl_VertexID % 12

#define handle_top_layer(index) if (a2 == index && MIGHT_BE_TOP_LAYER) isTopLayer = 1;

#define NIGHT_COLOR normalize(vec3(42.0 / 255.0, 42.0 / 255.0, 72.0 / 255.0))
#define DAY_COLOR normalize(vec3(1.0, 1.0, 1.0))
float qq1(sampler2D lightMap) {
    vec3 sunLight = normalize(texture(lightMap, vec2(0.5 / 16.0, 15.5 / 16.0)).rgb);
    return clamp(pow(length(sunLight -  NIGHT_COLOR) / length(DAY_COLOR -  NIGHT_COLOR), 4.0), 0.0, 1.0);
}

void main() {
    isTopLayer = 0;
    isHead = 0;
    origTexCoord0 = UV0;

    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.);

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
#ifdef NO_CARDINAL_LIGHTING
    vertexColor = Color;
#else
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
#endif
    lightMapColor = texelFetch(Sampler2, UV2 / 16, 0);
    overlayColor = texelFetch(Sampler1, UV1, 0);

    texCoord0 = UV0;
#ifdef APPLY_TEXTURE_MATRIX
    texCoord0 = (TextureMat * vec4(UV0, 0.0, 1.0)).xy;
#endif

    vNormal = Normal;
    tint = Color;

    vGameTime = GameTime;
    // Fallback for AMD GPUs bug.
    if(vGameTime <= 0) {
        vGameTime = 0.5;
    }

    isLeatherLayer = 0;
    // If it's leather_layer_X.png texture
    if(texelFetch(Sampler0, ivec2(0, 1), 0) == vec4(1.0) && texelFetch(Sampler0, ivec2(7, 7), 0) == vec4(0.0)) {
        isLeatherLayer = 1;
    }

    
}