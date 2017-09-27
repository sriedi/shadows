/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2F646592
/// @DnDInput : 3
/// @DnDArgument : "value" "10"
/// @DnDArgument : "value_1" "global.fuel/10"
/// @DnDArgument : "value_2" "1"
/// @DnDArgument : "var" "fuel"
/// @DnDArgument : "var_1" "brightness"
/// @DnDArgument : "var_2" "brightness_mod"
global.fuel = 10;
global.brightness = global.fuel/10;
global.brightness_mod = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 1EEA872E
/// @DnDArgument : "xscale" "global.brightness"
/// @DnDArgument : "yscale" "global.brightness"
image_xscale = global.brightness;
image_yscale = global.brightness;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 251FA2FD
/// @DnDArgument : "alpha" "0.45"
image_alpha = 0.45;