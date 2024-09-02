/// @description get scripts

	player_handle_animation();
	
if abilitycd>0{
	abilitycd-=1
};

if abilitycd<=0{
	abilitycd=0
};

if ignoremovement=false{
	player_movement();
};

if ignorecollision=false{
	player_handle_collision();
	player_handle_slope();
};

// EXAMPLE ABILITIES
if global.character=0{
	if getinput.BPress && abilitycd=0{
		movespd+=5*xdirection;
		abilitycd=60
	};
	if abilitycd>30{
		if !getinput.A{
		yspd=yspd+((-5)-yspd)*0.1	
		};
		if getinput.A{
		yspd=yspd+((-10)-yspd)*0.1	
		};
	};
};