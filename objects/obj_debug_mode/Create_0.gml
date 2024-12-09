///@description setting up variables
backgroundimage = sprite_create_from_surface(application_surface, 0, 0, W_Width, W_Height, false, 0, 0, 0);
show_collisions = false;
show_debug_variables = false;
show_hitboxes = false;
allow_room_switching = true;
turn_off_bg = false;

is_paused = false;

// adding macros ffs
#macro SEE_COLLISION obj_debug_mode.show_collisions
#macro SEE_DEBUG_VARS obj_debug_mode.show_debug_variables
#macro SEE_HITBOXES obj_debug_mode.show_hitboxes
#macro ROOM_SWITCH obj_debug_mode.allow_room_switching
#macro SEE_BG obj_debug_mode.turn_off_bg



//THE CODE BELOW WAS MADE BY DARKN!!!
	
day = 3;	//The amount of selections of the menu
select = 0;	//Current selection
	
//Make an array for each selection
for (var i = 0; i < day; ++i){
		offx[i] = 0;
}

//THE CODE ABOVE WAS MADE BY DARKN!!!

set_text[0] = "room select"
set_text[1] = "goto first room"
set_text[2] = "close"

enum debugmenustate{
	select,
	roomselect,
}

debugmenustate = debugmenustate.select

