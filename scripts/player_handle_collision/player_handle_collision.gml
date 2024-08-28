function player_handle_collision(){
	// x collision!!
var _subPixel = 0.5;
	if place_meeting(x + xspd, y, obj_Solid){
// if slope - go up!
		if !place_meeting(x+xspd,y - 2 -abs(yspd), obj_Solid) {
	player_handle_slope()
	};

// if not slope - wall!
	else{
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting(x + _pixelCheck, y, obj_Solid){
		x +=_pixelCheck		
	};
}
// when colliding with a wall, set speed to 0
	xspd=0;	
	movespd=0;
};

// y collision!!!
	var _subPixel= 0.5;
	if place_meeting(x,y+yspd,obj_Solid){
		var _pixelCheck	= _subPixel* sign(yspd);
		while !place_meeting(x, y+_pixelCheck, obj_Solid){
		y +=_pixelCheck	
		}
		yspd=0;
		isjumping=false
	}
}