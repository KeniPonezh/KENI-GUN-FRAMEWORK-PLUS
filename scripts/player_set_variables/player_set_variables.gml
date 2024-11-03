function player_set_variables(){
// CHARACTER 0
if global.character = 0{
	//movement
		topxspd=9;
		acceleration=0.6;
		decceleration=0.7;
		airdeccel=0.5;

	// jumping
		jumppower=13;
		grav=0.45;
		
	// hitbox
		hitbox_w=90
		hitbox_h=120
}

// CHARACTER 1
if global.character = 1{
	//movement
		topxspd=12;
		acceleration=0.4;
		decceleration=0.75;
		airdeccel=0.6;

	// jumping
		jumppower=12;
		grav=0.41;

	// hitbox
		hitbox_w=30
		hitbox_h=50
}

}