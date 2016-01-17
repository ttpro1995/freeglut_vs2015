
#include <gl\glew.h>
#include <GL/freeglut.h>
#include <iostream>
#include "Core\Shader_Loader.h"
GLuint program;



void renderScene(void)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glClearColor(0.0, 0.0, 0.0, 1.0);//clear red

	//use the created program
	glUseProgram(program);

	//draw 3 vertices as triangles
	glDrawArrays(GL_TRIANGLES, 0, 24);

	glutSwapBuffers();
}

void Init()
{

	glEnable(GL_DEPTH_TEST);

	//load and compile shaders
	Core::Shader_Loader shaderLoader;
	//program = shaderLoader.CreateProgram("Shaders\\Vertex_Shader.glsl",
	//	"Shaders\\Fragment_Shader.glsl");

	program = shaderLoader.CreateProgram("Shaders\\Vertex_Shader_homework.glsl",
		"Shaders\\Fragment_Shader_homework.glsl");
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}

int main(int argc, char **argv)
{
	glutInit( &argc, argv);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
	glutInitWindowPosition(100, 100);
	glutInitWindowSize(800, 600);
	glutCreateWindow("Drawing my first triangle");
	glewInit();

	Init();

	// register callbacks
	glutDisplayFunc(renderScene);
	glutMainLoop();
	glDeleteProgram(program);
	return 0;

}