/// @description player skin
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, image_blend, image_alpha)

if (global.debugmode=true && SEE_HITBOXES){
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom, c_red, c_red, c_red, c_red, true) // show hitbox
};