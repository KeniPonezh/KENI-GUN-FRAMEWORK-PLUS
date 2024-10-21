/// @description get scripts
if ignorecollision=0{
	scr_collision();
};

player_set_variables();

switch state{
	case state.main:
		player_state_base()
	break
	
	case state.jump:
		player_state_jump()
	break
};

/*
// EXAMPLE ABILITIES
	abilitycd=max(abilitycd-1,0)

	if global.character=0{
	if getinput.BPress  && abilitycd=0{
	movespd=dsin(getinput.ButtonDirection) * 9
	yspd=dcos(getinput.ButtonDirection) * 9
	abilitycd=60
	};
	};
*/