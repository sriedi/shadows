/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A99E217
/// @DnDArgument : "var" "end_cooldown"
if(end_cooldown == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1388C3C8
	/// @DnDParent : 5A99E217
	/// @DnDArgument : "room" "room_menu"
	/// @DnDSaveInfo : "room" "7c07dda4-e7b8-4964-9eb3-b1a987129c03"
	room_goto(room_menu);
}