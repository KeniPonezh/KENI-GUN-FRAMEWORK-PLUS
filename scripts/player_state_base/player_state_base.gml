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

/*// decel
if getinput.Right=0 or getinput.Left=0{
	movespd-=sign(movespd)*decceleration	
};*/
// cap speed
if abs(movespd)>topxspd{
	movespd=sign(movespd)*topxspd
}

///////////////////////////////////////////////////////////
}