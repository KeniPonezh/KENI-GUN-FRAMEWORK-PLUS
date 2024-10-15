function player_set_variables(){
// CHARACTER 0
if global.character = 0{
//movement
topxspd=8.175;
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

}