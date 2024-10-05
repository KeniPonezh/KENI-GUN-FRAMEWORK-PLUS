	draw_sprite_ext(spr_logo, image_index , logox, 16, 1, 1,0,c_white,logoopaque);


	// THE CODE BELOW WAS MADE BY DARKN!!!
	for (var i = 0; i < day; ++i) 
	{
		
		//I simplified this one
		
		//Check if selection is the same as the loop
		if(select == i)
		{
			//If so move it out
			offx[i] = lerp(offx[i], 64, 0.1);
		}
		else
		{
			//Otherwise go back
			offx[i] = lerp(offx[i], 0, 0.1);
		}
		draw_sprite_ext(spr_ts_buttons, i, 105 + offx[i] - (i * 16), 330 + (80 * i), 1 ,1 ,0, c_white, button_transparency)
	}
	
	if i!=select{
		button_transparency=0.5;
	}
	else i=select{
		button_transparency=1;	
	};