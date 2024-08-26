//========================
//======X MOVEMENT========
//========================

// movement!
x+=xspd;
xspd = movespd * 1;

// x collision!!
var _subPixel = 0.5;
if place_meeting(x + xspd, y, obj_Solid){
// if slope - go up!
	if !place_meeting(x+xspd,y - 2 -abs(yspd), obj_Solid) {
		while place_meeting(x + xspd, y + abs(yspd), obj_Solid){
		y -= 1;	
		};
	};


// if not slope - wall!
else{
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting(x + _pixelCheck, y, obj_Solid){
		x +=_pixelCheck		
	};
};
// when colliding with a wall, set speed to 0
	xspd=0;	
	movespd=0;
};

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
	movespd=sign(movespd)*topxspd
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

// y collision!!!
	var _subPixel= 0.5;
	if place_meeting(x,y+yspd,obj_Solid){
		var _pixelCheck	= _subPixel* sign(yspd);
		while !place_meeting(x, y+_pixelCheck, obj_Solid){
		y +=_pixelCheck	
		}
		yspd=0;
		isjumping=false
	}
// ground variable..
if place_meeting(x,y+yspd,obj_Solid){
ground=true;
}
else{
ground=false;
}
