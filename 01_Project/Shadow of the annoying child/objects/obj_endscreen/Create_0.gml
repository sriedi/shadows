/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72363BE3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "end_cooldown"
end_cooldown = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 39F12FE9
/// @DnDArgument : "steps" "200"
alarm_set(0, 200);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 1E4D8A53
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 681A64B1
/// @DnDArgument : "soundid" "enemy_awake"
/// @DnDSaveInfo : "soundid" "8758f688-486f-4d6e-a88b-4f1e8caf218c"
audio_play_sound(enemy_awake, 0, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 07DA1766
/// @DnDArgument : "soundid" "defeat"
/// @DnDSaveInfo : "soundid" "ac1f2719-937b-4c71-8da3-f23ebbf8a497"
audio_play_sound(defeat, 0, 0);