function player_handle_animation(){
sprite_index=asset_get_index("spr_skin_" + string(global.character) + "_" + string(curanim)){
	image_speed=animationspeed;
};
	
	if movespd=0{
	curanim="idle";
	animationspeed=0.2
	};
	
	if abs(movespd)>0 && ground=true{
	curanim="walk";
	animationspeed=0.1 + abs(xspd / 50);
	};
	
}