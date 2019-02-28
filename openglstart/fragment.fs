#version 330 core
out vec4 FragColor;

in vec4 vertexColor;
in vec2 TexCoord;

uniform sampler2D ourTexture;

void main()
{
    FragColor = texture(ourTexture, TexCoord);

    if(FragColor.w > .99f){
        FragColor = FragColor + (vertexColor / 1.5 +.2);
    }
}
