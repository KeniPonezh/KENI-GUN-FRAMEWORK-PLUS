	fade_timer+= fade_speed * fade_type
	// fade to room
	if (fade_type = fade_out && fade_goto_room!=noone){
		if fade_timer = 0{
			room_goto(fade_goto_room)	
		}
	}
	fade_timer = clamp(fade_timer,0 , 60)
	