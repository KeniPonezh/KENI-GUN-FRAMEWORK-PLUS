if (target=obj_player){
	xto=target.x;
	yto=target.y;
};

x += (((xto + (round(target.hsp) * 8)) - x) * 0.25)
y += ((yto - y) * 0.45)

var camx = clamp(x - global.window_width * 0.5, 0, room_width - global.window_width);
var camy = clamp(y - global.window_height * 0.5, 0, room_height - global.window_height);
camera_set_view_pos(view_camera[0], camx, camy);