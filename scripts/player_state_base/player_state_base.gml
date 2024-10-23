function player_state_base(){
// dir
var move
move=getinput.Right - getinput.Left
	
	if(move!=0 && !place_meeting(x+move, y, obj_solid)){
		if move=1{
		hsp=min(hsp+acceleration,topxspd+topxspdextra)
		}
		if move=-1{
		hsp=max(hsp-acceleration,-topxspd-topxspdextra)
		};
	}
	else{
		hsp = approach(hsp, 0, decceleration);
	};
	if (place_meeting(x+move, y, obj_solid)){
		hsp=0;
	};
	
	if (getinput.APress && grounded){
		vsp=jumppower*-1	
		state=state.jump
	};
	
	if (abilitycd=0 && getinput.BPress && move!=0){
		abilitycd=120
		state=state.dash
	};
	
	// animation
	if (hsp=0){
		sprite_index = spr_skin_0_idle
		image_speed = 0.2
	};
	if (hsp!=0){
		sprite_index = spr_skin_0_walk
		image_speed = hsp * 0.1
	};
	// animation direction
	if (hsp!=0){
	image_xscale=sign(hsp)	
	};
};