function fade_to_room(rm_goto, fade_speed){
	var fade;
	
	// getting the object
	fade = obj_fade;
	
	// other stuff i stole from harmony LOL
	fade.fade_goto_room = rm_goto;
	fade.fade_speed = fade_speed;
	fade.fade_type = fade_out;
}

function fade_in_room(fade_speed){
	var fade;
	
	// getting the object
	fade = obj_fade;
	
	// other stuff i stole from harmony LOL
	fade.fade_speed = fade_speed;
	fade.fade_type = fade_in;
}