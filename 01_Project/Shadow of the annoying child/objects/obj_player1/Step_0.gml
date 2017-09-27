/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 0E906E3A
variable = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46149BFB
/// @DnDArgument : "code" "/// Movement$(13_10)$(13_10)Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)> 0)$(13_10)Key_left = - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)< 0)$(13_10)$(13_10)$(13_10)"
/// Movement

Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)> 0)
Key_left = - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)< 0)

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
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54643572
/// @DnDArgument : "var" "distance_to_object(obj_movebleobj_ver)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(distance_to_object(obj_movebleobj_ver) <= 10)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E8B19D5
	/// @DnDParent : 54643572
	/// @DnDArgument : "var" "carry"
	if(carry == 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 07A6007D
		/// @DnDParent : 6E8B19D5
		var l07A6007D_0;
		l07A6007D_0 = keyboard_check(vk_space);
		if (l07A6007D_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 3493A2B3
			/// @DnDApplyTo : 1001b205-eb4d-4179-9e69-6a696db9f888
			/// @DnDParent : 07A6007D
			/// @DnDArgument : "x" "obj_movebleobj_ver.x"
			/// @DnDArgument : "y" "obj_player1.y"
			with(obj_movebleobj_ver) {
			x = obj_movebleobj_ver.x;
			y = obj_player1.y;
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 183171AE
			/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
			/// @DnDParent : 07A6007D
			with(obj_button) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 771BC4A2
		/// @DnDParent : 6E8B19D5
		else
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2142994A
			/// @DnDParent : 771BC4A2
			/// @DnDArgument : "obj" "obj_button"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			var l2142994A_0 = false;
			l2142994A_0 = instance_exists(obj_button);
			if(!l2142994A_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0620E593
				/// @DnDParent : 2142994A
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
	/// @DnDHash : 08245ACE
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 54643572
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A47E7F2
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 705DBFB0
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 3A47E7F2
	with(obj_button) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 519C7B09
/// @DnDArgument : "var" "distance_to_object(obj_branch)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_branch) <= 20)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5D82D1CC
	/// @DnDParent : 519C7B09
	var l5D82D1CC_0;
	l5D82D1CC_0 = keyboard_check(vk_space);
	if (l5D82D1CC_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15D15AEC
		/// @DnDParent : 5D82D1CC
		/// @DnDArgument : "expr" "+3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.fuel"
		global.fuel += +3;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0E00E277
		/// @DnDApplyTo : a2a8b011-37fd-4cae-9a79-60db875406af
		/// @DnDParent : 5D82D1CC
		with(obj_branch) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 656E9396
	/// @DnDParent : 519C7B09
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1700DDEC
		/// @DnDParent : 656E9396
		/// @DnDArgument : "obj" "obj_button"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
		var l1700DDEC_0 = false;
		l1700DDEC_0 = instance_exists(obj_button);
		if(!l1700DDEC_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 373CB043
			/// @DnDParent : 1700DDEC
			/// @DnDArgument : "xpos" "obj_player1.x-32"
			/// @DnDArgument : "ypos" "obj_player1.y-128"
			/// @DnDArgument : "objectid" "obj_button"
			/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
		}
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 20833DA7
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 519C7B09
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
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
		/// @DnDArgument : "x" "obj_player1.x-10"
		/// @DnDArgument : "y" "obj_player1.y"
		with(obj_baby) {
		x = obj_player1.x-10;
		y = obj_player1.y;
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
		/// @DnDArgument : "var" "carry"
		carry = 1;
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
		/// @DnDArgument : "var" "carry"
		carry = 0;
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