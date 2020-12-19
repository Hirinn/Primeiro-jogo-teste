Scr_pulinho();


#region HORIZONTAL MOVEMENT
	var horizontal_input = keyboard_check(key_right) - keyboard_check(key_left);

	if(horizontal_input != 0) && is_dashing == false{
		horizontal_speed += accel * horizontal_input;
		horizontal_speed = clamp(horizontal_speed, -max_speed, max_speed);
	} else {
		if(horizontal_speed > decel) {
			horizontal_speed -= decel;
		} else if(horizontal_speed < -decel) {
			horizontal_speed += decel;
		} else {
			horizontal_speed = 0;
		}
	}
	
	if(place_meeting(x + horizontal_speed, y, Obj_parede)) {
		while(! place_meeting(x + sign(horizontal_speed), y, Obj_parede)) {
			x += sign(horizontal_speed);
		}
		
		horizontal_speed = 0;
	}

	x += horizontal_speed;

#endregion

	if(keyboard_check_pressed(key_dash) && is_dashing == false){
		
		is_dashing = true;
		
		var horizontal_dir = sign(horizontal_speed);
		
		horizontal_speed += dash_speed * horizontal_dir;
		
		is_dashing = false;
	}

	
	if(vida = 0){
	room_restart()
	}
	
	show_debug_message(vida)
	
	if(place_meeting(x+2,y,Obj_enemy)){
	vida -=0.5
	}else if(place_meeting(x-2,y,Obj_enemy)){
	vida -=0.5
	}
	
