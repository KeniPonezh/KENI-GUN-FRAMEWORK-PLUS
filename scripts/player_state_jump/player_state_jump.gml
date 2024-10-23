function player_state_jump(){
// dir
var move
move=getinput.Right - getinput.Left

	if(move!=0 && !place_meeting(x+move, y, obj_solid)){
		if move=1{
		hsp=min(hsp+acceleration,topxspd+topxspdextra)
		}
		if move=-1{
		hsp=max(hsp-acceleration,-topxspd-topxspdextra)
		};
	}
	else{
		hsp = approach(hsp, 0, decceleration / 2.0);
	};
	if (place_meeting(x+move, y, obj_solid)){
		hsp=0;
	};
	
if (grounded & vsp >= 0)
	state=state.main
};
