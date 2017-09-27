/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55F69496
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "carry"
carry = 1;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 077E2E00
/// @DnDArgument : "obj" "obj_button"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
var l077E2E00_0 = false;
l077E2E00_0 = instance_exists(obj_button);
if(!l077E2E00_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 39BAFE80
	/// @DnDParent : 077E2E00
	/// @DnDArgument : "xpos" "obj_player1.x-32"
	/// @DnDArgument : "ypos" "obj_player1.y-150"
	/// @DnDArgument : "objectid" "obj_button"
	/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
	instance_create_layer(obj_player1.x-32, obj_player1.y-150, "Instances", obj_button);
}