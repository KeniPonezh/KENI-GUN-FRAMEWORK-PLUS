function player_handle_main(){
#region Movement
	// direction

	//jump
	if getinput.APress && place_meeting(x,y+1, solid_blocks){
		yspd=(jumppower*-1);
		isjumping=true;
	};

	if !getinput.A && isjumping=true && yspd<0{
		yspd=yspd*0.8
	};

	y += yspd;
	
	// graviy
	yspd+=grav;
	
	// cap yspd!
	max(yspd, maxyvelocity)
	
	// movement!
	x+=movespd;

#endregion

#region Collisions
/*
	if ignorecollision=false{
    // y collision
	if place_meeting(x,y+yspd,solid_blocks){
	while !place_meeting(x,y+sign(yspd),solid_blocks){
		y += sign(yspd)
	};
		yspd=0;
	};
	// x collision
		repeat(abs(movespd)){
		if place_meeting(x+movespd,y,solid_blocks){
			x -= 1 * sign(movespd);
			movespd=0;
		};
	};
}; 
/*	if (place_meeting(x+movespd, y, _solidsolid_blockss)){
    while (!place_meeting(x+sign(movespd), y, solid_blocks)){
        x+=sign(movespd);
    };
	    movespd=0;
	}; 
};
	if place_meeting(x,y,solid_blocks){
		show_debug_message("can you PLEASE get out")	
	};*/
#endregion
};
