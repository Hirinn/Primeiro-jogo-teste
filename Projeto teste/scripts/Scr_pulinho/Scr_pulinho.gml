function Scr_pulinho(){
jump = keyboard_check(vk_up);

vspd+= gravi;

		if(!place_free(x,y+1) && jump)
		{
			vspd = -10;
			jump = false;
		}
		
		if(!place_free(x,y+vspd)) {
			
			signVsp = 0;
			if(vspd >= 0)
			{
				signVsp = 1;
			}else  {
				signVsp = -1;
			}
			while(place_free(x,y+signVsp)) {
				y = y+signVsp;
			}
			vspd = 0;
		}
		
		y = y + vspd;
}