if (target=obj_Player){
	xto=target.x;
	yto=target.y;
};

x += (xto - x)/25
y += (yto - y)/25
camera_set_view_pos(view_camera[0],x-(global.window_width*0.5),y-(global.window_height*0.5));