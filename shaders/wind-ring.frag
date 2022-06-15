
precision mediump float;

varying vec2 vUvs;
varying float u_time;

float rand(vec2 co){
    return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

float rand_balanced(vec2 co){
    return (fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453) - 0.5) * 2.0;
}

const int limit = 60;
const float PI = 3.1415926;

float square(float x) {
    return x * x;
}

float normal_distribution(float x, float mean, float std) {
    return exp(-0.5 * square((x - mean) / std)) / sqrt(2. * PI * std);
}

// All components are in the range [0…1], including hue.
vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}


// Simplex 2D noise
//
vec3 permute(vec3 x) { return mod(((x*34.0)+1.0)*x, 289.0); }

float snoise(vec2 v){
  const vec4 C = vec4(0.211324865405187, 0.366025403784439,
           -0.577350269189626, 0.024390243902439);
  vec2 i  = floor(v + dot(v, C.yy) );
  vec2 x0 = v -   i + dot(i, C.xx);
  vec2 i1;
  i1 = (x0.x > x0.y) ? vec2(1.0, 0.0) : vec2(0.0, 1.0);
  vec4 x12 = x0.xyxy + C.xxzz;
  x12.xy -= i1;
  i = mod(i, 289.0);
  vec3 p = permute( permute( i.y + vec3(0.0, i1.y, 1.0 ))
  + i.x + vec3(0.0, i1.x, 1.0 ));
  vec3 m = max(0.5 - vec3(dot(x0,x0), dot(x12.xy,x12.xy),
    dot(x12.zw,x12.zw)), 0.0);
  m = m*m ;
  m = m*m ;
  vec3 x = 2.0 * fract(p * C.www) - 1.0;
  vec3 h = abs(x) - 0.5;
  vec3 ox = floor(x + 0.5);
  vec3 a0 = x - ox;
  m *= 1.79284291400159 - 0.85373472095314 * ( a0*a0 + h*h );
  vec3 g;
  g.x  = a0.x  * x0.x  + h.x  * x0.y;
  g.yz = a0.yz * x12.xz + h.yz * x12.yw;
  return 130.0 * dot(m, g);
}


void main() {
    vec2 uv = vUvs;

    float wind_light = 0.0;

    float r = length(uv - snoise(uv * vec2(0.8, 1.1)) * vec2(0.01, 0.01));
    float angle = atan(uv.y, uv.x);
    vec2 ring_ar = vec2(angle - u_time * 0.8, r);
    vec2 grow_ar = vec2(angle, r + u_time * 20.);

    if (abs((r - 0.6)) <= 0.02 + snoise((ring_ar + + vec2(1.1, 1.1))) * 0.01) {
        wind_light += 0.5 + 0.2 * snoise(ring_ar * vec2(1.5, 30.));
    }

    if (r > 0.58 && r < (0.8 + 0.2 * snoise(grow_ar * vec2(2.0, 0.08)))) {
        wind_light += (0.1 + 20.4 * pow(snoise(grow_ar * vec2(8., 0.2)), 8.0)) * snoise(grow_ar * vec2(600., 600.));
    }

    gl_FragColor = vec4(wind_light, wind_light, wind_light, 1.0);
}
