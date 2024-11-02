/// @description get scripts & other stuff
if ignorecollision=0{
	scr_collision();
};

// hitbox size!
image_xscale = hitbox_w / 50.0
image_yscale = hitbox_h / 90.0


// dir
if allowxdirection=true{
	move=Input.Right - Input.Left
};

abilitycd=max(abilitycd-1,0)
topxspdextra=max(topxspdextra-0.1245,0)

if move!=sign(hsp){
	topxspdextra=0		
};


switch state{
	// BASE STATE (idle, walk)
	case state.main:
		player_state_base()
	break
	// JUMPING STATE
	case state.jump:
		player_state_jump()
	break
	// DASH STATE
	case state.dash:
		player_state_dash()
	break
	// DOUBLE JUMP STATE
	case state.megajump:
		player_state_megajump()
	break
};

