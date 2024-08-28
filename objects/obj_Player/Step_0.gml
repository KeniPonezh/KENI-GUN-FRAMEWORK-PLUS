/// @description get scripts
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
};

// EXAMPLE ABILITIES
if global.character=0{
	if getinput.BPress{
		movespd+=5*xdirection;
		abilitycd=60
	};
	if abilitycd>30{
		yspd=yspd+((-5)-yspd)*0.1	
	};
};