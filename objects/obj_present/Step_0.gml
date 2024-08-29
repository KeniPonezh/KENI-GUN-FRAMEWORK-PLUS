timer+=1
image_xscale=xscale;
image_angle=angle;

value+=0.1;

if angle>=0{
angle-=value
};

if angle<=0{
angle=0
};

if xscale<=1{
xscale+=0.02	
};

if timer=240{
room_goto_next()	
};