#version 320 es
#define S(a,b,t) smoothstep(a,b,t)

precision highp float;

layout(location=0)out vec4 fragColor;

layout(location=0)uniform float timeElapsed;
layout(location=1)uniform vec2 size;
layout(location=2)uniform vec3 colorA;
layout(location=3)uniform vec3 colorB;
layout(location=4)uniform vec3 colorC;
layout(location=5)uniform vec3 colorD;

float random1f(vec2 st){
    return fract(sin(dot(st.xy, vec2(22.9878, 178.233))) * 93758.5453123);
}

mat2 Rot(float a)
{
    float s=sin(a);
    float c=cos(a);
    return mat2(c,-s,s,c);
}

vec2 hash(vec2 p)
{
    p=vec2(dot(p,vec2(2127.1,81.17)),dot(p,vec2(1269.5,283.37)));
    return fract(sin(p)*43758.5453);
}

float noise(in vec2 p)
{
    vec2 i=floor(p);
    vec2 f=fract(p);
    
    vec2 u=f*f*(3.-2.*f);
    
    float n=mix(mix(dot(-1.+2.*hash(i+vec2(0.,0.)),f-vec2(0.,0.)),
    dot(-1.+2.*hash(i+vec2(1.,0.)),f-vec2(1.,0.)),u.x),
    mix(dot(-1.+2.*hash(i+vec2(0.,1.)),f-vec2(0.,1.)),
    dot(-1.+2.*hash(i+vec2(1.,1.)),f-vec2(1.,1.)),u.x),u.y);
    return .5+.5*n;
}

void main(){

    vec2 uv = gl_FragCoord.xy/size.xy;
    float ratio = size.x / size.y;

    vec2 tuv = uv;
    tuv -= .5;

    // rotate with Noise
    float degree = noise(vec2(timeElapsed*.1, tuv.x*tuv.y));

    tuv.y *= 1./ratio;
    tuv *= Rot(radians((degree-.5)*720.+180.));
	tuv.y *= ratio;

    
    // Wave warp with sin
    float frequency = 5.;
    float amplitude = 30.;
    float speed = timeElapsed * .75;
    tuv.x += sin(tuv.y*frequency+speed)/amplitude;
   	tuv.y += sin(tuv.x*frequency*1.5+speed)/(amplitude*.5);
    
    
    // draw the image
    vec3 layer1 = mix(colorA, colorB, S(-.3, .2, (tuv*Rot(radians(-5.))).x));
    
    vec3 layer2 = mix(colorC, colorD, S(-.3, .2, (tuv*Rot(radians(-5.))).x));
    
    vec3 finalComp = mix(layer1, layer2, S(.5, -.3, tuv.y));
    
    vec3 col = finalComp;
    
    col +=vec3(
        random1f(uv),
        random1f(uv+1.),
        random1f(uv+2.)
    )*.2;
    
    fragColor = vec4(col,1.0);
}