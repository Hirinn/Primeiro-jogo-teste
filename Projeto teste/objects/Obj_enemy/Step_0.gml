
jump = 0;

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
		
if(dir == 1){
 
 if(place_free(x+2,y)){
	x+=2	 
 }else{
 dir = -1;	 
 }
 
}

if(dir == -1){
 
 if(place_free(x-2,y)){
	x-=2	 
 }else{
 dir = 1;	 
 }
 
}


if(place_meeting(x+2,y,Obj_Player)){
 dir = -1
}
if(place_meeting(x-2,y,Obj_Player)){
 dir = 1
}



if(vida = 0){
instance_destroy();
}
