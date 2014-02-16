module e2nd.Graphics;

import derelict.glfw3.glfw3;

public class Graphics {
public:
	@property Window window() {return _window;}
	@property void window(Window _window) {this._window = _window;}
	this(){
		DerelictGLFW3.load();
		glfwInit();
		window = new Window();
	}
	void update(){
		window.update();
	}
private:
	Window _window;
}

public class Window {
public:
	@property bool closed() {return glfwWindowShouldClose(window)!=0;}
	this(){
		window = glfwCreateWindow(1366, 768, "E2nd Window",  null, null);
	}
	void update(){
		glfwSwapBuffers(window);
		glfwPollEvents();
	}
private:
	GLFWwindow* window;
}