function player_state_megajump(){
	special_var_a+=1
	special_var_b=15
	allowxdirection=false
	var create_afterimage = instance_create_depth(x, y, -1, obj_afterimage)
	
	if (special_var_a<special_var_b){
		vsp=-12
		grounded=0
		abilitycd=1
		// animation
		sprite_index = anim_jump
		// afterimages
		create_afterimage.sprite_index = obj_player.sprite_index
		create_afterimage.image_index = obj_player.image_index
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