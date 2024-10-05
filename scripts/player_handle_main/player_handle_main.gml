function player_handle_main(){
#region Collisions

//	var _boxcollision = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom)
	var _grounded = place_meeting(x, bbox_bottom, obj_solid)
	var _collidesright = place_meeting(bbox_right + 1, y, obj_solid);
	var _collidesleft = place_meeting(bbox_left - 1, y, obj_solid);
	var _sensorright = bbox_right;
	var _sensorleft = bbox_left;


	if ignorecollision=false{
    // y collision
    if(place_meeting(x, y + yspd, obj_solid)){
    while(!place_meeting(x, y + sign(yspd), obj_solid)){
        y += sign(yspd);
    };
        yspd=0;
    };
	// x collision
	if place_meeting(x+movespd,y,obj_solid){
	while !place_meeting(x+sign(movespd),y,obj_solid){
	  x += sign(movespd);
	};
		movespd = 0;
	};
};
#endregion

#region Movement
	y += yspd;
	
	// graviy
	yspd+=grav;
	
	// cap yspd!
	max(yspd, maxyvelocity)
	
	// movement!
	x+=movespd;

	// direction
	var xdir
	if allowxdirection=true{
	xdir=(getinput.Right - getinput.Left);
	}
#endregion
};
