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