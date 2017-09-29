/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A17CDC4
/// @DnDArgument : "code" "var layer_id = layer_get_id("CollisionTiles");$(13_10)$(13_10)collision_tile_map_id = layer_tilemap_get_id(layer_id);$(13_10)$(13_10)"
var layer_id = layer_get_id("CollisionTiles");

collision_tile_map_id = layer_tilemap_get_id(layer_id);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A422CBB
/// @DnDInput : 3
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_2" "8"
/// @DnDArgument : "var" "Player_speed"
/// @DnDArgument : "var_1" "global.fuel"
/// @DnDArgument : "var_2" "maxspeed"
Player_speed = 8;
global.fuel = 0;
maxspeed = 8;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0E6BAB35
/// @DnDArgument : "var" "carry"
global.carry = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 7499A702
/// @DnDArgument : "speed" "0.8"
image_speed = 0.8;