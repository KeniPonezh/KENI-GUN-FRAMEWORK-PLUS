/// @description player values

// get the scripts
scr_collision_init()
enum state{
	main,
	jump,
	dash,
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
movespd=0

// hitbox size
hitbox_w=0
hitbox_h=0

// directions
allowxdirection=true

// some flags
ignorecollision=false;
ignoremovement=false

// spawn the camera
instance_create_depth(0, 0, 0, obj_camera);