/// @description player values

// get the scripts
scr_collision_init()
enum state{
	main,
	jump,
	dash,
	megajump,
};
// get the object
getinput=obj_input

// global for all characters
playerhealth=5;
abilitycd=0;
curanim="idle";
animationspeed=0;
state=state.main;
special_var_a=0
special_var_b=0
topxspdextra=0
move=1
move_2=1

// hitbox size
hitbox_w=0
hitbox_h=0

// for skin
xscale=1
yscale=1
angle=0
animspd=0
animframe=0

// animations
anim_idle=asset_get_index("spr_skin_" + string(global.character) + "_idle") 
anim_walk=asset_get_index("spr_skin_" + string(global.character) + "_walk")
anim_jump=asset_get_index("spr_skin_" + string(global.character) + "_jump")
anim_fall=asset_get_index("spr_skin_" + string(global.character) + "_fall")
anim_dash=asset_get_index("spr_skin_" + string(global.character) + "_idle")


// directions
allowxdirection=true

// some flags
ignorecollision=false;
ignoremovement=false

// spawn the camera
instance_create_depth(0, 0, 0, obj_camera);