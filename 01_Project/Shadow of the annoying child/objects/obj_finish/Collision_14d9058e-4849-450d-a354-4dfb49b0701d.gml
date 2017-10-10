/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54CBA3C5
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(distance_to_object(obj_baby) <= 10)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 33F11CDE
	/// @DnDParent : 54CBA3C5
	/// @DnDArgument : "room" "room_winn"
	/// @DnDSaveInfo : "room" "92d02ced-87ed-4418-a633-e1c6acc5b377"
	room_goto(room_winn);
}