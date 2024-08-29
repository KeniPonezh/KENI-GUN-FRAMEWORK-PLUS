function player_handle_slope()
{
    if place_meeting(obj_Player.x,obj_Player.y+obj_Player.yspd, obj_Slope){
		for (P1SlopesUp = 0; P1SlopesUp<2+abs(obj_Player.yspd)+abs(obj_Player.xspd); P1SlopesUp+=1){
			obj_Player.y-=1;
		}
		
	}
}

