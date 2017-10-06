/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5638C6C0
/// @DnDArgument : "code" "//Sprite$(13_10)$(13_10)if (direction  > 315 ||  (direction < 45))$(13_10)$(13_10)$(13_10)sprite_index = spr_Enemy_right;$(13_10)	{ $(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_left;$(13_10)	}$(13_10)	}$(13_10)$(13_10)$(13_10)if (direction  >= 45 && (direction < 135))$(13_10)$(13_10){ $(13_10)sprite_index = spr_Enemy_up;$(13_10)$(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_down;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (direction  >= 135 && (direction < 225))$(13_10)$(13_10){ sprite_index = spr_Enemy_left;$(13_10)$(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_right;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (direction  >= 255 && (direction < 315))$(13_10)$(13_10){ $(13_10)$(13_10)sprite_index = spr_Enemy_down;$(13_10)$(13_10)	if enemysdp < 0$(13_10)	{ $(13_10)	sprite_index = spr_Enemy_up;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)      $(13_10)//--------------AGRO-----------------------------------------------$(13_10)$(13_10)$(13_10)if global.enemyagro > 1$(13_10)	{ $(13_10)	enemysdp = enemysdp*global.enemyagro$(13_10)	}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
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
/// @DnDArgument : "code" "$(13_10)ep = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy);$(13_10)eb = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy);$(13_10)$(13_10)eby = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).y;$(13_10)ebx = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).x;$(13_10)$(13_10)baby = point_direction(eb.x,eb.y,obj_baby.x,obj_baby.y);$(13_10)player = point_direction(ep.x,ep.y,obj_player1.x,obj_player1.y);$(13_10)$(13_10)dis = 160;$(13_10)$(13_10)babydis = 5;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10) $(13_10) $(13_10) if (meeting >=1)$(13_10)	{ $(13_10)	$(13_10)	$(13_10)if (global.Awake = 1)$(13_10)$(13_10)	{ $(13_10)	$(13_10)	$(13_10)	if (global.fear <= 0)$(13_10)	{ $(13_10)	move_towards_point(obj_baby.x,obj_baby.y,enemysdp) $(13_10)	if (distance_to_object(obj_baby) < babydis)$(13_10)$(13_10)	{$(13_10)	obj_baby.x = eb.x;$(13_10)	obj_baby.y = eb.y;$(13_10)	speed = -1;$(13_10)	direction = player;$(13_10)	babydis = 5;$(13_10)$(13_10)}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	move_towards_point(obj_player1.x,obj_player1.y,fearspeed)$(13_10)	obj_baby.x = obj_baby.x$(13_10)	obj_baby.y = obj_baby.y$(13_10)	babydis= 0;$(13_10)	$(13_10)	$(13_10)	}$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)direction = player;$(13_10)sprite_index = spr_Enemy_idle;$(13_10)speed = 0;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (distance_to_object(obj_player1) < dis)$(13_10)$(13_10)	{$(13_10)	meeting = 1;$(13_10)	global.Awake = 1;$(13_10)$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"

ep = instance_nearest(obj_player1.x,obj_player1.y,obj_enemy);
eb = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy);

eby = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).y;
ebx = instance_nearest(obj_baby.x,obj_baby.y,obj_enemy).x;

baby = point_direction(eb.x,eb.y,obj_baby.x,obj_baby.y);
player = point_direction(ep.x,ep.y,obj_player1.x,obj_player1.y);

dis = 160;

babydis = 5;




 
 
 if (meeting >=1)
	{ 
	
	
if (global.Awake = 1)

	{ 
	
	
	if (global.fear <= 0)
	{ 
	move_towards_point(obj_baby.x,obj_baby.y,enemysdp) 
	if (distance_to_object(obj_baby) < babydis)

	{
	obj_baby.x = eb.x;
	obj_baby.y = eb.y;
	speed = -1;
	direction = player;
	babydis = 5;

}
	}
	else
	{
	move_towards_point(obj_player1.x,obj_player1.y,fearspeed)
	obj_baby.x = obj_baby.x
	obj_baby.y = obj_baby.y
	babydis= 0;
	
	
	}
}

}

else
{
direction = player;
sprite_index = spr_Enemy_idle;
speed = 0;

}



if (distance_to_object(obj_player1) < dis)

	{
	meeting = 1;
	global.Awake = 1;

	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 596C49EC
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(distance_to_object(obj_player1) <= 10)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 02772514
	/// @DnDParent : 596C49EC
	/// @DnDArgument : "soundid" "sou_baby_cry"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "0289e313-9ddb-45bb-96e5-d110ce0f2e22"
	var l02772514_0 = sou_baby_cry;
	if (!audio_is_playing(l02772514_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 41E6000A
		/// @DnDParent : 02772514
		/// @DnDArgument : "soundid" "sou_baby_cry"
		/// @DnDSaveInfo : "soundid" "0289e313-9ddb-45bb-96e5-d110ce0f2e22"
		audio_play_sound(sou_baby_cry, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66482CB3
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "100"
if(distance_to_object(obj_player1) <= 100)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 53C05E21
	/// @DnDParent : 66482CB3
	/// @DnDArgument : "soundid" "enemy_awake"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "8758f688-486f-4d6e-a88b-4f1e8caf218c"
	var l53C05E21_0 = enemy_awake;
	if (!audio_is_playing(l53C05E21_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 729352DA
		/// @DnDParent : 53C05E21
		/// @DnDArgument : "soundid" "enemy_awake"
		/// @DnDSaveInfo : "soundid" "8758f688-486f-4d6e-a88b-4f1e8caf218c"
		audio_play_sound(enemy_awake, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 00E44366
/// @DnDArgument : "sound" "enemy_awake"
/// @DnDArgument : "volume" "distance_to_object(obj_player1)/100"
/// @DnDSaveInfo : "sound" "8758f688-486f-4d6e-a88b-4f1e8caf218c"
audio_sound_gain(enemy_awake, distance_to_object(obj_player1)/100, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B52637C
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.fear"
global.fear += -1;