/// @description input check
// hold input
	Up = keyboard_check((global.up))
	Down = keyboard_check((global.down))
	Left = keyboard_check((global.left))
	Right = keyboard_check((global.right))
	A = keyboard_check((global.a))
	B = keyboard_check((global.b))
	C = keyboard_check((global.c))
	Start = keyboard_check((global.start))
// press input
	UpPress = keyboard_check_pressed((global.up))
	DownPress = keyboard_check_pressed((global.down))
	LeftPress = keyboard_check_pressed((global.left))
	RightPress = keyboard_check_pressed((global.right))
	APress = keyboard_check_pressed((global.a))
	BPress = keyboard_check_pressed((global.b))
	CPress = keyboard_check_pressed((global.c))
	StartPress = keyboard_check_pressed((global.start))
// button direction
	if (Up || Down || Left || Right){
		ButtonDirection = darctan2(Up - Down, Right - Left) + 90;
	}; 
