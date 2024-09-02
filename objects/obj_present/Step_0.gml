timer+=1
value+=0.1;

angle = max(angle-value,0);

if xscale<=1{
xscale+=0.02	
};

if timer>80{
	text1y=text1y+( (global.window_height / 2.0)-text1y) * 0.1
	text2y=text2y+( (global.window_height / 2.0 + 10 )-text2y) * 0.1
	textalpha=textalpha+(1-textalpha) *0.1
};
if timer>85{
	text3y=text3y+(( global.window_height / 2.0-160)-text3y) * 0.1
	textpbalpha=textpbalpha+(1-textpbalpha) *0.1
};

if timer>100{
	text4y=text4y+( (global.window_height / 2.0 + 130)-text4y) * 0.1
	textplusalpha=textplusalpha+(1-textplusalpha) *0.1
	plusangle=plusangle+(100-plusangle)*0.05
};

// goto next room!
if timer=240{
	show_debug_message("токикс мой краш")
	room_goto_next()	
};

