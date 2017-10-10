/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 068EE6B1
/// @DnDArgument : "code" "//hspeed = 0;$(13_10)$(13_10)$(13_10)if  (global.carry = 0 )$(13_10){$(13_10)$(13_10)if  (!place_meeting(x,y-3,obj_wall))$(13_10){$(13_10)if  (place_meeting(x,y+32,obj_player1))$(13_10){$(13_10)	if (keyboard_check(vk_alt))$(13_10)	{$(13_10)	move_towards_point(x,y-5,1)$(13_10)	 $(13_10)		}else{move_towards_point(x,y,0)}$(13_10)	}$(13_10)}else {move_towards_point(x,y+1,0)  }$(13_10)$(13_10)$(13_10)if  (!place_meeting(x,y+30,obj_wall))$(13_10){$(13_10)if  (place_meeting(x,y-30,obj_player1))$(13_10){$(13_10)	if (keyboard_check(vk_alt))$(13_10)	{$(13_10)	move_towards_point(x,y+5,1)$(13_10)	$(13_10)	}else{move_towards_point(x,y,0)}$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10) if distance_to_object(obj_player1) >12$(13_10) {$(13_10) move_towards_point(x,y,0) $(13_10) }$(13_10) $(13_10)}"
//hspeed = 0;


if  (global.carry = 0 )
{

if  (!place_meeting(x,y-3,obj_wall))
{
if  (place_meeting(x,y+32,obj_player1))
{
	if (keyboard_check(vk_alt))
	{
	move_towards_point(x,y-5,1)
	 
		}else{move_towards_point(x,y,0)}
	}
}else {move_towards_point(x,y+1,0)  }


if  (!place_meeting(x,y+30,obj_wall))
{
if  (place_meeting(x,y-30,obj_player1))
{
	if (keyboard_check(vk_alt))
	{
	move_towards_point(x,y+5,1)
	
	}else{move_towards_point(x,y,0)}
}

}



 if distance_to_object(obj_player1) >12
 {
 move_towards_point(x,y,0) 
 }
 
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 229700E1
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "30"
if(distance_to_object(obj_player1) < 30)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0FB72603
	/// @DnDParent : 229700E1
	/// @DnDArgument : "code" "depth = -2103"
	depth = -2103

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7D093A8A
	/// @DnDParent : 229700E1
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 62499E60
	/// @DnDParent : 229700E1
	/// @DnDArgument : "obj" "obj_shiny"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "70eb2941-6fd6-4804-91c8-931d5b81714f"
	var l62499E60_0 = false;
	l62499E60_0 = instance_exists(obj_shiny);
	if(!l62499E60_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1AED53B0
		/// @DnDParent : 62499E60
		/// @DnDArgument : "xpos" "instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).x"
		/// @DnDArgument : "ypos" "instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y"
		/// @DnDArgument : "objectid" "obj_shiny"
		/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
		instance_create_layer(instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).x, instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y, "Instances", obj_shiny);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1B447AF8
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 26FF67DB
	/// @DnDParent : 1B447AF8
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5C2C5754
	/// @DnDParent : 1B447AF8
	/// @DnDArgument : "code" "depth = -0"
	depth = -0
}