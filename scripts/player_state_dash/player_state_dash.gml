function player_state_dash(){
	special_var_a+=1
	special_var_b=35
	allowxdirection=false
	var create_afterimage = instance_create_depth(x, y, depth+1, obj_afterimage)
	
	if (special_var_a<special_var_b){
		hsp=16* move
		vsp=0
		grounded=0
		topxspdextra=(abs(hsp)-topxspd)
		// animation
		sprite_index = anim_dash
		// afterimages
		create_afterimage.sprite_index = sprite_index
		create_afterimage.image_index = image_index
		create_afterimage.image_xscale = sign(hsp)
		create_afterimage.fade_spd = 0.08
	};

if (special_var_a=special_var_b){
	angle = 0
	special_var_a=0
	special_var_b=0
	allowxdirection=true
	state=state.main	
};

};