module e2nd.Transform;

import e2nd.Vector2;

public class Transform{
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