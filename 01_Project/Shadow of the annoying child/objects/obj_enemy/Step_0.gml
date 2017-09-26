/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 16757E5D
/// @DnDArgument : "speed" "enemysdp"
speed = enemysdp;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0A565C7E
/// @DnDArgument : "x" "obj_baby.x"
/// @DnDArgument : "y" "obj_baby.y"
direction = point_direction(x, y, obj_baby.x, obj_baby.y);