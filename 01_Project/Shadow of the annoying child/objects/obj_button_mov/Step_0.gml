/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2F50966F
/// @DnDArgument : "x" "obj_player1.x-74"
/// @DnDArgument : "y" "obj_player1.y-128"
x = obj_player1.x-74;
y = obj_player1.y-128;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 435E355A
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "life2"
life2 += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1706ABAA
/// @DnDArgument : "var" "life2"
if(life2 == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 32B67462
	/// @DnDApplyTo : 1bac6d49-51f1-4644-ba76-5dee25459e41
	/// @DnDParent : 1706ABAA
	with(obj_button_mov) instance_destroy();
}