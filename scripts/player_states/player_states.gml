function player_states(){
	//flags becuase I CAN
	allowxdirection=true
	ignorecollision=false;
	ignoremovement=false

	// common
	player_state_base();
	player_state_jump();
}