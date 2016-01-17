#version 330 core
 
void main(void)
{
   const vec4 vertices[6] = vec4[6](vec4( 0.25, -0.25, 0.5, 1.0),
                                    vec4(-0.25, -0.25, 0.5, 1.0),
                                    vec4( 0.25, 0.25, 0.5, 1.0),
                                    vec4( 0.25, -0.25, 0.5, 1.0),
                                      vec4( 0.5, -0.25, 0.5, 1.0),
                                      vec4( 0.5, 0.25, 0.5, 1.0)
                                    );
   
                             
   gl_Position = vertices[gl_VertexID];
  
}