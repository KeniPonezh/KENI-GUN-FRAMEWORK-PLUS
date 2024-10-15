// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_jump(){
//========================
//======Y MOVEMENT========
//========================

//jump
if getinput.APress && place_meeting(x,y+1, [tilemap_collision, obj_solid]){
		yspd=(jumppower*-1);
		isjumping=true;
};

if !getinput.A && isjumping=true && yspd<0{
	yspd=yspd*0.8
	
}

}
