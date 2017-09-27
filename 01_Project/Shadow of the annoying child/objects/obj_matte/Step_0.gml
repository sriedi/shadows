/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 34DB067E
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06040BAD
/// @DnDArgument : "var" "global.brightness"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "0.33"
if(!(global.brightness <= 0.33))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 7DC00290
	/// @DnDParent : 06040BAD
	/// @DnDArgument : "xscale" "global.brightness"
	/// @DnDArgument : "yscale" "global.brightness"
	image_xscale = global.brightness;
	image_yscale = global.brightness;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1654C9D9
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 07BDE694
	/// @DnDParent : 1654C9D9
	/// @DnDArgument : "xscale" "0.33"
	/// @DnDArgument : "yscale" "0.33"
	image_xscale = 0.33;
	image_yscale = 0.33;
}