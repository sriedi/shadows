/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5638C6C0
/// @DnDArgument : "code" "//Sprite$(13_10)$(13_10)if (direction  > 315 ||  (direction < 45))$(13_10)$(13_10)$(13_10)sprite_index = spr_Enemy_right;$(13_10)	{ $(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_left;$(13_10)	}$(13_10)	}$(13_10)$(13_10)$(13_10)if (direction  >= 45 && (direction < 135))$(13_10)$(13_10){ $(13_10)sprite_index = spr_Enemy_up;$(13_10)$(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_down;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (direction  >= 135 && (direction < 225))$(13_10)$(13_10){ sprite_index = spr_Enemy_left;$(13_10)$(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_right;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (direction  >= 255 && (direction < 315))$(13_10)$(13_10){ $(13_10)$(13_10)sprite_index = spr_Enemy_down;$(13_10)$(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_up;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)//--------------AGRO-----------------------------------------------$(13_10)$(13_10)$(13_10)$(13_10)	if global.enemyagro > 1$(13_10)	{ $(13_10)	enemysdp = enemysdp*global.enemyagro$(13_10)	}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//Sprite

if (direction  > 315 ||  (direction < 45))


sprite_index = spr_Enemy_right;
	{ 
	if enemysdp < 0
	{ 
	sprite_index = spr_Enemy_left;
	}
	}


if (direction  >= 45 && (direction < 135))

{ 
sprite_index = spr_Enemy_up;

	if enemysdp < 0
	{ 
	sprite_index = spr_Enemy_down;
	}


}


if (direction  >= 135 && (direction < 225))

{ sprite_index = spr_Enemy_left;

	if enemysdp < 0
	{ 
	sprite_index = spr_Enemy_right;
	}


}


if (direction  >= 255 && (direction < 315))

{ 

sprite_index = spr_Enemy_down;

	if enemysdp < 0
	{ 
	sprite_index = spr_Enemy_up;
	}


}

//--------------AGRO-----------------------------------------------



	if global.enemyagro > 1
	{ 
	enemysdp = enemysdp*global.enemyagro
	}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F8176FF
/// @DnDArgument : "code" "$(13_10)ep = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy);$(13_10)eb = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy);$(13_10)$(13_10)eby = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).y;$(13_10)ebx = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).x;$(13_10)$(13_10)baby = point_direction(eb.x,eb.y,obj_baby.x,obj_baby.y);$(13_10)player = point_direction(ep.x,ep.y,obj_player1.x,obj_player1.y);$(13_10)$(13_10)$(13_10)if (global.carry = 1)$(13_10){ $(13_10)	  global.Awake = 0;$(13_10)	  speed = 0$(13_10)	  move_towards_point(obj_baby.x,obj_baby.y,0) $(13_10)	}else{$(13_10)	$(13_10)	$(13_10)	move_towards_point(obj_baby.x,obj_baby.y,enemysdp)$(13_10)}$(13_10)if keyboard_check(vk_shift)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10){global.carry = 0}$(13_10) $(13_10)$(13_10) $(13_10)$(13_10) $(13_10) $(13_10) if (meeting >=1)$(13_10)	{ $(13_10)	$(13_10)	$(13_10)if (global.Awake = 1)$(13_10)$(13_10)	{ $(13_10)	$(13_10)	$(13_10)$(13_10)$(13_10)	 $(13_10)	$(13_10)	if (global.fear >= 0)$(13_10)	{ $(13_10)	move_towards_point(obj_baby.x,obj_baby.y,enemysdp) $(13_10)	$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	move_towards_point(obj_baby.x,obj_baby.y,fearspeed)$(13_10)	direction = player;$(13_10)	}$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)direction = player;$(13_10)sprite_index = spr_Enemy_idle;$(13_10)speed = 0;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (distance_to_object(obj_baby) < 10)$(13_10)$(13_10)	{$(13_10)	obj_baby.x = eb.x;$(13_10)	obj_baby.y = eb.y;$(13_10)	speed = -1;$(13_10)	direction = player;$(13_10)$(13_10)$(13_10)}$(13_10)if (distance_to_object(obj_player1) < 100)$(13_10)$(13_10)	{$(13_10)	meeting = 1;$(13_10)	global.Awake = 1;$(13_10)$(13_10)}$(13_10)	$(13_10)$(13_10)if (distance_to_object(obj_player1) > 200)$(13_10)$(13_10)	{$(13_10)	$(13_10)   variable_global_set ("fear", 0)$(13_10)$(13_10)}"

ep = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy);
eb = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy);

eby = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).y;
ebx = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).x;

baby = point_direction(eb.x,eb.y,obj_baby.x,obj_baby.y);
player = point_direction(ep.x,ep.y,obj_player1.x,obj_player1.y);


if (global.carry = 1)
{ 
	  global.Awake = 0;
	  speed = 0
	  move_towards_point(obj_baby.x,obj_baby.y,0) 
	}else{
	
	
	move_towards_point(obj_baby.x,obj_baby.y,enemysdp)
}
if keyboard_check(vk_shift)




{global.carry = 0}
 

 

 
 
 if (meeting >=1)
	{ 
	
	
if (global.Awake = 1)

	{ 
	
	


	 
	
	if (global.fear >= 0)
	{ 
	move_towards_point(obj_baby.x,obj_baby.y,enemysdp) 
	
	}
	else
	{
	move_towards_point(obj_baby.x,obj_baby.y,fearspeed)
	direction = player;
	}
}

}

else
{
direction = player;
sprite_index = spr_Enemy_idle;
speed = 0;

}


if (distance_to_object(obj_baby) < 10)

	{
	obj_baby.x = eb.x;
	obj_baby.y = eb.y;
	speed = -1;
	direction = player;


}
if (distance_to_object(obj_player1) < 100)

	{
	meeting = 1;
	global.Awake = 1;

}
	

if (distance_to_object(obj_player1) > 200)

	{
	
   variable_global_set ("fear", 0)

}