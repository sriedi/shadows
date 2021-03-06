/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2F664F11
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 293ABA08
/// @DnDArgument : "obj" "obj_Tourch"
/// @DnDSaveInfo : "obj" "c89653b0-ed76-493e-8111-81ee836c6185"
var l293ABA08_0 = false;
l293ABA08_0 = instance_exists(obj_Tourch);
if(l293ABA08_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 799BE339
	/// @DnDParent : 293ABA08
	/// @DnDArgument : "var" "global.fuel"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "global.maxfuel"
	if(global.fuel > global.maxfuel)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D25E019
		/// @DnDParent : 799BE339
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "global.fuel"
		global.fuel = 10;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F3ED36D
	/// @DnDParent : 293ABA08
	/// @DnDArgument : "var" "global.fuel"
	/// @DnDArgument : "op" "4"
	if(global.fuel >= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59589AE5
		/// @DnDParent : 7F3ED36D
		/// @DnDArgument : "var" "global.brightness_mod"
		/// @DnDArgument : "op" "2"
		if(global.brightness_mod > 0)
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 0E8D646F
			/// @DnDInput : 2
			/// @DnDParent : 59589AE5
			/// @DnDArgument : "value" "-0.003"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "value_1" "(global.fuel/10)*global.brightness_mod"
			/// @DnDArgument : "var" "fuel"
			/// @DnDArgument : "var_1" "brightness"
			global.fuel += -0.003;
			global.brightness = (global.fuel/10)*global.brightness_mod;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 3D291F75
			/// @DnDParent : 59589AE5
			/// @DnDArgument : "xscale" "global.brightness"
			/// @DnDArgument : "yscale" "global.brightness"
			image_xscale = global.brightness;
			image_yscale = global.brightness;
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 58C7A063
		/// @DnDParent : 7F3ED36D
		/// @DnDArgument : "value" "-0.001"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "fuel"
		global.fuel += -0.001;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 179F735F
		/// @DnDParent : 7F3ED36D
		/// @DnDArgument : "value" "(global.fuel/10)*global.brightness_mod"
		/// @DnDArgument : "var" "brightness"
		global.brightness = (global.fuel/10)*global.brightness_mod;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 0969D33A
		/// @DnDParent : 7F3ED36D
		/// @DnDArgument : "xscale" "global.brightness"
		/// @DnDArgument : "yscale" "global.brightness"
		image_xscale = global.brightness;
		image_yscale = global.brightness;
	}
}