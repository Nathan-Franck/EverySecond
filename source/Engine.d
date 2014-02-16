module Game.Engine;

import std.container;
import std.stdio;

import Game.Graphics;
import Game.GameObject;

class Engine{
	public:
		@property bool quit() {return graphics.window.closed;}
		this(){
			graphics = new Graphics();
		}
		void update(){
			foreach(GameObject go; gameObjects){
				go.update();
			}
			graphics.update();
		}
		void run(){
			while(!quit){
				update();
			}
		}
		Engine addGameObject(GameObject go){
			gameObjects.insert(go);
			return this;
		}
	private:
		Graphics graphics;
		auto gameObjects = SList!GameObject();
}