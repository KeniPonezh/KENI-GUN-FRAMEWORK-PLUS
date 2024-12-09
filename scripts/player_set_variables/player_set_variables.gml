function player_set_variables(){
	var setphysics = {
		topxspd : [16.5, 12],
		acceleration : [0.625, 0.4],
		decceleration : [0.9, 0.75],
		airdeccel : [0.3, 0.6],
		jumppower : [12, 12],
		grav : [0.45, 0.41],
		hitbox_w : [90, 30],
		hitbox_h : [120, 50],
	}
	//movement
		topxspd = setphysics.topxspd[Character];
		acceleration = setphysics.acceleration[Character];
		decceleration = setphysics.decceleration[Character];
		airdeccel = setphysics.airdeccel[Character];

	// jumping
		jumppower = setphysics.jumppower[Character];
		grav = setphysics.grav[Character];
		
	// hitbox
		hitbox_w = setphysics.hitbox_w[Character];
		hitbox_h = setphysics.hitbox_h[Character];
}