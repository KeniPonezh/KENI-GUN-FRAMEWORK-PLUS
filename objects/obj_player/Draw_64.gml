/// @description debug mode!
if global.debugmode=true{
draw_text(20,30+(dsin(current_time/5)*8.56),"DEBUG MODE ENABLED");
draw_text(20,60,"cooldown " + string(abilitycd));
draw_text(20,80,"pizdevc " + string(topxspdextra));
};