#version 320 es
#define S(a,b,t)smoothstep(a,b,t)

precision highp float;

layout(location=0)out vec4 fragColor;

layout(location=0)uniform sampler2D image;
layout(location=1)uniform float timeElapsed;
layout(location=2)uniform vec2 size;

float random1f(vec2 st){
    return fract(sin(dot(st.xy,vec2(222.9878,178.233)))*93758.5453123);
}

mat2 Rot(float a)
{
  float s=sin(a);
  float c=cos(a);
  return mat2(c,-s,s,c);
}

void main(){
    
    vec2 uv=gl_FragCoord.xy/size.xy;
    
    vec4 img=texture(image,uv);
    
    vec3 comp=img.xyz;
    
    comp+=vec3(
        random1f(uv)*.21,
        random1f(uv+1.)*.72,
        random1f(uv+2.)*.07
    );
    
    comp.r=.21*comp.r+.72*comp.g+.07*comp.b-.15;
    comp.gb=comp.rr;
    
    comp*=img.a;
    
    // Output to screen
    fragColor=vec4(comp.r,comp.g,comp.b,img.a);
}