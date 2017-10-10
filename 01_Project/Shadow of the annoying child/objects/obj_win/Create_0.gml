/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04A2E011
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "end_cooldown"
end_cooldown = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 70EDC01C
/// @DnDArgument : "steps" "200"
alarm_set(0, 200);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 1EF5EFD2
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5EFC709C
/// @DnDArgument : "soundid" "victory"
/// @DnDSaveInfo : "soundid" "91455610-88b3-4466-9d1b-337c264b31cc"
audio_play_sound(victory, 0, 0);