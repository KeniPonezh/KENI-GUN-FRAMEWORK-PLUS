// FOR ALL THE CLICKTEAMERS OUT THERE
// THIS IS BASICALLY GLOBAL VALUES

// player
	global.character=0

// screen values
	global.window_size=1;
	global.window_width=1280;
	global.window_height=720;
	
// bgm & sfx
	global.bgm=1;
	global.sfx=1;

// debug mode
	global.debugmode=true;

// input system because I CAN!!!
	global.up = vk_up;
    global.down = vk_down;
    global.left = vk_left;
    global.right = vk_right;
    global.a = ord("A");
    global.b = ord("S");
    global.c = ord("D");
    global.start = vk_enter;

// finish up!
	instance_create_depth(0, 0, 0, obj_window_control);
	instance_create_depth(0, 0, 0, obj_input);
/*	keni gun leftover whoops maybe later
instance_create_depth(0, 0, 0, obj_audio);
*/
	instance_create_depth(0, 0, -999, obj_fade);
	if global.debugmode=true{
		instance_create_depth(0,0,0,obj_debug_mode)
	};
	#macro Input obj_input
	#macro W_Width global.window_width
	#macro W_Height global.window_height
	#macro Character global.character
	room_goto_next();

