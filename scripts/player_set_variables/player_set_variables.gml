function player_set_variables(){
// CHARACTER 0
if global.character = 0{
	//movement
		topxspd=8;
		acceleration=1;
		decceleration=1;
		airdeccel=0.5;

	// jumping
		jumppower=7;
		grav=0.21;

	// hitbox
		hitbox_w=90
		hitbox_h=120
}

// CHARACTER 1
if global.character = 1{
	//movement
		topxspd=8;
		acceleration=0.4;
		decceleration=1;
		airdeccel=0.5;

	// jumping
		jumppower=12;
		grav=0.41;

	// hitbox
		hitbox_w=90
		hitbox_h=120
}

}