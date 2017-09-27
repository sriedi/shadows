/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 44DEE36B

/// @DnDArgument : "x" "obj_player1.x-32"
/// @DnDArgument : "y" "obj_player1.y-128"
x = obj_player1.x-32;
y = obj_player1.y-128;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72C5B4A0
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "life"
life += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15D2E784
/// @DnDArgument : "var" "life"
if(life == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D116725
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 15D2E784
	with(obj_button) instance_destroy();
}