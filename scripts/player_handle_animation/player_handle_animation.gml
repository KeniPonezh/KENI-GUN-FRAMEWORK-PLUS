function player_handle_animation(){
	
	if abs(xspd)=0 && ground=true{
	curanim="idle"	
	};
	
	if abs(xspd)>0 && ground=true{
	curanim="walk";
	image_speed = 0.1 + abs(xspd / 50);
	};
	
}