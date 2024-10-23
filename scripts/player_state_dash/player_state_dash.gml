function player_state_dash(){
// dir
var move
move=getinput.Right - getinput.Left
	
	special_var_a+=1
	special_var_b=35

	if (special_var_a<special_var_b){
		hsp=12 * move
		vsp=0
		topxspdextra=(abs(hsp)-topxspd)
		// animation
		sprite_index = spr_skin_0_idle
		image_angle = -90 * move
	};

if (special_var_a=special_var_b || move=0){
	image_angle = 0
	special_var_a=0
	special_var_b=0
	state=state.main	
};

};