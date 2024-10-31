/// @description player skin
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, image_blend, image_alpha)

if global.debugmode=true{
	draw_text(x, y + 60,string(abilitycd));
	draw_text(x, y + 80,string(topxspdextra));
	draw_text(x, y + 100,string(hsp));
	draw_text(x, y + 120,string(vsp));
	draw_text(x, y + 140,string(move));
	draw_text(x, y + 160,sprite_index);
};