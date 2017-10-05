/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5223BCF9
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_player1) <= 20)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AFA6E48
	/// @DnDParent : 5223BCF9
	/// @DnDArgument : "var" "global.carry"
	if(global.carry == 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 4ECD1E76
		/// @DnDParent : 3AFA6E48
		/// @DnDArgument : "key" "vk_alt"
		var l4ECD1E76_0;
		l4ECD1E76_0 = keyboard_check(vk_alt);
		if (l4ECD1E76_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0CE5D5EE
			/// @DnDInput : 2
			/// @DnDParent : 4ECD1E76
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "var" "global.carry"
			/// @DnDArgument : "var_1" "global.carrycooldown"
			global.carry = 1;
			global.carrycooldown = 1;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7F5C54DC
			/// @DnDApplyTo : 70eb2941-6fd6-4804-91c8-931d5b81714f
			/// @DnDParent : 4ECD1E76
			with(obj_shiny) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 70AF5491
		/// @DnDParent : 3AFA6E48
		else
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 715A48D1
			/// @DnDParent : 70AF5491
			/// @DnDArgument : "obj" "obj_button"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			var l715A48D1_0 = false;
			l715A48D1_0 = instance_exists(obj_button);
			if(!l715A48D1_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 41B3FA4A
				/// @DnDParent : 715A48D1
				/// @DnDArgument : "xpos" "obj_player1.x-32"
				/// @DnDArgument : "ypos" "obj_player1.y-128"
				/// @DnDArgument : "objectid" "obj_shiny"
				/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
				instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_shiny);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 147B4BD6
				/// @DnDParent : 715A48D1
				/// @DnDArgument : "var" "global.carry"
				global.carry = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6D815DC4
	/// @DnDApplyTo : 70eb2941-6fd6-4804-91c8-931d5b81714f
	/// @DnDParent : 5223BCF9
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_shiny) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30B41936
	/// @DnDParent : 5223BCF9
	/// @DnDArgument : "xpos" "obj_player1.x-32"
	/// @DnDArgument : "ypos" "obj_player1.y-128"
	/// @DnDArgument : "objectid" "obj_shiny"
	/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
	instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_shiny);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3110AEAC
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B20E561
	/// @DnDApplyTo : 70eb2941-6fd6-4804-91c8-931d5b81714f
	/// @DnDParent : 3110AEAC
	with(obj_shiny) instance_destroy();
}