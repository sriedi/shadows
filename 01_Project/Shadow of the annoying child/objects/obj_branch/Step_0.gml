/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 057AA29F
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "30"
if(distance_to_object(obj_player1) <= 30)
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
		/// @DnDInput : 2
		/// @DnDParent : 70AC1C8E
		/// @DnDArgument : "expr" "+3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "+3"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "global.ak_fuel"
		/// @DnDArgument : "var_1" "global.fuel"
		global.ak_fuel += +3;
		global.fuel += +3;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1C9EDF0D
		/// @DnDApplyTo : instance_nearest(obj_player1.x,obj_player1.y,obj_branch)
		/// @DnDParent : 70AC1C8E
		with(instance_nearest(obj_player1.x,obj_player1.y,obj_branch)) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EAE4A09
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "90"
if(distance_to_object(obj_player1) < 90)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 08A8F250
	/// @DnDParent : 1EAE4A09
	/// @DnDArgument : "code" "depth = -2200"
	depth = -2200

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5CFCFD34
	/// @DnDParent : 1EAE4A09
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1D5A11FE
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6D744A40
	/// @DnDParent : 1D5A11FE
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 05F7F0DC
	/// @DnDParent : 1D5A11FE
	/// @DnDArgument : "code" "depth = -0"
	depth = -0
}