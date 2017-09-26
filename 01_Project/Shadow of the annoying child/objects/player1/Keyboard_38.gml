/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 61549FAA
/// @DnDArgument : "direction" "90"
direction = 90;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 4543B10D
/// @DnDArgument : "y" "-Player_speed"
/// @DnDArgument : "y_relative" "1"

y += -Player_speed;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 06E397D8
/// @DnDArgument : "spriteind" "Player_UP"
/// @DnDSaveInfo : "spriteind" "f79b890a-2e22-4ac2-b71e-e242a37e6605"
sprite_index = Player_UP;
image_index = 0;