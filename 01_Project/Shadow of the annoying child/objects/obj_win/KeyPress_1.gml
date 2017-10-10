/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D6CB0F3
/// @DnDArgument : "var" "end_cooldown"
if(end_cooldown == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 58ABB693
	/// @DnDParent : 3D6CB0F3
	/// @DnDArgument : "room" "room_menu"
	/// @DnDSaveInfo : "room" "7c07dda4-e7b8-4964-9eb3-b1a987129c03"
	room_goto(room_menu);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 43699FF6
	/// @DnDParent : 3D6CB0F3
	audio_stop_all();
}