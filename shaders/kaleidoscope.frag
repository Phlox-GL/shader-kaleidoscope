
precision mediump float;

uniform sampler2D colorTexture;
uniform sampler2D color2Texture;
uniform vec2 shift;
uniform float scale;
uniform float parts;
uniform float radius;

varying vec2 vUvs;

float rand(vec2 co) {
    return fract(sin(dot(co * 1000.0, vec2(12.9898, 78.233))) * 43758.5453) / 10.;
}

float square(float x) {
    return x * x;
}

#define product(a, b) vec2(a.x*b.x-a.y*b.y, a.x*b.y+a.y*b.x)
#define conjugate(a) vec2(a.x,-a.y)
#define divide(a, b) vec2(((a.x*b.x+a.y*b.y)/(b.x*b.x+b.y*b.y)),((a.y*b.x-a.x*b.y)/(b.x*b.x+b.y*b.y)))

vec2 perpendicular(vec2 p, vec2 p1, vec2 p2) {
    float x = p.x;
    float y = p.y;
    float a = p1.x;
    float b = p1.y;
    float c = p2.x;
    float d = p2.y;
    // corrected with https://blog.csdn.net/qq_32867925/article/details/114294753
    float k = - ((a-x)*(c-a) + (b-y)*(d-b)) / (square(a-c) + square(b-d));
    return vec2(
        a + (c - a) * k,
        b + (d - b) * k
    );
}

bool is_outside_line(vec2 p, vec2 p1, vec2 p2) {
    vec2 perp = perpendicular(p, p1, p2);
    float l = length(perp);
    return product(p, conjugate(perp)).x / (l*l) > 1.0;
}

vec2 reflection_line(vec2 p, vec2 p1, vec2 p2) {
    vec2 perp = perpendicular(p, p1, p2);
    return perp + (perp - p)*1.22;
}

void main() {
    vec4 bgColor = vec4(0.1, 0.2, 0.4, 1.0);
    vec4 moonColor = vec4(1.0, 1.0, 0.5, 1.0);
    vec4 spotColor = vec4(0.9, 0.9, 0.5, 1.0);
    float PI = 3.1415926;

    // divide circle by 6 segments
    // float parts = 3.5;

    // radius of the circle containing the shape
    // float radius = 0.2;
    float unit = 2.0 * PI / parts;

    vec2 color_point = vUvs;
    for (int i = 0; i < 40; ++i) {
        float point_angle = atan(color_point.y, color_point.x);
        float at_part = floor(point_angle / unit);
        vec2 p1 = vec2(cos(at_part * unit), sin(at_part * unit)) * radius;

        vec2 p2 = vec2(cos((at_part + 1.0) * unit), sin((at_part + 1.0) * unit)) * radius;

        vec2 perp = perpendicular(color_point, p1, p2);
        // if (distance(vUvs, perp) < 0.02) {
        //     gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
        //     return;
        // }

        // if (distance(vUvs, p1) < 0.02) {
        //     gl_FragColor = vec4(0.0, 1.0, 0.0, 1.0);
        //     return;
        // }
        // if (distance(vUvs, p2) < 0.02) {
        //     gl_FragColor = vec4(0.0, 1.0, 0.0, 1.0);
        //     return;
        // }

        if (is_outside_line(color_point, p1, p2)) {
            color_point = reflection_line(color_point, p1, p2);
            // gl_FragColor = vec4(0.0, 0.0, 1.0, 1.0);
            // return;
            continue;
        } else {
            // if (fract(at_part * 0.5) < 0.5) {
                gl_FragColor = texture2D(colorTexture, fract((color_point - shift) * scale));
            // } else {
            //     gl_FragColor = texture2D(color2Texture, fract((color_point - shift) * scale));
            // }
            return;
        }

        return;
    }

    gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);

}
