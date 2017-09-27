/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7BEAEE73
/// @DnDArgument : "obj" "obj_button_mov"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "1bac6d49-51f1-4644-ba76-5dee25459e41"
var l7BEAEE73_0 = false;
l7BEAEE73_0 = instance_exists(obj_button_mov);
if(!l7BEAEE73_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 646FB66D
	/// @DnDParent : 7BEAEE73
	/// @DnDArgument : "xpos" "obj_player1.x-32"
	/// @DnDArgument : "ypos" "obj_player1.y-128"
	/// @DnDArgument : "objectid" "obj_button_mov"
	/// @DnDSaveInfo : "objectid" "1bac6d49-51f1-4644-ba76-5dee25459e41"
	instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button_mov);
}