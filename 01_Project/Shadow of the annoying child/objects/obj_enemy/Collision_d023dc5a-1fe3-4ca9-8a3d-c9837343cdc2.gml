/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6161A3EA
/// @DnDArgument : "value" "30"
/// @DnDArgument : "var" "fear"
global.fear = 30;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 349698BF
/// @DnDArgument : "soundid" "enemy_fear"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "a01531cb-fae5-432c-897f-9246006d9734"
var l349698BF_0 = enemy_fear;
if (!audio_is_playing(l349698BF_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 465B233D
	/// @DnDParent : 349698BF
	/// @DnDArgument : "soundid" "enemy_fear"
	/// @DnDSaveInfo : "soundid" "a01531cb-fae5-432c-897f-9246006d9734"
	audio_play_sound(enemy_fear, 0, 0);
}