#version 410

layout(location = 0) in vec3 iv3vertex;
layout(location = 1) in vec3 tc;
layout(location = 2) in vec2 QQ;

uniform mat4 um4mvp;

out vec3 vv3color;

out VS_OUT
{
	vec3 tc;
	vec2 QQ;

} vs_out;

void main()
{
	gl_Position = um4mvp * vec4(iv3vertex, 1.0);
	
	vs_out.tc = tc;

	vs_out.QQ = QQ;
	
}