Scr_pulinho();


if(keyboard_check(ord("D")) && place_free(x+4,y)){
 x+=4;
 
}else if(keyboard_check(ord("A")) && place_free(x-4,y)){
	x-=4;
	
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
	
