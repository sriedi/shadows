/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 44937076
/// @DnDArgument : "obj" "obj_button_mov"
/// @DnDSaveInfo : "obj" "1bac6d49-51f1-4644-ba76-5dee25459e41"
var l44937076_0 = false;
l44937076_0 = instance_exists(obj_button_mov);
if(l44937076_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1FF1A7EF
	/// @DnDParent : 44937076
	var l1FF1A7EF_0;
	l1FF1A7EF_0 = keyboard_check(vk_space);
	if (l1FF1A7EF_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7BFE7993
		/// @DnDParent : 1FF1A7EF
		/// @DnDArgument : "x" "obj_movebleobj_ver.x"
		/// @DnDArgument : "y" "obj_player1.y"
		x = obj_movebleobj_ver.x;
		y = obj_player1.y;
	}
}