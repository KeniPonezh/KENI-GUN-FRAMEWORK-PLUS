/// @description player values

// get the object
getinput=obj_input

// global for all characters!!
movespd=0;
xspd=0;
yspd=0;
ground=true;
isjumping=false;
playerhealth=5;
abilitycd=0;
curanim="idle";
animationspeed=0;

// directions
allowxdirection=true

// some flags
ignorecollision=false;
ignoremovement=false

// spawn the camera
instance_create_depth(0, 0, 0, obj_camera);