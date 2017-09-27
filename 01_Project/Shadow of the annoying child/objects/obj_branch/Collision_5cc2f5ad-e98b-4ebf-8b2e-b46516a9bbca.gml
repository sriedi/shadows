/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 13767ADD
/// @DnDArgument : "obj" "obj_button"
/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
var l13767ADD_0 = false;
l13767ADD_0 = instance_exists(obj_button);
if(l13767ADD_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5E329932
	/// @DnDParent : 13767ADD
	var l5E329932_0;
	l5E329932_0 = keyboard_check(vk_space);
	if (l5E329932_0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 07D9204A
		/// @DnDParent : 5E329932
		/// @DnDArgument : "value" "+4"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "fuel"
		global.fuel += +4;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5C134934
		/// @DnDParent : 5E329932
		instance_destroy();
	}
}