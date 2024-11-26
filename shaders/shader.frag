#version 450

layout(location = 0) out vec4 fragColor;

layout(push_constant) uniform FSConst {
    vec2 resolution;
    vec2 mouse;
    float time;
} u_input;

void main()
{
    fragColor = vec4(abs(sin(u_input.time)), abs(sin(u_input.mouse.x)), abs(sin(u_input.mouse.y)), 1.0);
}