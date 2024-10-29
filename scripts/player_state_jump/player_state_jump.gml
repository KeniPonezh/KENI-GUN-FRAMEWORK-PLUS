function player_state_jump(){
	if (place_meeting(x+move, y, obj_solid)){
		hsp=0;
	};
	
if (grounded & vsp >= 0)
	state=state.main
	
	// animation
	if (!grounded){
		if (vsp<=0){
			sprite_index = anim_jump
			image_speed=0.1
		}
		if (vsp>0){
			image_index=0
			sprite_index = anim_fall
			image_speed=0.2
		};
	};
};
