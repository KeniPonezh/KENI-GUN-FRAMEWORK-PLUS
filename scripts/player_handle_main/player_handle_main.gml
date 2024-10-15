function player_handle_main(){
#region Collisions

	var _solids = [tilemap_collision, obj_solid]
	
//	var _boxcollision = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom)
	var _grounded = place_meeting(x, bbox_bottom, tilemap_collision)
	var _collidesright = place_meeting(bbox_right + 1, y, tilemap_collision);
	var _collidesleft = place_meeting(bbox_left - 1, y, tilemap_collision);
/*	var _sensorright = bbox_right;
	var _sensorleft = bbox_left;*/

	if ignorecollision=false{
		var _colvar = 0.5
		var _colcheck = _colvar * sign(movespd)
		
    // y collision
	if place_meeting(x,y+yspd,_solids){
	while !place_meeting(x,y+sign(yspd),_solids){
		y += sign(yspd)
	};
		yspd=0;
	};
	// x collision
/*		repeat (4 + abs(movespd)){
		if place_meeting(x+movespd,y,[tilemap_collision, obj_solid]){
			x -= 1 * sign(movespd);
			movespd=0
		};
	};
	}; */
		if place_meeting(x + movespd,y,_solids){
		while !place_meeting(x+sign(movespd),y,_solids){
			x += _colcheck;
		};
			movespd = 0;
			show_debug_message("speed = 0")
		};
	}; 
	
	if place_meeting(x,y,_solids){
		show_debug_message("HOW")	
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
	var movedir
	if allowxdirection=true{
	movedir=(getinput.Right - getinput.Left);
	}
#endregion
};
