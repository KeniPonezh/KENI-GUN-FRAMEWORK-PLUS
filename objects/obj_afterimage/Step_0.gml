/// @description set up variables
timer+=1

// destroy when invisible
image_alpha -= 0.04;
if(image_alpha <= 0){
	instance_destroy();
};