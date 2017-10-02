/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 7DDEEA92
/// @DnDArgument : "x" "obj_player1.x"
/// @DnDArgument : "y" "obj_player1.y"
x = obj_player1.x;
y = obj_player1.y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 31CC22DA
/// @DnDArgument : "key" "vk_shift"
var l31CC22DA_0;
l31CC22DA_0 = keyboard_check(vk_shift);
if (l31CC22DA_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 674F7CF5
	/// @DnDParent : 31CC22DA
	/// @DnDArgument : "x" "obj_player1.x-40"
	/// @DnDArgument : "y" "obj_player1.y-80"
	x = obj_player1.x-40;
	y = obj_player1.y-80;
}