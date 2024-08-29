function player_movement(){//========================
//======X MOVEMENT========
//========================

// movement!
x+=xspd;
xspd = movespd * 1;

// direction
if getinput.Right && allowxdirection=true{
		xdirection=1;
};

if getinput.Left && allowxdirection=true{
		xdirection=-1;
};

// move
if getinput.Right && xdirection==1{
	movespd+=acceleration;
		if allowxdirection=true{
		xdirection=1;
	};
};

if getinput.Left && xdirection==-1{
	movespd-=acceleration;
		if allowxdirection=true{
		xdirection=-1;
	};
};

// decel
if !getinput.Right && xspd>0 && xdirection=1{
movespd-=decceleration;	
};

if !getinput.Left && xspd<0 && xdirection=-1{
movespd+=decceleration;	
};

// cap speed
if abs(movespd)>topxspd{
	movespd-=sign(movespd)*topxspd
}

///////////////////////////////////////////////////////////

//========================
//======Y MOVEMENT========
//========================

	y += yspd
// graviy
	yspd+=grav;
	
// cap yspd!
	if yspd > maxyvelocity{
yspd=maxyvelocity;		
};

//jump
if getinput.APress && place_meeting(x,y+1, obj_Solid){
		yspd=(jumppower*-1);
		isjumping=true;
};

if !getinput.A && isjumping=true && yspd<0{
	yspd=yspd*0.8
	
}

// ground variable..
if place_meeting(x,y+yspd,obj_Solid){
ground=true;
}
else{
ground=false;
}
}