#version 150

precision highp float;








#define hue(v)  ((.6+.6*cos(6.*(v)+vec4(0, 23, 21, 1)))+vec4(0., 0., 0., 1.) )

#define finalize() { \
    vertexDistance=length((ModelViewMat*vertex).xyz); \
    texCoord0=UV0; \
}

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;


uniform sampler2D Sampler0;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void f_67127145(inout vec4 vertex) {
    gl_Position=ProjMat*ModelViewMat*vertex;
}

void f_7091b92d() {
    vertexColor=Color*texelFetch(Sampler2, UV2 / 16, 0);
}


void f_367de76f(inout vec4 vertex) {
    f_67127145(vertex);
    if(Position.z==0. && gl_Position.x > .95) {
        vertexColor=vec4(0);
    }else{
        f_7091b92d();
    }
    finalize();
}



void f_d85bd67c() {
    vertexColor=hue(gl_Position.x+GameTime*1000.)*texelFetch(Sampler2, UV2 / 16, 0);
}

void f_2db987ef() {
    gl_Position.y+=sin(GameTime*12000.+(gl_Position.x*6)) / 150.;
}

void f_9a38f3d0(inout vec4 vertex) {
    f_67127145(vertex);
    f_d85bd67c();
    finalize();
}

void f_7ab285bb(inout vec4 vertex) {
    f_67127145(vertex);
    f_7091b92d();
    f_2db987ef();
    finalize();
}

void f_b803f38d(inout vec4 vertex) {
    f_67127145(vertex);
    f_2db987ef();
    f_d85bd67c();
    finalize();
}

void f_612b1cee(inout vec4 vertex) {
    f_7091b92d();
    float vertexId=mod(gl_VertexID, 4.);
    if(vertex.z <= 0.) {
        if(vertexId==3. || vertexId==0.) {
            vertex.y+=cos(GameTime*12000. / 4)*.1;
            vertex.y+=max(cos(GameTime*12000. / 4)*.1, 0.);
        }
    }else{
        if(vertexId==3. || vertexId==0.) {
            vertex.y-=cos(GameTime*12000. / 4)*3;
            vertex.y-=max(cos(GameTime*12000. / 4)*4, 0.);
        }
    }
    f_67127145(vertex);
    finalize();
}

void f_354a5631(inout vec4 vertex) {
    float vertexId=mod(gl_VertexID, 4.);
    if(vertex.z <= 0.) {
        if(vertexId==3. || vertexId==0.) {
            vertex.y+=cos(GameTime*12000. / 4)*.1;
            vertex.y+=max(cos(GameTime*12000. / 4)*.1, 0.);
        }
    }else{
        if(vertexId==3. || vertexId==0.) {
            vertex.y-=cos(GameTime*12000. / 4)*3;
            vertex.y-=max(cos(GameTime*12000. / 4)*4, 0.);
        }
    }
    f_d85bd67c();
    f_67127145(vertex);
    finalize();
}

void f_804860cb(inout vec4 vertex, float speed) {
    f_67127145(vertex);
    float blink=abs(sin(GameTime*12000.*speed));
    vertexColor=Color*blink*texelFetch(Sampler2, UV2 / 16, 0);
    finalize();
}



void f_a9e6ed6d(inout vec4 vertex) {
    f_67127145(vertex);
    f_7091b92d();
    vertexColor=vec4(1, 1, 1, vertexColor.a); 
    finalize();
}


void main() {
    vec4 vertex=vec4(Position, 1.);
    ivec3 iColor=ivec3(Color.xyz*255+vec3(.5));

    
    
    if(iColor==ivec3(255, 85, 85))
    {
        f_367de76f(vertex);
        return;
    }
    

    
    if(fract(Position.z) < .1) {
        
        
        if(iColor==ivec3(19, 23, 9))
        {
            gl_Position=vec4(2, 2, 2, 1);
            f_7091b92d();
            finalize();
            return;
        }
        

        
        
        if(iColor==ivec3(57, 63, 63)) {
            
            
            f_67127145(vertex);
            f_7091b92d();
            finalize();
            return;
        }

        
        if(iColor==ivec3(57, 63, 62)) {
            f_7ab285bb(vertex);
            return;
        }

        
        if(iColor==ivec3(57, 62, 63)) {
            
            f_7ab285bb(vertex);
            return;
        }

        
        if(iColor==ivec3(57, 62, 62)) {
            f_612b1cee(vertex);
            return;
        }

        
        if(iColor==ivec3(57, 61, 63)) {
            f_612b1cee(vertex);
            return;
        }

        
        if(iColor==ivec3(57, 61, 62)) {
            f_804860cb(vertex, .5);
            return;
        }

        

        
    }

    
    
    if(iColor==ivec3(78, 92, 36))
    {
        f_a9e6ed6d(vertex);
        return;
    }
    

    
    
    
    if(iColor==ivec3(230, 255, 254))
    {
        f_9a38f3d0(vertex);
        return;
    }

    
    if(iColor==ivec3(230, 255, 250))
    {
        f_7ab285bb(vertex);
        return;
    }

    
    if(iColor==ivec3(230, 251, 254))
    {
        f_b803f38d(vertex);
        return;
    }

    
    if(iColor==ivec3(230, 251, 250))
    {
        f_612b1cee(vertex);
        return;
    }

    
    if(iColor==ivec3(230, 247, 254))
    {
        f_354a5631(vertex);
        return;
    }

    
    if(iColor==ivec3(230, 247, 250))
    {
        f_804860cb(vertex, .5);
        return;
    }

    
    

    
    
    
    if(iColor==ivec3(255, 255, 254))
    {
        f_9a38f3d0(vertex);
        return;
    }

    
    if(iColor==ivec3(255, 255, 253))
    {
        f_7ab285bb(vertex);
        return;
    }

    
    if(iColor==ivec3(255, 255, 25))
    {
        f_b803f38d(vertex);
        return;
    }

    
    if(iColor==ivec3(255, 255, 251))
    {
        f_612b1cee(vertex);
        return;
    }

    
    if(iColor==ivec3(255, 254, 254))
    {
        f_354a5631(vertex);
        return;
    }
    

    
    f_67127145(vertex);
    f_7091b92d();
    finalize();
}