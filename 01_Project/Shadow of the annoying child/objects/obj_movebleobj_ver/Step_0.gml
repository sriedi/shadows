/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 068EE6B1
/// @DnDArgument : "code" "//hspeed = 0;$(13_10)$(13_10)$(13_10)if  (global.carry = 0 )$(13_10){$(13_10)$(13_10)if  (!place_meeting(x,y-3,obj_wall))$(13_10){$(13_10)if  (place_meeting(x,y+32,obj_player1))$(13_10){$(13_10)	if (keyboard_check(vk_space))$(13_10)	{$(13_10)	move_towards_point(x,y-5,1)$(13_10)	 $(13_10)		}$(13_10)	}$(13_10)}else {move_towards_point(x,y+1,0)  }$(13_10)$(13_10)$(13_10)if  (!place_meeting(x,y+30,obj_wall))$(13_10){$(13_10)if  (place_meeting(x,y-30,obj_player1))$(13_10){$(13_10)	if (keyboard_check(vk_space))$(13_10)	{$(13_10)	move_towards_point(x,y+5,1)$(13_10)	$(13_10)	}$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10) if distance_to_object(obj_player1) >12$(13_10) {$(13_10) move_towards_point(x,y,0) $(13_10) }$(13_10) $(13_10)}"
//hspeed = 0;


if  (global.carry = 0 )
{

if  (!place_meeting(x,y-3,obj_wall))
{
if  (place_meeting(x,y+32,obj_player1))
{
	if (keyboard_check(vk_space))
	{
	move_towards_point(x,y-5,1)
	 
		}
	}
}else {move_towards_point(x,y+1,0)  }


if  (!place_meeting(x,y+30,obj_wall))
{
if  (place_meeting(x,y-30,obj_player1))
{
	if (keyboard_check(vk_space))
	{
	move_towards_point(x,y+5,1)
	
	}
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
		var l61E73CE1_0;
		l61E73CE1_0 = keyboard_check(vk_space);
		if (l61E73CE1_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 156266AF
			/// @DnDParent : 61E73CE1
			/// @DnDArgument : "var" "obj_player1.y-32"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y"
			if(obj_player1.y-32 <= instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y)
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7D1D06B3
				/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
				/// @DnDParent : 156266AF
				with(obj_button) instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 448DCFC8
			/// @DnDParent : 61E73CE1
			/// @DnDArgument : "var" "obj_player1.y+32"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y"
			if(obj_player1.y+32 >= instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y)
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 4BB7EE34
				/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
				/// @DnDParent : 448DCFC8
				with(obj_button) instance_destroy();
			}
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
			/// @DnDArgument : "obj" "obj_button"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			var l2CF4B75D_0 = false;
			l2CF4B75D_0 = instance_exists(obj_button);
			if(!l2CF4B75D_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 08E18FF9
				/// @DnDParent : 2CF4B75D
				/// @DnDArgument : "xpos" "obj_player1.x-32"
				/// @DnDArgument : "ypos" "obj_player1.y-128"
				/// @DnDArgument : "objectid" "obj_button"
				/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
				instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
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