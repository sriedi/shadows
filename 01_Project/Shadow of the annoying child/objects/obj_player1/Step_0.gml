/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46149BFB
/// @DnDArgument : "code" "/// Movement$(13_10)$(13_10)Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)> 0);$(13_10)Key_left = - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)< 0);$(13_10)Key_up  = -keyboard_check(vk_up)|| (gamepad_axis_value(0,gp_axislv)> 0);$(13_10)Key_down = keyboard_check(vk_up)|| (gamepad_axis_value(0,gp_axislv)< 0);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// Movement

Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)> 0);
Key_left = - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)< 0);
Key_up  = -keyboard_check(vk_up)|| (gamepad_axis_value(0,gp_axislv)> 0);
Key_down = keyboard_check(vk_up)|| (gamepad_axis_value(0,gp_axislv)< 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34D8801C
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1000"
if(distance_to_object(obj_baby) >= 1000)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 53A475EC
	/// @DnDParent : 34D8801C
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C4F7147
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_baby) <= 20)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 06F3FD0B
	/// @DnDParent : 7C4F7147
	var l06F3FD0B_0;
	l06F3FD0B_0 = keyboard_check(vk_space);
	if (l06F3FD0B_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 000D7B77
		/// @DnDApplyTo : 3bf7bbf1-bee5-4c49-8106-bc34b1d9cf07
		/// @DnDParent : 06F3FD0B
		/// @DnDArgument : "x" "obj_player1.x +10"
		/// @DnDArgument : "y" "obj_player1.y -20"
		with(obj_baby) {
		x = obj_player1.x +10;
		y = obj_player1.y -20;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 11FAC0D2
		/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
		/// @DnDParent : 06F3FD0B
		with(obj_button) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FF00116
		/// @DnDParent : 06F3FD0B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.carry"
		global.carry = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79BB57BF
	/// @DnDParent : 7C4F7147
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1991B0B1
		/// @DnDParent : 79BB57BF
		/// @DnDArgument : "obj" "obj_button"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
		var l1991B0B1_0 = false;
		l1991B0B1_0 = instance_exists(obj_button);
		if(!l1991B0B1_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 42BF102B
			/// @DnDParent : 1991B0B1
			/// @DnDArgument : "xpos" "obj_player1.x-32"
			/// @DnDArgument : "ypos" "obj_player1.y-128"
			/// @DnDArgument : "objectid" "obj_button"
			/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 181D3E7B
		/// @DnDParent : 79BB57BF
		/// @DnDArgument : "var" "global.carry"
		global.carry = 0;
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 58DBCAFF
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 7C4F7147
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 233AE9DA
/// @DnDArgument : "var" "distance_to_object(obj_enemy)"
/// @DnDArgument : "value" "10"
if(distance_to_object(obj_enemy) == 10)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 1BA36C21
	/// @DnDParent : 233AE9DA
	var l1BA36C21_0;
	l1BA36C21_0 = keyboard_check_pressed(vk_space);
	if (l1BA36C21_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3B9481D9
		/// @DnDParent : 1BA36C21
		instance_create_layer(0, 0, "Instances", noone);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3A47E7F2
	/// @DnDParent : 233AE9DA
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 705DBFB0
		/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
		/// @DnDParent : 3A47E7F2
		with(obj_button) instance_destroy();
	}
}