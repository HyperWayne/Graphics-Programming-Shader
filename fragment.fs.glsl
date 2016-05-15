#version 410

uniform sampler2D s;
out vec4 color;

in VS_OUT
{
	vec3 tc;
	vec2 QQ;

}fs_in;

void main()
{
	color = texture(s, fs_in.QQ);
}