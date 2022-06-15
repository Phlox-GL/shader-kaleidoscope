
precision mediump float;

varying vec2 vUvs;

float rand(vec2 co) {
    return fract(sin(dot(co * 1000.0, vec2(12.9898, 78.233))) * 43758.5453) / 10.;
}

// https://gist.github.com/DonKarlssonSan/f87ba5e4e5f1093cb83e39024a6a5e72
#define cx_mul(a, b) vec2(a.x*b.x-a.y*b.y, a.x*b.y+a.y*b.x)
// #define cx_div(a, b) vec2(((a.x*b.x+a.y*b.y)/(b.x*b.x+b.y*b.y)),((a.y*b.x-a.x*b.y)/(b.x*b.x+b.y*b.y)))

float square(float a) {
  return a * a;
}

const float PI = 3.14159265358979323846;

// https://github.com/Jam3/glsl-hsl2rgb/blob/master/index.glsl
float hue2rgb(float f1, float f2, float hue) {
    if (hue < 0.0)
        hue += 1.0;
    else if (hue > 1.0)
        hue -= 1.0;
    float res;
    if ((6.0 * hue) < 1.0)
        res = f1 + (f2 - f1) * 6.0 * hue;
    else if ((2.0 * hue) < 1.0)
        res = f2;
    else if ((3.0 * hue) < 2.0)
        res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;
    else
        res = f1;
    return res;
}

vec3 hsl2rgb(vec3 hsl) {
    vec3 rgb;

    if (hsl.y == 0.0) {
        rgb = vec3(hsl.z); // Luminance
    } else {
        float f2;

        if (hsl.z < 0.5)
            f2 = hsl.z * (1.0 + hsl.y);
        else
            f2 = hsl.z + hsl.y - hsl.y * hsl.z;

        float f1 = 2.0 * hsl.z - f2;

        rgb.r = hue2rgb(f1, f2, hsl.x + (1.0/3.0));
        rgb.g = hue2rgb(f1, f2, hsl.x);
        rgb.b = hue2rgb(f1, f2, hsl.x - (1.0/3.0));
    }
    return rgb;
}

vec3 hsl2rgb(float h, float s, float l) {
    return hsl2rgb(vec3(h, s, l));
}

float normal_distribution(float d, float sigma) {
  return exp(-0.5 * square(d) / square(sigma)) / sigma / sqrt(2.0 * PI);
}

vec2 bend(vec2 p, vec2 center, float radian, float sigma, float amplitude) {
    vec2 d = p - center;
    float dyn_radian = radian * normal_distribution(length(d), sigma) * amplitude;
    vec2 rot = vec2(
        cos(dyn_radian),
        sin(dyn_radian)
    );
    vec2 p2 = center + cx_mul(d, rot);

    return p2;
}

vec2 swipe(vec2 p, vec2 center, vec2 direction) {
    vec2 d = p - center;
    float v = dot(d, direction);
    float dyn_strength = normal_distribution(length(v), 0.4) * 0.04;
    vec2 p2 = p + direction * dyn_strength;

    return p2;
}

void main() {
    vec2 xy = vUvs;

    xy = swipe(xy, vec2(-0.5, -0.5), vec2(4.0, 4.0));
    xy = swipe(xy, vec2(0.0, 0.0), vec2(0.0, 8.0));
    xy = bend(xy, vec2(0.0, 0.0), PI * 40.0, 0.2, 0.1);
    xy = bend(xy, vec2(0.5, 0.5), PI * 20.0, 0.1, 1.0);

    float scale = 20.0;
    float bound = 0.9;

    float x100 = xy.x * scale;
    float y100 = xy.y * scale;
    float f = fract(x100);
    float f2 = fract(y100);
    if (f > bound || f2 > bound) {
        gl_FragColor = vec4(0.8, 0.8, 0.8, 1.0);
    } else {
        float a = atan(xy.y, xy.x);
        vec3 color = hsl2rgb(a / PI * 0.5, 0.9, 0.7);
        gl_FragColor = vec4(color, 1.0);
        // gl_FragColor = vec4(0.2, 0.2, 0.2, 1.0);
    }
}
