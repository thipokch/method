#version 320 es
#define S(a,b,t)smoothstep(a,b,t)

precision highp float;

layout(location=0)out vec4 fragColor;

layout(location=0)uniform sampler2D image;
layout(location=1)uniform float timeElapsed;
layout(location=2)uniform vec2 size;
layout(location=3)uniform vec3 colorA;
layout(location=4)uniform vec3 colorB;
layout(location=5)uniform vec3 colorC;
layout(location=6)uniform vec3 colorD;

float random1f(vec2 st){
  return fract(sin(dot(st.xy,vec2(222.9878,178.233)))*93758.5453123);
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
  return.5+.5*n;
}

void main(){
  
  vec2 uv=gl_FragCoord.xy/size.xy;
  float ratio=size.x/size.y;
  
  vec2 tuv=uv;
  tuv-=.5;
  
  // rotate with Noise
  float degree=noise(vec2(timeElapsed*.1,tuv.x*tuv.y));
  
  tuv.y*=1./ratio;
  tuv*=Rot(radians((degree-.5)*720.+180.));
  tuv.y*=ratio;
  
  // Wave warp with sin
  float frequency=5.;
  float amplitude=30.;
  float speed=timeElapsed*.75;
  tuv.x+=sin(tuv.y*frequency+speed)/amplitude;
  tuv.y+=sin(tuv.x*frequency*1.5+speed)/(amplitude*.5);
  
  vec4 img=texture(image,uv);
  float gray=(img.r*.21+img.g*.72+img.b*.07);
  // gray=gray>.5?1.:0.;
  
  // draw the image
  vec3 layer1=mix(colorA,colorB,S(-.3,.2,(tuv*Rot(radians(-5.))).x));
  layer1=mix(colorC,layer1,random1f(uv)>.125?1.:0.);

  vec3 layer2=colorD;
  // vec3 layer2=mix(colorC,colorD,S(-.3,.2,(tuv*Rot(radians(-5.))).x));

  layer2=mix(colorA,layer2,random1f(uv)>.125?1.:0.);
  vec3 comp=mix(layer2,layer1,gray);
  
  // Perceptual greyscale
  // gray = 1. - (1. - colorD) * (1. - gray);
  
  // comp *= gray;
  // comp=mix(colorA,comp,gray);
  
  // comp+=vec3(
  //   random1f(uv),
  //   random1f(uv+1.),
  //   random1f(uv+2.)
  // )*.2;
  
  comp*=img.a;
  // gray +=
  //   random1f(uv) *.2;
  
  // float sil=gray<=0.?1.:0.;
  
  // Colourise the original image
  // img.rgb=1.-(1.-vec3(image.))*(1.-comp);
  // img.rgb*=gray;
  
  // img.rgb+=
  //   random1f(uv) * .2;
  
  // Output to screen
  fragColor=vec4(comp.r,comp.g,comp.b,img.a);
}