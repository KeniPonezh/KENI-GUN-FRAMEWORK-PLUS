draw_set_color(c_black);
gpu_set_blendmode_ext(bm_dest_color, bm_zero); 
draw_rectangle(0, 1280, 0, 720, false);
draw_set_alpha(fade_alpha);

if fade_type=false{
fade_alpha=255
};