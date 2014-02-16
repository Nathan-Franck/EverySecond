module Game.Vector2;
import std.conv;

class Vector2 {
public:
	float x;
	float y;
	this(float x, float y){
		this.x = x;
		this.y = y;
	}
	public override string toString(){
		return "("~to!string(x)~", "~to!string(y)~")";
	}
}