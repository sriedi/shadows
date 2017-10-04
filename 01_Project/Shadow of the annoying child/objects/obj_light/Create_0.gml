/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2F646592
/// @DnDInput : 5
/// @DnDArgument : "value" "global.ak_fuel"
/// @DnDArgument : "value_1" "global.ak_fuel/10"
/// @DnDArgument : "value_2" "1"
/// @DnDArgument : "value_3" "10"
/// @DnDArgument : "var" "fuel"
/// @DnDArgument : "var_1" "brightness"
/// @DnDArgument : "var_2" "brightness_mod"
/// @DnDArgument : "var_3" "maxfuel"
/// @DnDArgument : "var_4" "obj_Tourch"
global.fuel = global.ak_fuel;
global.brightness = global.ak_fuel/10;
global.brightness_mod = 1;
global.maxfuel = 10;
global.obj_Tourch = 0;

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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 47E872EA
/// @DnDArgument : "value" "sqr((obj_light.sprite_width*obj_light.sprite_width)+(obj_light.sprite_height*obj_light.sprite_height))/2"
/// @DnDArgument : "var" "light_scale"
global.light_scale = sqr((obj_light.sprite_width*obj_light.sprite_width)+(obj_light.sprite_height*obj_light.sprite_height))/2;