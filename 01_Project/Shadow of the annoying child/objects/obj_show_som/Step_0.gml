/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16BC2216
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "120"
if(distance_to_object(obj_player1) < 120)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 09D41E6A
	/// @DnDParent : 16BC2216
	/// @DnDArgument : "code" "depth = -2200"
	depth = -2200

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0DBA57D5
	/// @DnDParent : 16BC2216
	/// @DnDArgument : "colour" "$FF02FFF2"
	image_blend = $FF02FFF2 & $ffffff;
	image_alpha = ($FF02FFF2 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5DA5A2A9
	/// @DnDParent : 16BC2216
	/// @DnDArgument : "obj" "obj_shiny"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "70eb2941-6fd6-4804-91c8-931d5b81714f"
	var l5DA5A2A9_0 = false;
	l5DA5A2A9_0 = instance_exists(obj_shiny);
	if(!l5DA5A2A9_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 37866581
		/// @DnDParent : 5DA5A2A9
		/// @DnDArgument : "xpos" "instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).x"
		/// @DnDArgument : "ypos" "instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).y"
		/// @DnDArgument : "objectid" "obj_shiny"
		/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
		instance_create_layer(instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).x, instance_nearest(obj_player1.x,obj_player1.y,obj_bridge).y, "Instances", obj_shiny);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 518AB73B
	/// @DnDParent : 16BC2216
	/// @DnDArgument : "alpha" "0.15"
	image_alpha = 0.15;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 39812F0F
	/// @DnDParent : 16BC2216
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 526CFF56
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 62549DAF
	/// @DnDParent : 526CFF56
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 326C29DC
	/// @DnDParent : 526CFF56
	/// @DnDArgument : "code" "depth = -0"
	depth = -0

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 72C68FE8
	/// @DnDParent : 526CFF56
	/// @DnDArgument : "alpha" "0"
	image_alpha = 0;
}