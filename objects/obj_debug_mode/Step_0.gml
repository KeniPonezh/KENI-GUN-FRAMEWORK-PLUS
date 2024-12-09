///@description debug mmdeo!
if (ROOM_SWITCH){
	if (keyboard_check_pressed(vk_f5)){
		room_goto_previous()
	}

	if (keyboard_check_pressed(vk_f6)){
		room_restart()
	}

	if (keyboard_check_pressed(vk_f7)){
		room_goto_next()
	}
};

if (keyboard_check_pressed(vk_f9)){
	SEE_COLLISION = (SEE_COLLISION + 1) mod 2	
}

if (keyboard_check_pressed(vk_f10)){
	SEE_DEBUG_VARS = (SEE_DEBUG_VARS + 1) mod 2	
}

if (keyboard_check_pressed(vk_f11)){
	SEE_HITBOXES = (SEE_HITBOXES + 1) mod 2	
}

if (keyboard_check_pressed(vk_f12)){
	SEE_BG = (SEE_BG + 1) mod 2	
}

if (keyboard_check_pressed(vk_f1)){
	debugmenustate = debugmenustate.select
	is_paused = (is_paused + 1) mod 2;
	backgroundimage = sprite_create_from_surface(application_surface, 0, 0, W_Width, W_Height, false, 0, 0, 0);
}

if (is_paused = 1 /* && !instance_exists(obj_pause)*/){
	// deactivate instances
//	instance_destroy(obj_pause);
	instance_deactivate_all(true);
	instance_activate_object(obj_window_control);
	instance_activate_object(obj_debug_mode);
	instance_activate_object(Input);
	
	//Input difference
	var v = Input.DownPress - Input.UpPress;
	
	//If input has been modified change the selection
	if(v != 0){
		select += v;
	}
	
	//Limit the selections
	select = clamp(select, 0, day -1);
	
}
else if (is_paused = 0 /* && !instance_exists(obj_pause)*/){
	instance_activate_all();	
}
