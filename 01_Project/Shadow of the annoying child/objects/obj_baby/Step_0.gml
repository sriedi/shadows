/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E939E28
/// @DnDArgument : "code" "depth =-1"
depth =-1

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB9EE32
/// @DnDArgument : "var" "distance_to_object(obj_enemy)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "30"
if(distance_to_object(obj_enemy) <= 30)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4FEAAD97
	/// @DnDParent : 3BB9EE32
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_baby_cray"
	/// @DnDSaveInfo : "spriteind" "9044138d-26ce-492b-b4fe-c9c8ee33003e"
	sprite_index = spr_baby_cray;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 276ED81A
	/// @DnDParent : 3BB9EE32
	/// @DnDArgument : "code" "gamepad_set_vibration(0, 1, 1);"
	gamepad_set_vibration(0, 1, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 084DA18C
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_player1) <= 20)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0D0E6C4C
	/// @DnDParent : 084DA18C
	var l0D0E6C4C_0;
	l0D0E6C4C_0 = keyboard_check(vk_space);
	if (l0D0E6C4C_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BAC2764
		/// @DnDParent : 0D0E6C4C
		/// @DnDArgument : "var" "global.carry"
		/// @DnDArgument : "value" "1"
		if(global.carry == 1)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4372805A
			/// @DnDParent : 5BAC2764
			/// @DnDArgument : "x" "obj_player1.x+10"
			/// @DnDArgument : "y" "obj_player1.y-20"
			x = obj_player1.x+10;
			y = obj_player1.y-20;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3AB42D74
			/// @DnDParent : 5BAC2764
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_baby_c"
			/// @DnDSaveInfo : "spriteind" "f5d0f173-6f95-472d-bc4a-d0ba2b45b600"
			sprite_index = spr_baby_c;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 351FFB2C
	/// @DnDParent : 084DA18C
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4F3519D3
		/// @DnDParent : 351FFB2C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_Baby"
		/// @DnDSaveInfo : "spriteind" "80174e09-d0cd-4397-b25a-cd3c51da6487"
		sprite_index = spr_Baby;
		image_index += 0;
	}
}