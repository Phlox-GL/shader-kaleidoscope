
precision mediump float;

varying vec2 vUvs;

float rand(vec2 co) {
    return fract(sin(dot(co * 1000.0, vec2(12.9898, 78.233))) * 43758.5453) / 10.;
}

vec4 draw_spot(float l, float radius, float ratio, vec4 color, vec4 bgColor) {
    if (l > radius) {
        return bgColor;
    } else if (l < ratio * radius) {
        return color;
    } else {
        float d = l - (ratio * radius);
        return mix(color, bgColor, d / (radius - ratio * radius));
    }
}

void main() {
    vec4 bgColor = vec4(0.1, 0.2, 0.4, 1.0);
    vec4 moonColor = vec4(1.0, 1.0, 0.5, 1.0);
    vec4 spotColor = vec4(0.9, 0.9, 0.5, 1.0);

    vec2 spotOffset = vUvs - vec2(0.3, 0.4);
    float spotLen = length(spotOffset);
    if (spotLen < 0.2) {
        gl_FragColor = draw_spot(spotLen, 0.06, 0.2, spotColor, moonColor);
        return;
    }
    vec2 moonOffset = vUvs;
    float moonLen = length(moonOffset);
    gl_FragColor = draw_spot(moonLen, 0.9, 0.94, moonColor, bgColor);
}
