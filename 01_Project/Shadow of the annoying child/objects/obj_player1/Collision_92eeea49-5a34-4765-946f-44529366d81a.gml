/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4174FCD1
/// @DnDArgument : "obj" "obj_button"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
var l4174FCD1_0 = false;
l4174FCD1_0 = instance_exists(obj_button);
if(!l4174FCD1_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3493F3AC
	/// @DnDParent : 4174FCD1
	/// @DnDArgument : "xpos" "obj_player1.x-32"
	/// @DnDArgument : "ypos" "obj_player1.y-150"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
	instance_create_layer(obj_player1.x-32, obj_player1.y-150, "Instances", obj_button);
}