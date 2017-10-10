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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7686F84F
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "60"
if(distance_to_object(obj_player1) < 60)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0CB5EAAD
	/// @DnDParent : 7686F84F
	/// @DnDArgument : "code" "depth = -2125"
	depth = -2125

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 06D91C3E
	/// @DnDParent : 7686F84F
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 397B4105
	/// @DnDParent : 7686F84F
	/// @DnDArgument : "obj" "obj_shiny"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "70eb2941-6fd6-4804-91c8-931d5b81714f"
	var l397B4105_0 = false;
	l397B4105_0 = instance_exists(obj_shiny);
	if(!l397B4105_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6189EB24
		/// @DnDParent : 397B4105
		/// @DnDArgument : "xpos" "instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).x"
		/// @DnDArgument : "ypos" "instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).y"
		/// @DnDArgument : "objectid" "obj_shiny"
		/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
		instance_create_layer(instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).x, instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).y, "Instances", obj_shiny);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1CBBB762
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2BD86705
	/// @DnDParent : 1CBBB762
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1A90D777
	/// @DnDParent : 1CBBB762
	/// @DnDArgument : "code" "depth = -0"
	depth = -0
}