/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 057AA29F
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_player1) <= 20)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 70AC1C8E
	/// @DnDParent : 057AA29F
	/// @DnDArgument : "key" "vk_alt"
	var l70AC1C8E_0;
	l70AC1C8E_0 = keyboard_check(vk_alt);
	if (l70AC1C8E_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49CFC5C4
		/// @DnDParent : 70AC1C8E
		/// @DnDArgument : "expr" "+3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ak_fuel"
		global.ak_fuel += +3;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1C9EDF0D
		/// @DnDApplyTo : instance_nearest(obj_player1.x,obj_player1.y,obj_branch)
		/// @DnDParent : 70AC1C8E
		with(instance_nearest(obj_player1.x,obj_player1.y,obj_branch)) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2EC19F45
	/// @DnDParent : 057AA29F
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5812457C
		/// @DnDParent : 2EC19F45
		/// @DnDArgument : "obj" "obj_button"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
		var l5812457C_0 = false;
		l5812457C_0 = instance_exists(obj_button);
		if(!l5812457C_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 56375DAB
			/// @DnDParent : 5812457C
			/// @DnDArgument : "xpos" "obj_player1.x-32"
			/// @DnDArgument : "ypos" "obj_player1.y-128"
			/// @DnDArgument : "objectid" "obj_button"
			/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
		}
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2A94F2BA
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 057AA29F
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
}