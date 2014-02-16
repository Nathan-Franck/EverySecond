module Game.Transform;

import Game.Vector2;

class Transform{
private:
	Vector2 _position;
	Vector2 size;
	float rotation;
public:
	@property Vector2 position(){return _position;}
	@property void position(Vector2 _position){this._position = _position;}
	this(){

	}
}