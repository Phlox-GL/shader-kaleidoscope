
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


void main() {
    vec2 uv = vUvs;
    vec2 points[limit];

    vec3 color = vec3(0.0);

    for (int i = 0; i < limit; i++) {
        vec2 point = vec2(rand_balanced(vec2(i+10, 0)), rand_balanced(vec2(i, 1+90))) * vec2(0.8, 0.8);
        points[i] = point;

        float point_angle = atan(point.y, point.x);
        float point_len = length(point);

        float uv_angle = atan(uv.y, uv.x) + (u_time * (rand(vec2(point_len, point_len)) + 0.2));
        uv_angle = uv_angle - floor(uv_angle / (2.0 * PI)) * 2.0 * PI;
        float uv_len = length(uv);

        float angle_delta = point_angle - uv_angle;

        if (angle_delta < 0.) {
            angle_delta += 2.0 * PI;
        } else if (angle_delta > 2.0 * PI) {
            angle_delta -= 2.0 * PI;
        }

        float len_delta = point_len - uv_len;

        if (abs(len_delta) < 0.0080 * (angle_delta + 0.4) * point_len / 0.16 && angle_delta * point_len < 0.62) {
            float diff_ratio = abs(len_delta) / (0.0008 * (angle_delta + 0.4) * point_len / 0.16);
            float color_v = rand(point) / 2.;
            // float strength = smoothstep(1., 0., diff_ratio*0.03);
            float strength = 0.8;
            // color = mix(color, vec3((1.0 - color_v)*strength, color_v * strength, (1.0-color_v)*strength), 0.99);
            // color += vec3(1.2 - color_v, 0.7 + color_v, 0.5 + (1.2-color_v)) * vec3(strength, strength, 0.9*strength);
            float d = normal_distribution(diff_ratio * 0.2, 0.0, 2.) * 0.3;
            color += hsv2rgb(vec3(rand(point), 0.6, (rand(uv)+0.5)*d ));

            float d2 = normal_distribution(diff_ratio * 2., 0.0, 2.) * 4.;
            color += hsv2rgb(vec3(rand(point), 0.4, (rand(point)+0.2)*d2 ));

        }
    }

    gl_FragColor = vec4(color, 1.0);
}
