/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E7948F6
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_player1) <= 20)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E103A28
	/// @DnDParent : 2E7948F6
	if(variable == 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 135017F7
		/// @DnDParent : 5E103A28
		/// @DnDArgument : "x" "obj_player1.x"
		/// @DnDArgument : "y" "obj_player1.y"
		x = obj_player1.x;
		y = obj_player1.y;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25EEA1B8
	/// @DnDParent : 2E7948F6
	/// @DnDArgument : "var" "global.carry"
	if(global.carry == 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 581D8E2A
		/// @DnDParent : 25EEA1B8
		var l581D8E2A_0;
		l581D8E2A_0 = keyboard_check(vk_space);
		if (l581D8E2A_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37732EAC
			/// @DnDParent : 581D8E2A
			/// @DnDArgument : "var" "obj_player1.y-32"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y"
			if(obj_player1.y-32 <= instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y)
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 00D33B1C
				/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
				/// @DnDParent : 37732EAC
				with(obj_button) instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 102BADBC
			/// @DnDParent : 581D8E2A
			/// @DnDArgument : "var" "obj_player1.y+32"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y"
			if(obj_player1.y+32 >= instance_nearest(obj_player1.x,obj_player1.y,obj_movebleobj_ver).y)
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0444EF54
				/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
				/// @DnDParent : 102BADBC
				with(obj_button) instance_destroy();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 19B3A5F2
		/// @DnDParent : 25EEA1B8
		else
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 04889248
			/// @DnDParent : 19B3A5F2
			/// @DnDArgument : "obj" "obj_button"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			var l04889248_0 = false;
			l04889248_0 = instance_exists(obj_button);
			if(!l04889248_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 46F1A735
				/// @DnDParent : 04889248
				/// @DnDArgument : "xpos" "obj_player1.x-32"
				/// @DnDArgument : "ypos" "obj_player1.y-128"
				/// @DnDArgument : "objectid" "obj_button"
				/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
				instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
			}
		}
	}
}