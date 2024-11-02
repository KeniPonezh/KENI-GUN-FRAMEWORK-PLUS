function player_state_megajump(){
	special_var_a+=1
	special_var_b=15
	allowxdirection=false
	
	if (special_var_a<special_var_b){
		vsp=-12
		grounded=0
		abilitycd=1
		// animation
		sprite_index = anim_jump
	};

if (special_var_a=special_var_b){
	angle = 0
	special_var_a=0
	special_var_b=0
	abilitycd=120
	allowxdirection=true
	state=state.main	
};

};