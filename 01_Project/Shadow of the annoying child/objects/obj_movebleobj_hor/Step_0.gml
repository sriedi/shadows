/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 068EE6B1
/// @DnDArgument : "code" "if  (global.carry = 0 )$(13_10){$(13_10)$(13_10)if  (!place_meeting(x-3,y,obj_wall))$(13_10){$(13_10)if  (place_meeting(x+32,y,obj_player1))$(13_10){$(13_10)	if (keyboard_check(vk_alt))$(13_10)	{$(13_10)	move_towards_point(x-5,y,1)$(13_10)	 $(13_10)		}else{move_towards_point(x,y,0)}$(13_10)	}$(13_10)}else {move_towards_point(x,y+1,0)  }$(13_10)$(13_10)$(13_10)if  (!place_meeting(x+3,y,obj_wall))$(13_10){$(13_10)if  (place_meeting(x-32,y,obj_player1))$(13_10){$(13_10)	if (keyboard_check(vk_alt))$(13_10)	{$(13_10)	move_towards_point(x+5,y,1)$(13_10)	$(13_10)	}else{move_towards_point(x,y,0)}$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10) if distance_to_object(obj_player1) >12$(13_10) {$(13_10) move_towards_point(x,y,0) $(13_10)$(13_10) }$(13_10) }"
if  (global.carry = 0 )
{

if  (!place_meeting(x-3,y,obj_wall))
{
if  (place_meeting(x+32,y,obj_player1))
{
	if (keyboard_check(vk_alt))
	{
	move_towards_point(x-5,y,1)
	 
		}else{move_towards_point(x,y,0)}
	}
}else {move_towards_point(x,y+1,0)  }


if  (!place_meeting(x+3,y,obj_wall))
{
if  (place_meeting(x-32,y,obj_player1))
{
	if (keyboard_check(vk_alt))
	{
	move_towards_point(x+5,y,1)
	
	}else{move_towards_point(x,y,0)}
}

}



 if distance_to_object(obj_player1) >12
 {
 move_towards_point(x,y,0) 

 }
 }