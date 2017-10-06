/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7F6916CB
/// @DnDArgument : "steps" "120"
alarm_set(0, 120);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 17596287
/// @DnDArgument : "soundid" "anbiente"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "8131266a-daf6-4fe6-8735-3a9955f5ed1d"
var l17596287_0 = anbiente;
if (!audio_is_playing(l17596287_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 53A8DFDD
	/// @DnDParent : 17596287
	/// @DnDArgument : "soundid" "anbiente"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "8131266a-daf6-4fe6-8735-3a9955f5ed1d"
	audio_play_sound(anbiente, 0, 1);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 419AAAD4
/// @DnDArgument : "soundid" "musik"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "75713228-b2bb-44a3-8f3b-3c04b24009a2"
var l419AAAD4_0 = musik;
if (!audio_is_playing(l419AAAD4_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 38C0D8F5
	/// @DnDParent : 419AAAD4
	/// @DnDArgument : "soundid" "musik"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "75713228-b2bb-44a3-8f3b-3c04b24009a2"
	audio_play_sound(musik, 0, 1);
}