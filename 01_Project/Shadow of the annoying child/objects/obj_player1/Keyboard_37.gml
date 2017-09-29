/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 238D36CC
/// @DnDArgument : "direction" "180"
direction = 180;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 16721CD8
/// @DnDArgument : "x" "-Player_speed"
/// @DnDArgument : "x_relative" "1"
x += -Player_speed;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1F1C8891
/// @DnDArgument : "imageind" "19"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_Player_left"
/// @DnDSaveInfo : "spriteind" "dc812770-0c40-4183-b8b4-c46247e77b11"
sprite_index = spr_Player_left;
image_index += 19;