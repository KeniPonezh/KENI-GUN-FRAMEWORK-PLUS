/// @description player values

getinput=obj_input

// CHARACTER 0

if global.character = 0{
//movement
topxspd=8;
acceleration=1;
decceleration=1;

// jumping
jumppower=7;
grav=0.21;
maxyvelocity=40;
}

// CHARACTER 1
if global.character = 1{
//movement
topxspd=19;
acceleration=0.8;
decceleration=0.8;

// jumping
jumppower=7;
grav=0.3;
maxyvelocity=40;
}

// global for all characters!!
movespd=0;
xspd=0;
yspd=0;
ground=true;
isjumping=false;
playerhealth=5;
abilitycd=0;
curanim="idle";

// directions
xdirection=1;
ydirection=1;
allowxdirection=true

// some flags
ignorecollision=false;
ignoremovement=false

// spawn the camera
instance_create_depth(0, 0, 0, obj_Camera);