/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 31BAABFA
/// @DnDArgument : "obj" "obj_Tourch"
/// @DnDSaveInfo : "obj" "c89653b0-ed76-493e-8111-81ee836c6185"
var l31BAABFA_0 = false;
l31BAABFA_0 = instance_exists(obj_Tourch);
if(l31BAABFA_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6764D37D
	/// @DnDParent : 31BAABFA
	/// @DnDArgument : "x" "obj_Tourch.x"
	/// @DnDArgument : "y" "obj_Tourch.y"
	x = obj_Tourch.x;
	y = obj_Tourch.y;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 3197F406
/// @DnDArgument : "x" "obj_player1.x"
/// @DnDArgument : "y" "obj_player1.y"
x = obj_player1.x;
y = obj_player1.y;