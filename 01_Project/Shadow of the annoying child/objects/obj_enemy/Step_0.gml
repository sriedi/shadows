/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 13B1389F
path_start(noone, 1, path_action_stop, false);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D251F5A
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "var" "fear_blead"
fear_blead = -1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 16757E5D
/// @DnDArgument : "speed" "enemysdp"
speed = enemysdp;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0A565C7E
/// @DnDArgument : "x" "obj_baby.x"
/// @DnDArgument : "y" "obj_baby.y"
direction = point_direction(x, y, obj_baby.x, obj_baby.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FDEDC56
/// @DnDArgument : "var" "fear"
if(fear == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BC8712F
	/// @DnDParent : 1FDEDC56
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "enemysdp"
	enemysdp = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7D1930F4
	/// @DnDParent : 1FDEDC56
	/// @DnDArgument : "x" "obj_baby.x"
	/// @DnDArgument : "y" "obj_baby.y"
	direction = point_direction(x, y, obj_baby.x, obj_baby.y);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 112A2F79
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46EB4EC3
	/// @DnDInput : 2
	/// @DnDParent : 112A2F79
	/// @DnDArgument : "expr" "-5"
	/// @DnDArgument : "expr_1" "fear_blead"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "enemysdp"
	/// @DnDArgument : "var_1" "fear"
	enemysdp = -5;
	fear += fear_blead;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 38EDB14F
	/// @DnDParent : 112A2F79
	/// @DnDArgument : "x" "obj_player1.x"
	/// @DnDArgument : "y" "obj_player1.y"
	direction = point_direction(x, y, obj_player1.x, obj_player1.y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F90EED9
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "10"
if(distance_to_object(obj_baby) < 10)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0F7DF40F
	/// @DnDApplyTo : 3bf7bbf1-bee5-4c49-8106-bc34b1d9cf07
	/// @DnDParent : 2F90EED9
	/// @DnDArgument : "x" "obj_enemy.x"
	/// @DnDArgument : "y" "obj_enemy.y"
	with(obj_baby) {
	x = obj_enemy.x;
	y = obj_enemy.y;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5FAAA694
	/// @DnDParent : 2F90EED9
	/// @DnDArgument : "x" "obj_player1.x"
	/// @DnDArgument : "y" "obj_player1.y"
	direction = point_direction(x, y, obj_player1.x, obj_player1.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F1C3D8C
	/// @DnDParent : 2F90EED9
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "var" "enemysdp"
	enemysdp = -2;
}