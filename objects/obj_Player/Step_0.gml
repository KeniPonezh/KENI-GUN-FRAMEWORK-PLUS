/// @description get scripts
	abilitycd=max(abilitycd-1,0)
	
	player_set_variables();
	player_state_base();
	player_state_jump();
	player_handle_main();
	player_handle_slope();


	// EXAMPL ABILITIES

	if global.character=0{
	if getinput.BPress  && abilitycd=0{
	movespd=dsin(getinput.ButtonDirection) * 9
	yspd=dcos(getinput.ButtonDirection) * 9
	abilitycd=60
	};
	};