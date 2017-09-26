/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 2F508FDB
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 78DD7AEE
/// @DnDArgument : "x" "Player_speed"
/// @DnDArgument : "x_relative" "1"
x += Player_speed;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 679D3B68
/// @DnDArgument : "spriteind" "Player_Right"
/// @DnDSaveInfo : "spriteind" "66bff1b3-2777-43eb-a8c0-1ebb775cee84"
sprite_index = Player_Right;
image_index = 0;