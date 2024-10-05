/// @description debug mode!
if global.debugmode=true{
draw_text(20,30+(dsin(current_time/5)*8.56),"DEBUG MODE ENABLED");
draw_text(20,60,"x speed : " + string(obj_player.xspd));
draw_text(20,80,"move speed : " + string(obj_player.movespd));
draw_text(20,100,"y speed : " + string(obj_player.yspd));
draw_text(20,120,"grav : " + string(obj_player.grav));
draw_text(20,160,"ability cd : " + string(obj_player.abilitycd));
};