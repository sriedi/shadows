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
/// @DnDHash : 01308310
/// @DnDArgument : "code" "epy = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy).y;$(13_10)epx = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy).x;$(13_10)$(13_10)eby = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).y;$(13_10)ebx = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).x;$(13_10)$(13_10)baby = point_direction(obj_enemy.x,obj_enemy.y,obj_baby.x,obj_baby.y);$(13_10)$(13_10)player = point_direction(obj_enemy.x,obj_enemy.y,obj_player1.x,obj_player1.y);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (global.Awake = 1)$(13_10)$(13_10)	{ $(13_10)	direction =baby;$(13_10)	speed = enemysdp;$(13_10)$(13_10)	if (global.fear >= 0)$(13_10)	{ $(13_10)	direction =baby;$(13_10)	speed = enemysdp;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	speed = fearspeed;$(13_10)	direction = player;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)point_direction(obj_baby.x,obj_baby.y,obj_enemy.x,obj_enemy.y);$(13_10)sprite_index = spr_Enemy_idle;$(13_10)speed = 0;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (point_distance(ebx,eby,obj_baby.x,obj_baby.y) < 10)$(13_10)$(13_10)	{$(13_10)	speed = fearspeed;$(13_10)	direction = player;$(13_10)$(13_10)$(13_10)}$(13_10)if (distance_to_object(obj_player1) < 100)$(13_10)$(13_10)	{$(13_10)	$(13_10)	variable_global_set ("Awake", 1);$(13_10)$(13_10)}$(13_10)$(13_10)if (distance_to_object(obj_player1) > 200)$(13_10)$(13_10)	{$(13_10)	$(13_10)   variable_global_set ("global.fear", 0)$(13_10)$(13_10)}"
epy = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy).y;
epx = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy).x;

eby = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).y;
ebx = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).x;

baby = point_direction(obj_enemy.x,obj_enemy.y,obj_baby.x,obj_baby.y);

player = point_direction(obj_enemy.x,obj_enemy.y,obj_player1.x,obj_player1.y);





if (global.Awake = 1)

	{ 
	direction =baby;
	speed = enemysdp;

	if (global.fear >= 0)
	{ 
	direction =baby;
	speed = enemysdp;
	}
	else
	{
	speed = fearspeed;
	direction = player;
	}


}

else
{
point_direction(obj_baby.x,obj_baby.y,obj_enemy.x,obj_enemy.y);
sprite_index = spr_Enemy_idle;
speed = 0;

}


if (point_distance(ebx,eby,obj_baby.x,obj_baby.y) < 10)

	{
	speed = fearspeed;
	direction = player;


}
if (distance_to_object(obj_player1) < 100)

	{
	
	variable_global_set ("Awake", 1);

}

if (distance_to_object(obj_player1) > 200)

	{
	
   variable_global_set ("global.fear", 0)

}