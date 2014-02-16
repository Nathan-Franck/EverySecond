import std.stdio;
import std.container;
import Game.Sprite;
import Game.Vector2;
import Game.Body;
import Game.GameObject;
import Game.Graphics;
import Game.Engine;

void main()
{
	Engine e = new Engine();
	e.addGameObject(new GameObject().addComponent(new Body()));
	e.run();
}
