//present screen bg!
draw_sprite_ext(spr_Present_1, 1, 0, 0, 1, 1,0,c_white,1)
//present line!
draw_sprite_ext(spr_Present_Line, 1, global.window_width / 2.0, global.window_height / 2.0, xscale, 1, angle, c_white, 1)
//keni gun title!
draw_sprite_ext(spr_Present_KG, 1, global.window_width / 2.0, text1y, 1, 1, 0, c_white, textalpha )
//framework text!
draw_sprite_ext(spr_Present_framework, 1, global.window_width / 2.0, text2y, 1, 1, 0, c_white, textalpha )
//powered by text!
draw_sprite_ext(spr_Present_PoweredBy, 1,  global.window_width / 2.0, text3y, 1, 1, 0, c_white, textpbalpha )
//plus sprite!
draw_sprite_ext(spr_Present_Plus, 1, global.window_width / 2.0 + 360, text4y, 1, 1, plusangle, c_white, textplusalpha )