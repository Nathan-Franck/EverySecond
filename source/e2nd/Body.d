module e2nd.Body;

import std.stdio;

import e2nd.Sprite;
import e2nd.Vector2;
import e2nd.Transform;
import e2nd.Component;

public class Body : Component {
	bool gravity = true;
	Vector2 velocity;
	public void update(){
	}
}