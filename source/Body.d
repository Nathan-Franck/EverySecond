module Game.Body;

import std.stdio;

import Game.Sprite;
import Game.Vector2;
import Game.Transform;
import Game.Component;

class Body : Component {
	bool gravity = true;
	Vector2 velocity;
	public void update(){
		writeln("Updating the body...");
	}
}