#version 320 es

precision highp float;

layout(location = 0) out vec4 fragColor;

layout(location = 0) uniform float timeElapsed;
layout(location = 1) uniform vec2 size;

float random1f(vec2 st){
    return fract(sin(dot(st.xy,vec2(12.9898,78.233)))*43758.5453123);
}

float map(float v,float a,float b,float c,float d){
    float nv=(v-a)/(b-a);
    nv=pow(nv,3.);
    float o=nv*(d-c)+c;
    
    return o;
}

void main() {
    
    vec2 uv=gl_FragCoord.xy/size.xy;
    uv=uv*2.-1.;
    uv.y/=size.x/size.y;
    
    vec2 A=vec2(-.5,-.2);
    vec2 B=vec2(.5,-.2);
    vec2 C=vec2(0,.7);
    vec2 D=vec2(.5,-.8);
    vec2 E=vec2(.9,.79);
    
    float k1=.7;// size
    float k2=3.;// shape
    
    // warp domains
    vec2 uvA=uv*vec2(.69,.8);
    uvA.x+=cos(uv.y*5.+timeElapsed)*.1;
    vec2 uvB=uv*vec2(.7,.4);
    uvB.x+=sin(uv.y*4.+timeElapsed)*.1;
    vec2 uvC=uv*vec2(.6,.8);
    uvC.y+=sin(uv.x*4.+timeElapsed)*.1;
    vec2 uvD=uv*vec2(.2,.8);
    uvD.y+=sin(uv.x*4.+timeElapsed)*.1;
    vec2 uvE=uv*vec2(-1.1,.9);
    uvE.x+=sin(uv.y*4.+timeElapsed)*.1;
    
    // create shaped gradient
    float dA=max(0.,1.-pow(distance(uvA,A)/k1,k2));
    float dB=max(0.,1.-pow(distance(uvB,B)/k1,k2));
    float dC=max(0.,1.-pow(distance(uvC,C)/k1,k2));
    float dD=max(0.,1.-pow(distance(uvD,D)/k1,k2));
    float dE=max(0.,1.-pow(distance(uvE,E)/k1,k2));
    
    // smooth in, out
    dA=smoothstep(0.,1.,dA);
    dB=smoothstep(0.,1.,dB);
    dC=smoothstep(0.,1.,dC);
    dD=smoothstep(0.,1.,dD);
    dE=smoothstep(0.,1.,dE);
    
    // define colors
    
    vec3 colorA=vec3(0.5882, 0.9294, 1.0);
    vec3 colorB=vec3(0.749, 0.7176, 0.9765);
    vec3 colorC=vec3(0.6235, 1.0, 0.8941);
    vec3 colorD=vec3(1.0, 0.7059, 0.8157);
    vec3 colorE=vec3(0.6039, 0.7804, 1.0);
    
    vec3 vanta=vec3(0.3647, 1.0, 0.6941);
    
    
    // lay in color blobs
    vec3 color=vec3(0.7804, 0.7804, 0.7804);
    color=mix(color,colorA,dA);
    color=mix(color,colorB,dC);
    color=mix(color,colorC,dB);
    color=mix(color,colorD,dD);
    color=mix(color,colorE,dE);
    
    // add noise
    color+=vec3(
        random1f(uv),
        random1f(uv+1.),
        random1f(uv+2.)
    )*.2;
    
    // Output to screen
    fragColor=vec4(color,1.);
}