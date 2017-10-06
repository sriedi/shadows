/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 387A1A75
/// @DnDArgument : "soundid" "anbiente"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "8131266a-daf6-4fe6-8735-3a9955f5ed1d"
audio_play_sound(anbiente, 0, 1);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 761BA3B3
/// @DnDArgument : "soundid" "musik"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "75713228-b2bb-44a3-8f3b-3c04b24009a2"
audio_play_sound(musik, 0, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A422CBB
/// @DnDInput : 6
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_2" "8"
/// @DnDArgument : "expr_3" "8"
/// @DnDArgument : "expr_4" "1.4"
/// @DnDArgument : "expr_5" "20"
/// @DnDArgument : "var" "collisionspd"
/// @DnDArgument : "var_1" "global.fuel"
/// @DnDArgument : "var_2" "maxspeed"
/// @DnDArgument : "var_3" "Player_speed"
/// @DnDArgument : "var_4" "imagesdp"
/// @DnDArgument : "var_5" "babydis2"
collisionspd = 8;
global.fuel = 0;
maxspeed = 8;
Player_speed = 8;
imagesdp = 1.4;
babydis2 = 20;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0E6BAB35
/// @DnDInput : 7
/// @DnDArgument : "value_2" "60"
/// @DnDArgument : "value_3" "10"
/// @DnDArgument : "value_5" "8"
/// @DnDArgument : "var" "carry"
/// @DnDArgument : "var_1" "enemyagro"
/// @DnDArgument : "var_2" "carrycooldown"
/// @DnDArgument : "var_3" "ak_fuel"
/// @DnDArgument : "var_4" "Meeting"
/// @DnDArgument : "var_5" "Player_speed"
/// @DnDArgument : "var_6" "push"
global.carry = 0;
global.enemyagro = 0;
global.carrycooldown = 60;
global.ak_fuel = 10;
global.Meeting = 0;
global.Player_speed = 8;
global.push = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 7499A702
/// @DnDArgument : "speed" "0.8"
image_speed = 0.8;