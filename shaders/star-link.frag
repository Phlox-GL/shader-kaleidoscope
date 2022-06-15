
// inspired by
// https://www.shadertoy.com/view/7tscW7

precision mediump float;

varying vec2 uv;

float rand(vec2 co){
    return (fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453) - 0.5) * 2.0;
}

float square(float x) {
    return x * x;
}

float normal_distribution(float x, float mean, float std) {
    float PI = 3.1415926;
    return exp(-0.5 * square((x - mean) / std)) / sqrt(2. * PI * std);
}

const int limit = 120;

void main() {
    float lightness = 0.0;
    vec2 points[limit];
    for (int i = 0; i < limit; i++) {
        vec2 point = vec2(rand(vec2(i+10, 0)), rand(vec2(i, 1+90)));
        points[i] = point;
        float x = pow(normal_distribution(distance(uv, point) * 80.0, 0.0, 1.0), 2.0);
        lightness += 6.8 * x;
        float x2 = pow(normal_distribution(distance(uv, point) * 20.0, 0.0, 1.0), 0.20);
        lightness += 0.08 * x2;
    }
    for (int i = 0; i < limit; i++) {
        for (int j = 0; j < limit; j++) {
            vec2 ab = points[i];
            vec2 ef = points[j];
            float x = uv.x;
            float y = uv.y;

            vec2 center = (ab + ef) / vec2(2., 2.);
            float r = distance(center, ab);
            float ruv = distance(vec2(x,y), center);

            if (ruv < r && r < 0.2) {
                float a = ab[0];
                float b = ab[1];
                float e = ef[0];
                float f = ef[1];

                float k = (e*x - a*e - a*x +a*a + f*y - f*b - b*y + b*b) / (e*e + a*a + f*f + b*b - 2.*a*e - 2.*b*f);
                vec2 target = vec2(x - e*k - a + a*k, y - b - f*k + b*k);
                float lt = length(target);
                float tl = normal_distribution(lt * 300., 0.0, 0.9) * 0.3;
                lightness += tl / pow(r, 2.0) * 0.004;
                // lightness + 0.05;
            }

        }
    }



    // if (lightness > 0.5) {
    //     gl_FragColor = vec4(0.9, 0.9, 0.9, 1.0);
    // } else {
    //     gl_FragColor = vec4(0.4, 0.4, 0.4, 1.0);
    // }
    gl_FragColor = vec4(lightness, lightness, lightness * 0.4, 1.0);
    // gl_FragColor = vec4(uv, 0.0, 1.0);
}
