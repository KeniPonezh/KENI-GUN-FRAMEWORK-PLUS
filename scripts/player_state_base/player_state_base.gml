function player_state_base(){
// dir
var move
move=getinput.Right - getinput.Left
	
	if(move!=0 && !place_meeting(x+move, y, obj_solid)){
		if move=1{
		hsp=max(hsp+acceleration,topxspd)
		}
		else move=-1{
		hsp=max(hsp-acceleration,-topxspd)
		};
	}
	else{
		hsp = approach(hsp, 0, decceleration);
	};
	if (place_meeting(x+move, y, obj_solid)){
		hsp=0;
	};
	
	if (getinput.APress && grounded){
		vsp=jumppower*-1
		state=state.jump
	};
};