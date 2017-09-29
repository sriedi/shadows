/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 27BF0FEE
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 779D0B1D
/// @DnDArgument : "key" "vk_right"
var l779D0B1D_0;
l779D0B1D_0 = keyboard_check(vk_right);
if (l779D0B1D_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6B18B0CB
	/// @DnDParent : 779D0B1D
	/// @DnDArgument : "code" "image_speed = .2;"
	image_speed = .2;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 56D49DF7
/// @DnDArgument : "y" "Player_speed"
/// @DnDArgument : "y_relative" "1"

y += Player_speed;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 041EB7C5
/// @DnDArgument : "imageind" "19"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_Player_Down"
/// @DnDSaveInfo : "spriteind" "f4d31303-931e-43eb-aaab-c15f86e14c53"
sprite_index = spr_Player_Down;
image_index += 19;