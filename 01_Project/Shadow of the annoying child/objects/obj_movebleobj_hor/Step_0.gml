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
/// @DnDHash : 1D67B94F
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_player1) <= 20)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EB4A07B
	/// @DnDParent : 1D67B94F
	/// @DnDArgument : "var" "global.carry"
	if(global.carry == 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 61E73CE1
		/// @DnDParent : 2EB4A07B
		/// @DnDArgument : "key" "vk_alt"
		var l61E73CE1_0;
		l61E73CE1_0 = keyboard_check(vk_alt);
		if (l61E73CE1_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7D1D06B3
			/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
			/// @DnDParent : 61E73CE1
			with(obj_button) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 123B27F4
		/// @DnDParent : 2EB4A07B
		else
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2CF4B75D
			/// @DnDParent : 123B27F4
			/// @DnDArgument : "obj" "obj_shiny"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "70eb2941-6fd6-4804-91c8-931d5b81714f"
			var l2CF4B75D_0 = false;
			l2CF4B75D_0 = instance_exists(obj_shiny);
			if(!l2CF4B75D_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 08E18FF9
				/// @DnDParent : 2CF4B75D
				/// @DnDArgument : "xpos" "obj_player1.x-32"
				/// @DnDArgument : "ypos" "obj_player1.y-128"
				/// @DnDArgument : "objectid" "obj_shiny"
				/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
				instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_shiny);
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 10CDE1E0
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 1D67B94F
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
}