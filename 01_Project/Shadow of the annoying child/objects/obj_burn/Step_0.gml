/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C55B283
/// @DnDArgument : "code" "/// burn$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (distance_to_object(obj_player1)< 30)$(13_10){$(13_10)$(13_10)ranke = instance_nearest(obj_player1.x,obj_player1.y,obj_burn);$(13_10)$(13_10)$(13_10)$(13_10)if (keyboard_check(vk_shift))$(13_10)$(13_10){$(13_10)		$(13_10)image_speed = 360		$(13_10)		$(13_10)		$(13_10)	$(13_10)		fire = instance_nearest(ranke.x,ranke.y,obj_fire);$(13_10)		$(13_10)		$(13_10)		if (!instance_exists(obj_fire))$(13_10)		{$(13_10)		variable_global_set ("isburning", -1);$(13_10)		variable_global_set ("enemyagro", global.enemyagro +0.5);$(13_10)		instance_create_depth(ranke.x,ranke.y+32,-1,obj_fire);$(13_10)		$(13_10)		}$(13_10)$(13_10)}$(13_10)}$(13_10)$(13_10)if (global.isburning <0 )$(13_10)$(13_10){$(13_10)	$(13_10)			variable_global_set ("Burningtime",global.Burningtime -1);$(13_10)			$(13_10)}$(13_10)$(13_10)			$(13_10)			if (global.Burningtime <0 )$(13_10)$(13_10)			{$(13_10)			variable_global_set ("Burningtime", 200);$(13_10)			variable_global_set ("isburning", 1);$(13_10)			instance_destroy (ranke);$(13_10)			instance_destroy (obj_fire);$(13_10) 			image_speed = 30$(13_10)			}"
/// burn





if (distance_to_object(obj_player1)< 30)
{

ranke = instance_nearest(obj_player1.x,obj_player1.y,obj_burn);



if (keyboard_check(vk_shift))

{
		
image_speed = 360		
		
		
	
		fire = instance_nearest(ranke.x,ranke.y,obj_fire);
		
		
		if (!instance_exists(obj_fire))
		{
		variable_global_set ("isburning", -1);
		variable_global_set ("enemyagro", global.enemyagro +0.5);
		instance_create_depth(ranke.x,ranke.y+32,-1,obj_fire);
		
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
			instance_destroy (ranke);
			instance_destroy (obj_fire);
 			image_speed = 30
			}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BADEA64
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_player1) <= 20)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 11731235
	/// @DnDParent : 1BADEA64
	var l11731235_0;
	l11731235_0 = keyboard_check(vk_space);
	if (l11731235_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31564E01
		/// @DnDParent : 11731235
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.carry"
		global.carry = 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4B872D53
		/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
		/// @DnDParent : 11731235
		with(obj_button) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1C151235
	/// @DnDParent : 1BADEA64
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 2203B3A2
		/// @DnDParent : 1C151235
		/// @DnDArgument : "obj" "obj_button"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
		var l2203B3A2_0 = false;
		l2203B3A2_0 = instance_exists(obj_button);
		if(!l2203B3A2_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 41A2AD98
			/// @DnDParent : 2203B3A2
			/// @DnDArgument : "xpos" "obj_player1.x-32"
			/// @DnDArgument : "ypos" "obj_player1.y-128"
			/// @DnDArgument : "objectid" "obj_button"
			/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E89A54B
		/// @DnDParent : 1C151235
		/// @DnDArgument : "var" "global.carry"
		global.carry = 0;
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 649BF59D
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 1BADEA64
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
}