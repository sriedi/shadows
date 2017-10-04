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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E9E0527
/// @DnDArgument : "var" "global.Awake"
/// @DnDArgument : "value" "1"
if(global.Awake == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FDEDC56
	/// @DnDParent : 1E9E0527
	/// @DnDArgument : "var" "global.fear"
	/// @DnDArgument : "op" "3"
	if(global.fear <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7D1930F4
		/// @DnDParent : 1FDEDC56
		/// @DnDArgument : "x" "obj_baby.x"
		/// @DnDArgument : "y" "obj_baby.y"
		direction = point_direction(x, y, obj_baby.x, obj_baby.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 665491E5
		/// @DnDParent : 1FDEDC56
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "enemysdp"
		enemysdp = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 112A2F79
	/// @DnDParent : 1E9E0527
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46EB4EC3
		/// @DnDInput : 2
		/// @DnDParent : 112A2F79
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_1" "fear_blead"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "enemysdp"
		/// @DnDArgument : "var_1" "global.fear"
		enemysdp = -1;
		global.fear += fear_blead;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 38EDB14F
		/// @DnDParent : 112A2F79
		/// @DnDArgument : "x" "obj_player1.x"
		/// @DnDArgument : "y" "obj_player1.y"
		direction = point_direction(x, y, obj_player1.x, obj_player1.y);
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5D4E9E5E
	/// @DnDParent : 1E9E0527
	/// @DnDArgument : "speed" "enemysdp"
	speed = enemysdp;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 11E65169
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 233029C5
	/// @DnDParent : 11E65169
	/// @DnDArgument : "x" "obj_baby.x"
	/// @DnDArgument : "y" "obj_baby.y"
	direction = point_direction(x, y, obj_baby.x, obj_baby.y);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 39F82EA9
	/// @DnDParent : 11E65169
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_Enemy_idle"
	/// @DnDSaveInfo : "spriteind" "5e87c38e-675f-4b22-8cd7-3e92d919a04e"
	sprite_index = spr_Enemy_idle;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F90EED9
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "10"
if(distance_to_object(obj_baby) < 10)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B01E6C2
	/// @DnDParent : 2F90EED9
	/// @DnDArgument : "var" "global.carrycooldown"
	if(global.carrycooldown == 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0F7DF40F
		/// @DnDApplyTo : 3bf7bbf1-bee5-4c49-8106-bc34b1d9cf07
		/// @DnDParent : 7B01E6C2
		/// @DnDArgument : "x" "obj_enemy.x"
		/// @DnDArgument : "y" "obj_enemy.y"
		with(obj_baby) {
		x = obj_enemy.x;
		y = obj_enemy.y;
		}
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5FAAA694
		/// @DnDParent : 7B01E6C2
		/// @DnDArgument : "x" "3000"
		/// @DnDArgument : "y" "3000"
		direction = point_direction(x, y, 3000, 3000);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06B97BBF
	/// @DnDParent : 2F90EED9
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37B26EDB
		/// @DnDInput : 2
		/// @DnDParent : 06B97BBF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "enemysdp"
		/// @DnDArgument : "var_1" "global.carrycooldown"
		enemysdp = 1;
		global.carrycooldown = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B0DEFFE
/// @DnDArgument : "var" "distance_to_object(obj_player1)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "100"
if(distance_to_object(obj_player1) <= 100)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6739D797
	/// @DnDParent : 7B0DEFFE
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.Awake"
	global.Awake = 1;
}