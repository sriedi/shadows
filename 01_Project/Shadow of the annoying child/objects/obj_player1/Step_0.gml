/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46149BFB
/// @DnDArgument : "code" "/// Movement$(13_10)$(13_10)Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)> 0)$(13_10)Key_left = - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)< 0)$(13_10)$(13_10)$(13_10)"
/// Movement

Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)> 0)
Key_left = - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)< 0)

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C4F7147
/// @DnDArgument : "var" "carry"
/// @DnDArgument : "value" "1"
if(carry == 1)
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
		/// @DnDArgument : "x" "obj_player1.x-100"
		/// @DnDArgument : "y" "obj_player1.y"
		with(obj_baby) {
		x = obj_player1.x-100;
		y = obj_player1.y;
		}
	}
}