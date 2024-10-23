/// @description get scripts
if ignorecollision=0{
	scr_collision();
};

movespd=hsp
abilitycd=max(abilitycd-1,0)
topxspdextra=max(topxspdextra-0.1245,0)

switch state{
	case state.main:
		player_state_base()
	break
	
	case state.jump:
		player_state_jump()
	break
	
	case state.dash:
		player_state_dash()
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