function player_state_jump(){
	if(move!=0 && !place_meeting(x+move, y, obj_solid)){
		if move=1{
			hsp=min(hsp+acceleration,topxspd+topxspdextra)
		}
		if move=-1{
			hsp=max(hsp-acceleration,-topxspd-topxspdextra)
		};
	}
	else{
		if (grounded){
			hsp = approach(hsp, 0, decceleration);
		}
		else{
			hsp = approach(hsp, 0, airdeccel);
		};
	};
	if (place_meeting(x+move, y, obj_solid)){
		hsp=0;
	};
	
if (grounded && vsp >= 0)
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
