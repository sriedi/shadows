/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A9D6124
/// @DnDArgument : "var" "end_cooldown"
if(end_cooldown == 0)
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6EDCDFAD
	/// @DnDParent : 1A9D6124
	audio_stop_all();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2EBFE9F3
	/// @DnDParent : 1A9D6124
	/// @DnDArgument : "room" "room_menu"
	/// @DnDSaveInfo : "room" "7c07dda4-e7b8-4964-9eb3-b1a987129c03"
	room_goto(room_menu);
}