function player_state_dash(){
	special_var_a+=1
	special_var_b=35
	allowxdirection=false
	var create_afterimage = instance_create_depth(x, y, -1, obj_afterimage)
	
	if (special_var_a<special_var_b){
		hsp=16* move
		vsp=0
		grounded=0
		topxspdextra=(abs(hsp)-topxspd)
		// animation
		sprite_index = anim_dash
		// afterimages
		create_afterimage.sprite_index = obj_player.sprite_index
		create_afterimage.image_index = obj_player.image_index
	};

if (special_var_a=special_var_b){
	angle = 0
	special_var_a=0
	special_var_b=0
	allowxdirection=true
	state=state.main	
};

};