/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72B8F1B8
/// @DnDArgument : "var" "obj_tree1.x+68"
/// @DnDArgument : "value" "obj_player1.x-68"
if(obj_tree1.x+68 == obj_player1.x-68)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 14561C27
	/// @DnDParent : 72B8F1B8
	/// @DnDArgument : "x" "obj_player1.x+2"
	/// @DnDArgument : "y" "obj_player1.y"
	x = obj_player1.x+2;
	y = obj_player1.y;
}