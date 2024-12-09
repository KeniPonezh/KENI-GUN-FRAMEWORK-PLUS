function player_input_scr(){
// for hold
hold_up = Input.Up;
hold_down = Input.Down;
hold_left = Input.Left;
hold_right = Input.Right;
// hold buttons
hold_a = Input.A;
hold_b = Input.B;
hold_c = Input.C;
hold_start = Input.Start;
// for press
press_up = Input.UpPress;
press_down = Input.DownPress;
press_left = Input.LeftPress;
press_right = Input.RightPress;
// press buttons
press_a = Input.APress;
press_b = Input.BPress;
press_c = Input.CPress;
press_start = Input.StartPress;

if (disable_input){
	// for hold
	hold_up = false;
	hold_down = false;
	hold_left = false;
	hold_right = false;
	hold_a = false;
	hold_b = false;
	hold_c = false;
	hold_start = false;

	// for press
	press_up = false;
	press_down = false;
	press_left = false;
	press_right = false;
	press_a = false;
	press_b = false;
	press_c = false;
	press_start = false;
}
}