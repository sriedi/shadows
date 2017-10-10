/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 330C6D3A
/// @DnDArgument : "code" "if	(obj_baby.x > 2028 || obj_baby.x < 0 && obj_baby.y > 4048 || obj_baby.y < 0)$(13_10)$(13_10)$(13_10){$(13_10) room_goto(room_endscreen)$(13_10)}"
if	(obj_baby.x > 2028 || obj_baby.x < 0 && obj_baby.y > 4048 || obj_baby.y < 0)


{
 room_goto(room_endscreen)
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6626A2D5
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "500"
if(distance_to_object(obj_player1) >= 500)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7497CCF6
	/// @DnDParent : 6626A2D5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_baby_cray"
	/// @DnDSaveInfo : "spriteind" "9044138d-26ce-492b-b4fe-c9c8ee33003e"
	sprite_index = spr_baby_cray;
	image_index += 0;

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 49DFAB86
	/// @DnDParent : 6626A2D5
	/// @DnDArgument : "soundid" "sou_baby_cry"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "0289e313-9ddb-45bb-96e5-d110ce0f2e22"
	var l49DFAB86_0 = sou_baby_cry;
	if (!audio_is_playing(l49DFAB86_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1C0004D2
		/// @DnDParent : 49DFAB86
		/// @DnDArgument : "soundid" "sou_baby_cry"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "0289e313-9ddb-45bb-96e5-d110ce0f2e22"
		audio_play_sound(sou_baby_cry, 0, 1);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB9EE32
/// @DnDArgument : "var" "distance_to_object(obj_enemy)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "5"
if(distance_to_object(obj_enemy) <= 5)
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
	/// @DnDArgument : "key" "vk_alt"
	var l0D0E6C4C_0;
	l0D0E6C4C_0 = keyboard_check(vk_alt);
	if (l0D0E6C4C_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4372805A
		/// @DnDParent : 0D0E6C4C
		/// @DnDArgument : "x" "obj_player1.x+10"
		/// @DnDArgument : "y" "obj_player1.y-20"
		x = obj_player1.x+10;
		y = obj_player1.y-20;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3AB42D74
		/// @DnDParent : 0D0E6C4C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_baby_c"
		/// @DnDSaveInfo : "spriteind" "f5d0f173-6f95-472d-bc4a-d0ba2b45b600"
		sprite_index = spr_baby_c;
		image_index += 0;
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