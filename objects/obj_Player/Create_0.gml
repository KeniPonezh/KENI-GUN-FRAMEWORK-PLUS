/// @description player values

// get the scripts
scr_collision_init()
enum state{
	main,
	jump,
};
// get the object
getinput=obj_input

// global for all characters
playerhealth=5;
abilitycd=0;
curanim="idle";
animationspeed=0;
state=state.main;

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