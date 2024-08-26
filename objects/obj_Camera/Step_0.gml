x +=(obj_Player.x-x + obj_Player.xspd)
y +=(obj_Player.y-y - 45)

camera_set_view_pos(view_camera[0],x-(1280*0.5),y-(720*0.5));