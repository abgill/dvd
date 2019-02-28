#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec4 vertexColor;
out vec2 TexCoord;

uniform float xoffset;
uniform float yoffset;


void main()
{
    gl_Position = vec4(aPos.x + xoffset, aPos.y + yoffset, aPos.z , 1.0) ;
	vertexColor = vec4(gl_Position);

	TexCoord = aTexCoord;
}