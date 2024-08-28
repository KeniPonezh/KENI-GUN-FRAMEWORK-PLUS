
draw_text(20,30+(dsin(current_time/5)*8.56),"DEBUG MODE ENABLED");


if instance_exists(obj_Player){ 
draw_text(20,60,"x speed : " + string(obj_Player.xspd))
draw_text(20,80,"move speed : " + string(obj_Player.movespd))
draw_text(20,100,"y speed : " + string(obj_Player.yspd))
draw_text(20,120,"grav : " + string(obj_Player.grav))
draw_text(20,140,"x direction : " + string(obj_Player.xdirection))
};
	else {
draw_text(20,60,"this debug is for gameplay part only! seek medical attention")
};
