function player_state_dash(){
	special_var_a+=1
	special_var_b=35
	allowxdirection=false

	if (special_var_a<special_var_b){
		hsp=14 * move
		vsp=0
		grounded=0
		topxspdextra=(abs(hsp)-topxspd)
		// animation
		sprite_index = anim_dash
		angle = -90 * move
	};

if (special_var_a=special_var_b || move=0){
	angle = 0
	special_var_a=0
	special_var_b=0
	allowxdirection=true
	state=state.main	
};

};