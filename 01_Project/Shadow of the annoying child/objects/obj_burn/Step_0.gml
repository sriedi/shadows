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