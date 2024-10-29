/// @description debug mode!
if global.debugmode=true{
draw_text(20,30+(dsin(current_time/5)*8.56),"DEBUG MODE ENABLED");
draw_text(20,60,string(abilitycd));
draw_text(20,80,string(topxspdextra));
draw_text(20,100,string(hsp));
draw_text(20,120,string(vsp));
draw_text(20,140,string(move));
draw_text(20,160,sprite_index);
};