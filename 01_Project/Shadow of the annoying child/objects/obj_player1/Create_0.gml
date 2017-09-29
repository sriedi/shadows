/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A17CDC4
/// @DnDArgument : "code" "var layer_id = layer_get_id("CollisionTiles");$(13_10)collision_tile_map_id = layer_tilemap_get_id(layer_id);"
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A422CBB
/// @DnDInput : 4
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_1" "direction.x"
/// @DnDArgument : "expr_2" "direction.y"
/// @DnDArgument : "var" "Player_speed"
/// @DnDArgument : "var_1" "dir_x"
/// @DnDArgument : "var_2" "dir_y"
/// @DnDArgument : "var_3" "global.fuel"
Player_speed = 8;
dir_x = direction.x;
dir_y = direction.y;
global.fuel = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0E6BAB35
/// @DnDArgument : "var" "carry"
global.carry = 0;