function player_state_base(){
obj_camera.cam_zoom+=(0-obj_camera.cam_zoom) * 0.1
	
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
	
	if (Input.APress && grounded){
		vsp=jumppower*-1	
		state=state.jump
		image_index=0
	};
	
	if (abilitycd=0 && Input.BPress && move!=0 && global.character=0){
		abilitycd=120
		state=state.dash
		image_index=0
	};
	
	if (abilitycd=0 && grounded && Input.BPress && global.character=1){
		state=state.megajump
		image_index=0
	};
	
	// animation
	if (grounded){
		if (hsp=0){
			sprite_index = anim_idle
			image_speed = 0.5
		};
		if (hsp!=0){
			sprite_index = anim_walk
			image_speed = abs(hsp) * 0.05
		};
	};
	if (!grounded){
		if (vsp>0){
			sprite_index = anim_fall
			image_speed=0.2
		};
	};
	// animation direction
	if (hsp!=0){
		xscale=sign(hsp)	
	};
};