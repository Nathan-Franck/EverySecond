module Game.GameObject;

import std.stdio;
import std.container;

import Game.Component;

class GameObject {
public:
	this(){
		
	}
	public void update(){
		foreach (Component c; components){
			c.update();
		}
	}
	public GameObject addComponent(Component c){
		components.insert(c);
		return this;
	}
	public Component getComponent(T)(){
		foreach (Component c; components){
			if (typeid(T) == typeid(c)) return c;
		}
		return null;
	}
private:
	auto components = SList!Component();
}