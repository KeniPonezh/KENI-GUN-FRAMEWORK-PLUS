function player_slope()
{
	if (ground) && (place_meeting(x,y + abs(xspd) + 1 ,obj_Solid)) && (yspd >= 0)
	{   
    yspd -= abs(xspd) +1;
	}
 
}

