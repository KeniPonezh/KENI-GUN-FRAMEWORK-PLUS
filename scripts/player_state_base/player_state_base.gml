function player_state_base(){
//======X MOVEMENT========
//========================

// move
if getinput.Right{
	movespd+=acceleration;
};

if getinput.Left{
	movespd-=acceleration;
};

// decel
if getinput.Right=0 && movespd>0{
	max(movespd-(sign(movespd)*decceleration),0)
};
// cap speed
if abs(movespd)>topxspd{
	movespd=sign(movespd)*topxspd
}

///////////////////////////////////////////////////////////
}