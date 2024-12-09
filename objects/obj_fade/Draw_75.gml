	// add variables
	var cam_id, fade_x, fade_y, alpha;
	cam_id = view_camera[view_current];
	fade_x = camera_get_view_x(cam_id);
	fade_y = camera_get_view_y(cam_id);
	
	// rectangle
	alpha = fade_timer / 60 // 60 is duration
	
	draw_set_alpha(1 - alpha);
	draw_set_color(c_black)
	draw_rectangle(fade_x, fade_y, fade_x + global.window_width, fade_y + global.window_height, false);	
	//draw_rectangle_color(fade_x, fade_y, fade_x + global.window_width, fade_y + global.window_height, c_black, c_red, c_black, c_red, false);
	draw_set_alpha(1);
	draw_set_color(c_white)
