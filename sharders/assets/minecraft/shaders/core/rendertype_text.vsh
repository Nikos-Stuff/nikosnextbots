#version 150
#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;
uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform float GameTime;
uniform int FogShape;
uniform vec2 ScreenSize;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out float depthLevel;

void main() {
    vec4 vertex = vec4(Position, 1.0);
    vertexDistance = fog_distance(Position, FogShape);
    depthLevel = Position.z;
    texCoord0 = UV0;
    if (Color.xyz == vec3(255., 254., 253.) / 255.) {
        vertexColor = Color*texelFetch(Sampler2, UV2 / 16, 0);
        vertex.y += 1;
        vertex.x += 1;
        gl_Position = ProjMat * ModelViewMat * vertex;
    } else if (Color.xyz == vec3(254., 254., 254.) / 255.) {
        vertexColor = Color*texelFetch(Sampler2, UV2 / 16, 0);
        vertex.z *= 1.001;
        vertex.x *= 1.001;
        gl_Position = ProjMat * ModelViewMat * vertex;
    } else if (Color.xyz == vec3(253., 254., 254.) / 255.) {
        vertexColor = Color*texelFetch(Sampler2, UV2 / 16, 0);
        vertex.z *= 1.001001;
        vertex.x *= 1.001001;
        gl_Position = ProjMat * ModelViewMat * vertex;
    } else {
        vertexColor = Color*texelFetch(Sampler2, UV2 / 16, 0);
        gl_Position = ProjMat * ModelViewMat * vertex;
    }
}
