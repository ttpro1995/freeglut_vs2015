#version 330 core
 // homework at http://in2gpu.com/2014/11/24/creating-a-triangle-in-opengl-shader/
void main(void)
{

      const vec4 vertices[24] = vec4[24](//4 corner triagle
                                    vec4( 0.9, 0.85, 0.5, 1.0),
                                    vec4( 0.5, 0.85, 0.5, 1.0),
                                    vec4( 0.9, 0.45, 0.5, 1.0),
                                    
                                    vec4( -0.9, 0.85, 0.5, 1.0),
                                    vec4( -0.5, 0.85, 0.5, 1.0),
                                    vec4( -0.9, 0.45, 0.5, 1.0),
                                    
                                     vec4( 0.9,-0.85, 0.5, 1.0),
                                    vec4( 0.5, -0.85, 0.5, 1.0),
                                    vec4( 0.9, -0.45, 0.5, 1.0),
                                    
                                     vec4( -0.9,-0.85, 0.5, 1.0),
                                    vec4( -0.5,-0.85, 0.5, 1.0),
                                    vec4(-0.9,-0.45, 0.5, 1.0),
                                    
                                    // top down in middle
                                    vec4( 0, 0, 0.5, 1.0),
                                    vec4( 0.2, 0.28, 0.5, 1.0),
                                    vec4(-0.2, 0.28, 0.5, 1.0),

                                    vec4( 0, 0, 0.5, 1.0),
                                    vec4( 0.2, -0.28, 0.5, 1.0),
                                   vec4(-0.2, -0.28, 0.5, 1.0),
                                    
                                    //left right in middle
                                    vec4( 0.2, 0.28, 0.5, 1.0),
                                    vec4( 0.2, -0.28, 0.5, 1.0),
                                    vec4( 0.45, 0, 0.5, 1.0),
                                    
                                    vec4( -0.2, 0.28, 0.5, 1.0),
                                    vec4( -0.2, -0.28, 0.5, 1.0),
                                    vec4( -0.45, 0, 0.5, 1.0)                                    
                                    );
   
                             
   gl_Position = vertices[gl_VertexID];
  
}