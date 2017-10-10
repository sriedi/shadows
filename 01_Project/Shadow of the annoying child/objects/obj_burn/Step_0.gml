/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C55B283
/// @DnDArgument : "code" "/// burn$(13_10)$(13_10)ranke = instance_nearest(obj_player1.x,obj_player1.y,obj_burn);$(13_10)$(13_10)$(13_10)$(13_10)if (distance_to_object(obj_player1)< 30)$(13_10){$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(vk_shift))$(13_10)$(13_10){$(13_10)		$(13_10)image_speed = 360		$(13_10)		$(13_10)		$(13_10)	$(13_10)		fire = instance_nearest(ranke.x,ranke.y,obj_fire);$(13_10)		$(13_10)		$(13_10)		if (!instance_exists(obj_fire))$(13_10)		{$(13_10)		variable_global_set ("isburning", -1);$(13_10)		instance_create_depth(ranke.x,ranke.y+32,-1,obj_fire);$(13_10)		variable_global_set ("fuel", global.fuel-2);$(13_10)		}$(13_10)$(13_10)}$(13_10)}$(13_10)$(13_10)if (global.isburning <0 )$(13_10)$(13_10){$(13_10)	$(13_10)			variable_global_set ("Burningtime",global.Burningtime -1);$(13_10)			$(13_10)			$(13_10)			$(13_10)}$(13_10)$(13_10)			$(13_10)			if (global.Burningtime <0 )$(13_10)$(13_10)			{$(13_10)			variable_global_set ("Burningtime", 200);$(13_10)			variable_global_set ("isburning", 1);$(13_10)			variable_global_set ("enemyagro", global.enemyagro +0.3);$(13_10)			instance_destroy (ranke);$(13_10)			instance_destroy (obj_fire);$(13_10) 			image_speed = 30$(13_10)			}"
/// burn

ranke = instance_nearest(obj_player1.x,obj_player1.y,obj_burn);



if (distance_to_object(obj_player1)< 30)
{





if (keyboard_check_pressed(vk_shift))

{
		
image_speed = 360		
		
		
	
		fire = instance_nearest(ranke.x,ranke.y,obj_fire);
		
		
		if (!instance_exists(obj_fire))
		{
		variable_global_set ("isburning", -1);
		instance_create_depth(ranke.x,ranke.y+32,-1,obj_fire);
		variable_global_set ("fuel", global.fuel-2);
		}

}
}

if (global.isburning <0 )

{
	
			variable_global_set ("Burningtime",global.Burningtime -1);
			
			
			
}

			
			if (global.Burningtime <0 )

			{
			variable_global_set ("Burningtime", 200);
			variable_global_set ("isburning", 1);
			variable_global_set ("enemyagro", global.enemyagro +0.3);
			instance_destroy (ranke);
			instance_destroy (obj_fire);
 			image_speed = 30
			}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66158E2D
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "30"
if(distance_to_object(obj_player1) <= 30)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 51D1D6C1
	/// @DnDParent : 66158E2D
	/// @DnDArgument : "key" "vk_alt"
	var l51D1D6C1_0;
	l51D1D6C1_0 = keyboard_check(vk_alt);
	if (l51D1D6C1_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 520A346B
		/// @DnDInput : 2
		/// @DnDParent : 51D1D6C1
		/// @DnDArgument : "expr" "+3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "+3"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "global.ak_fuel"
		/// @DnDArgument : "var_1" "global.fuel"
		global.ak_fuel += +3;
		global.fuel += +3;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 64173174
		/// @DnDApplyTo : instance_nearest(obj_player1.x,obj_player1.y,obj_branch)
		/// @DnDParent : 51D1D6C1
		with(instance_nearest(obj_player1.x,obj_player1.y,obj_branch)) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33859FF1
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "30"
if(distance_to_object(obj_player1) < 30)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0ED598A7
	/// @DnDParent : 33859FF1
	/// @DnDArgument : "code" "depth = -2103"
	depth = -2103

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 447574F6
	/// @DnDParent : 33859FF1
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 473315A3
	/// @DnDParent : 33859FF1
	/// @DnDArgument : "obj" "obj_shiny"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "70eb2941-6fd6-4804-91c8-931d5b81714f"
	var l473315A3_0 = false;
	l473315A3_0 = instance_exists(obj_shiny);
	if(!l473315A3_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 76FC7D33
		/// @DnDParent : 473315A3
		/// @DnDArgument : "xpos" "instance_nearest(obj_player1.x,obj_player1.y,obj_burn).x"
		/// @DnDArgument : "ypos" "instance_nearest(obj_player1.x,obj_player1.y,obj_burn).y"
		/// @DnDArgument : "objectid" "obj_shiny"
		/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
		instance_create_layer(instance_nearest(obj_player1.x,obj_player1.y,obj_burn).x, instance_nearest(obj_player1.x,obj_player1.y,obj_burn).y, "Instances", obj_shiny);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 00E28B05
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 78B19A08
	/// @DnDParent : 00E28B05
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3F32B153
	/// @DnDParent : 00E28B05
	/// @DnDArgument : "code" "depth = -0"
	depth = -0
}