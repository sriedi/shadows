/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 27BF0FEE
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 56D49DF7
/// @DnDArgument : "y" "Player_speed"
/// @DnDArgument : "y_relative" "1"

y += Player_speed;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 041EB7C5
/// @DnDArgument : "spriteind" "Player_Down"
/// @DnDSaveInfo : "spriteind" "f4d31303-931e-43eb-aaab-c15f86e14c53"
sprite_index = Player_Down;
image_index = 0;