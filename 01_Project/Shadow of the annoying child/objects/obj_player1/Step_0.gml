/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46149BFB
/// @DnDArgument : "code" "/// Movement$(13_10)$(13_10)Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)<0);$(13_10)Key_left =  - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)> 0);$(13_10)Key_up  = - keyboard_check(vk_up)|| (gamepad_axis_value(0,gp_axislv)> 0);$(13_10)Key_down = keyboard_check(vk_down)|| (gamepad_axis_value(0,gp_axislv)< 0);$(13_10)$(13_10)$(13_10)wall = obj_wall;$(13_10)$(13_10)movewall = obj_movebleobj_ver;$(13_10)movewallh = obj_movebleobj_hor;$(13_10)burnobj = obj_burn;$(13_10)$(13_10)depth = -10;$(13_10)$(13_10)$(13_10)//-----------------------------------------------------------------------------------------------------------------------------------$(13_10)$(13_10)if (keyboard_check(vk_shift))$(13_10){$(13_10)$(13_10)if instance_exists(obj_Tourch)$(13_10)$(13_10){$(13_10)instance_create_depth(obj_player1.x-40,obj_player1.y-80,-40,obj_Tourch);$(13_10)}$(13_10)}else$(13_10)$(13_10)$(13_10){$(13_10)$(13_10)instance_destroy (obj_Tourch);$(13_10)}$(13_10)//-----------------------------------------------------------------------------------------------------------------------------------$(13_10)if (keyboard_check(vk_left))$(13_10){$(13_10)	if  (!place_meeting(x - collisionspd,y,wall)&&!place_meeting(x - collisionspd,y, movewall)&&!place_meeting(x - collisionspd,y, movewallh)&&!place_meeting(x - collisionspd,y, burnobj))$(13_10)	$(13_10)	{$(13_10)	direction = 180; $(13_10)	image_speed = imagesdp;$(13_10)	speed  = Player_speed;$(13_10)	sprite_index = spr_Player_left;$(13_10)$(13_10)	$(13_10)		if  keyboard_check(vk_shift)$(13_10)		{$(13_10)		direction = 180; $(13_10)		speed = Player_speed;$(13_10)		image_speed = imagesdp;$(13_10)		sprite_index = spr_Player_left_t;$(13_10)		}$(13_10)$(13_10)	$(13_10)	}$(13_10)	else$(13_10)	$(13_10)	{ $(13_10)	hspeed = 0;$(13_10)	}$(13_10)} $(13_10)$(13_10)$(13_10)if    (keyboard_check(vk_right))$(13_10){$(13_10)	if(!place_meeting(x + collisionspd,y, wall)&&!place_meeting(x + collisionspd,y, movewall)&&!place_meeting(x + collisionspd,y, movewallh)&&!place_meeting(x + collisionspd,y, burnobj))$(13_10)	$(13_10)	{$(13_10)	direction = 0; $(13_10)	hspeed = 5;$(13_10)	speed = Player_speed;$(13_10)	image_speed = imagesdp;$(13_10)	sprite_index = spr_Player_Right;$(13_10)$(13_10)$(13_10)		if  keyboard_check(vk_shift)$(13_10)		{$(13_10)		direction = 0; $(13_10)		speed = Player_speed;$(13_10)		image_speed = imagesdp;$(13_10)		sprite_index = spr_Player_right_t;$(13_10)		}$(13_10)$(13_10)	}$(13_10)	else$(13_10)	{ hspeed = 0;$(13_10)	$(13_10)	$(13_10)	}$(13_10)} $(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if  (keyboard_check(vk_up)) $(13_10){$(13_10)	if (!place_meeting(x,y - collisionspd,wall) &&!place_meeting(x,y- collisionspd, movewall) &&!place_meeting(x,y- collisionspd, movewallh) &&!place_meeting(x,y- collisionspd, burnobj))$(13_10)	$(13_10)	{$(13_10)	direction = 90; $(13_10)	speed = Player_speed;$(13_10)	image_speed = imagesdp;$(13_10)	sprite_index = spr_Player_up;$(13_10)$(13_10)	$(13_10)		if  keyboard_check(vk_shift)$(13_10)		{$(13_10)		direction = 90; $(13_10)		speed = Player_speed;$(13_10)		image_speed = imagesdp;$(13_10)		sprite_index = spr_Player_up_t;$(13_10)		}$(13_10)$(13_10)}$(13_10) else$(13_10){ $(13_10) vspeed = 0;$(13_10)}$(13_10)}$(13_10)$(13_10)if  (keyboard_check(vk_down)) $(13_10){$(13_10)	if (!place_meeting(x,y + collisionspd,wall) &&!place_meeting(x,y+ collisionspd, movewall) &&!place_meeting(x,y+ collisionspd, movewallh) &&!place_meeting(x,y+ collisionspd, burnobj))$(13_10)	$(13_10)	{$(13_10)	direction = 270; $(13_10)	speed = Player_speed;$(13_10)	image_speed = imagesdp;$(13_10)	sprite_index = spr_Player_Down;$(13_10)	$(13_10)	$(13_10)		if  keyboard_check(vk_shift)$(13_10)		{$(13_10)		direction = 270; $(13_10)		speed = Player_speed;$(13_10)		image_speed = imagesdp;$(13_10)		sprite_index = spr_Player_down_t;$(13_10)		}$(13_10)$(13_10)}$(13_10)else$(13_10){$(13_10)vspeed = 0;$(13_10)}$(13_10)}$(13_10)//-----------------------------------------------------------------------------------------------------------------------------------$(13_10)$(13_10)$(13_10)if (!place_meeting(x + collisionspd,y - collisionspd,wall)&&!place_meeting(x + collisionspd,y- collisionspd, movewall)&&!place_meeting(x + collisionspd,y- collisionspd, movewallh)&&!place_meeting(x + collisionspd,y- collisionspd, burnobj)) $(13_10)$(13_10)$(13_10){ if (keyboard_check(vk_right)&& keyboard_check(vk_up))$(13_10)$(13_10){$(13_10) direction = 45; $(13_10) speed = Player_speed;$(13_10) image_speed = imagesdp;$(13_10) sprite_index = spr_Player_Right;$(13_10)$(13_10)	if  keyboard_check(vk_shift)$(13_10)	{$(13_10)	direction = 45; $(13_10)	speed = Player_speed;$(13_10)	image_speed = imagesdp;$(13_10)	sprite_index = spr_Player_right_t;$(13_10)	}$(13_10)$(13_10)	}$(13_10)} $(13_10)$(13_10)if (!place_meeting(x - collisionspd,y - collisionspd,wall)&&!place_meeting(x - collisionspd,y- collisionspd, movewall)&&!place_meeting(x - collisionspd,y- collisionspd, movewallh)&&!place_meeting(x - collisionspd,y- collisionspd,burnobj)) $(13_10)$(13_10)$(13_10){ $(13_10)$(13_10)if (keyboard_check(vk_left)&& keyboard_check(vk_up))$(13_10)$(13_10){$(13_10) direction = 135; $(13_10) image_speed = imagesdp;$(13_10) speed  = Player_speed;$(13_10) sprite_index = spr_Player_left;$(13_10)$(13_10)	if  keyboard_check(vk_shift)$(13_10)	{$(13_10)	direction = 135; $(13_10)	image_speed = imagesdp;$(13_10)	speed  = Player_speed;$(13_10)	sprite_index = spr_Player_left_t;$(13_10)	$(13_10)	}$(13_10)}$(13_10)}$(13_10)$(13_10)if (!place_meeting(x - collisionspd,y + collisionspd,wall)&&!place_meeting(x - collisionspd,y+ collisionspd, movewall)&&!place_meeting(x - collisionspd,y+ collisionspd, movewallh)&&!place_meeting(x - collisionspd,y+ collisionspd, burnobj)) $(13_10)$(13_10)$(13_10){ if (keyboard_check(vk_left)&& keyboard_check(vk_down))$(13_10)$(13_10){$(13_10) direction = 225; $(13_10) speed  = Player_speed;$(13_10) image_speed = imagesdp;$(13_10) sprite_index = spr_Player_left;$(13_10)$(13_10)	if  keyboard_check(vk_shift)$(13_10)	{$(13_10)	direction = 225; $(13_10)	speed  = Player_speed;$(13_10)	image_speed = imagesdp;$(13_10)	sprite_index = spr_Player_left_t;$(13_10)	}$(13_10)}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if (!place_meeting(x + collisionspd,y + collisionspd,wall)&&!place_meeting(x + collisionspd,y+ collisionspd, movewall)&&!place_meeting(x + collisionspd,y+ collisionspd, movewallh)&&!place_meeting(x + collisionspd,y+ collisionspd,  burnobj))$(13_10)$(13_10)$(13_10){ $(13_10)if (keyboard_check(vk_right)&& keyboard_check(vk_down))$(13_10)$(13_10){$(13_10) direction = 315; $(13_10) speed  = Player_speed;$(13_10) image_speed = imagesdp;$(13_10) sprite_index = spr_Player_Right;$(13_10)$(13_10)	if  keyboard_check(vk_shift)$(13_10)	{$(13_10) direction = 315;$(13_10) speed  = Player_speed; $(13_10) image_speed = imagesdp;$(13_10) $(13_10) sprite_index = spr_Player_right_t;$(13_10)	}$(13_10)}$(13_10)	$(13_10)}$(13_10)$(13_10)if (keyboard_check_released(vk_up && vk_down && vk_right && vk_left))$(13_10) {$(13_10) speed =0;$(13_10) sprite_index = spr_Player_Idle;$(13_10) image_speed = imagesdp;$(13_10)$(13_10)	if(keyboard_check(vk_space))			$(13_10)	{$(13_10)	speed =0;$(13_10)	sprite_index = spr_Player_Idle;$(13_10)	image_speed = imagesdp;$(13_10)	$(13_10)		$(13_10)	$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)///----------------------------------------------------------------------------------------------------$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (keyboard_check(vk_shift) && speed =0) //!keyboard_check(vk_down && vk_left && vk_right && vk_up))$(13_10){$(13_10) speed =0;$(13_10) sprite_index = spr_Player_Idle_t;$(13_10) image_speed = imagesdp;$(13_10)}$(13_10)$(13_10)"
/// Movement

Key_right = keyboard_check(vk_right)|| (gamepad_axis_value(0,gp_axislh)<0);
Key_left =  - keyboard_check(vk_left)|| (gamepad_axis_value(0,gp_axislh)> 0);
Key_up  = - keyboard_check(vk_up)|| (gamepad_axis_value(0,gp_axislv)> 0);
Key_down = keyboard_check(vk_down)|| (gamepad_axis_value(0,gp_axislv)< 0);


wall = obj_wall;

movewall = obj_movebleobj_ver;
movewallh = obj_movebleobj_hor;
burnobj = obj_burn;

depth = -10;


//-----------------------------------------------------------------------------------------------------------------------------------

if (keyboard_check(vk_shift))
{

if instance_exists(obj_Tourch)

{
instance_create_depth(obj_player1.x-40,obj_player1.y-80,-40,obj_Tourch);
}
}else


{

instance_destroy (obj_Tourch);
}
//-----------------------------------------------------------------------------------------------------------------------------------
if (keyboard_check(vk_left))
{
	if  (!place_meeting(x - collisionspd,y,wall)&&!place_meeting(x - collisionspd,y, movewall)&&!place_meeting(x - collisionspd,y, movewallh)&&!place_meeting(x - collisionspd,y, burnobj))
	
	{
	direction = 180; 
	image_speed = imagesdp;
	speed  = Player_speed;
	sprite_index = spr_Player_left;

	
		if  keyboard_check(vk_shift)
		{
		direction = 180; 
		speed = Player_speed;
		image_speed = imagesdp;
		sprite_index = spr_Player_left_t;
		}

	
	}
	else
	
	{ 
	hspeed = 0;
	}
} 


if    (keyboard_check(vk_right))
{
	if(!place_meeting(x + collisionspd,y, wall)&&!place_meeting(x + collisionspd,y, movewall)&&!place_meeting(x + collisionspd,y, movewallh)&&!place_meeting(x + collisionspd,y, burnobj))
	
	{
	direction = 0; 
	hspeed = 5;
	speed = Player_speed;
	image_speed = imagesdp;
	sprite_index = spr_Player_Right;


		if  keyboard_check(vk_shift)
		{
		direction = 0; 
		speed = Player_speed;
		image_speed = imagesdp;
		sprite_index = spr_Player_right_t;
		}

	}
	else
	{ hspeed = 0;
	
	
	}
} 




if  (keyboard_check(vk_up)) 
{
	if (!place_meeting(x,y - collisionspd,wall) &&!place_meeting(x,y- collisionspd, movewall) &&!place_meeting(x,y- collisionspd, movewallh) &&!place_meeting(x,y- collisionspd, burnobj))
	
	{
	direction = 90; 
	speed = Player_speed;
	image_speed = imagesdp;
	sprite_index = spr_Player_up;

	
		if  keyboard_check(vk_shift)
		{
		direction = 90; 
		speed = Player_speed;
		image_speed = imagesdp;
		sprite_index = spr_Player_up_t;
		}

}
 else
{ 
 vspeed = 0;
}
}

if  (keyboard_check(vk_down)) 
{
	if (!place_meeting(x,y + collisionspd,wall) &&!place_meeting(x,y+ collisionspd, movewall) &&!place_meeting(x,y+ collisionspd, movewallh) &&!place_meeting(x,y+ collisionspd, burnobj))
	
	{
	direction = 270; 
	speed = Player_speed;
	image_speed = imagesdp;
	sprite_index = spr_Player_Down;
	
	
		if  keyboard_check(vk_shift)
		{
		direction = 270; 
		speed = Player_speed;
		image_speed = imagesdp;
		sprite_index = spr_Player_down_t;
		}

}
else
{
vspeed = 0;
}
}
//-----------------------------------------------------------------------------------------------------------------------------------


if (!place_meeting(x + collisionspd,y - collisionspd,wall)&&!place_meeting(x + collisionspd,y- collisionspd, movewall)&&!place_meeting(x + collisionspd,y- collisionspd, movewallh)&&!place_meeting(x + collisionspd,y- collisionspd, burnobj)) 


{ if (keyboard_check(vk_right)&& keyboard_check(vk_up))

{
 direction = 45; 
 speed = Player_speed;
 image_speed = imagesdp;
 sprite_index = spr_Player_Right;

	if  keyboard_check(vk_shift)
	{
	direction = 45; 
	speed = Player_speed;
	image_speed = imagesdp;
	sprite_index = spr_Player_right_t;
	}

	}
} 

if (!place_meeting(x - collisionspd,y - collisionspd,wall)&&!place_meeting(x - collisionspd,y- collisionspd, movewall)&&!place_meeting(x - collisionspd,y- collisionspd, movewallh)&&!place_meeting(x - collisionspd,y- collisionspd,burnobj)) 


{ 

if (keyboard_check(vk_left)&& keyboard_check(vk_up))

{
 direction = 135; 
 image_speed = imagesdp;
 speed  = Player_speed;
 sprite_index = spr_Player_left;

	if  keyboard_check(vk_shift)
	{
	direction = 135; 
	image_speed = imagesdp;
	speed  = Player_speed;
	sprite_index = spr_Player_left_t;
	
	}
}
}

if (!place_meeting(x - collisionspd,y + collisionspd,wall)&&!place_meeting(x - collisionspd,y+ collisionspd, movewall)&&!place_meeting(x - collisionspd,y+ collisionspd, movewallh)&&!place_meeting(x - collisionspd,y+ collisionspd, burnobj)) 


{ if (keyboard_check(vk_left)&& keyboard_check(vk_down))

{
 direction = 225; 
 speed  = Player_speed;
 image_speed = imagesdp;
 sprite_index = spr_Player_left;

	if  keyboard_check(vk_shift)
	{
	direction = 225; 
	speed  = Player_speed;
	image_speed = imagesdp;
	sprite_index = spr_Player_left_t;
	}
}
	
}


if (!place_meeting(x + collisionspd,y + collisionspd,wall)&&!place_meeting(x + collisionspd,y+ collisionspd, movewall)&&!place_meeting(x + collisionspd,y+ collisionspd, movewallh)&&!place_meeting(x + collisionspd,y+ collisionspd,  burnobj))


{ 
if (keyboard_check(vk_right)&& keyboard_check(vk_down))

{
 direction = 315; 
 speed  = Player_speed;
 image_speed = imagesdp;
 sprite_index = spr_Player_Right;

	if  keyboard_check(vk_shift)
	{
 direction = 315;
 speed  = Player_speed; 
 image_speed = imagesdp;
 
 sprite_index = spr_Player_right_t;
	}
}
	
}

if (keyboard_check_released(vk_up && vk_down && vk_right && vk_left))
 {
 speed =0;
 sprite_index = spr_Player_Idle;
 image_speed = imagesdp;

	if(keyboard_check(vk_space))			
	{
	speed =0;
	sprite_index = spr_Player_Idle;
	image_speed = imagesdp;
	
		
	
	}

}

///----------------------------------------------------------------------------------------------------




if (keyboard_check(vk_shift) && speed =0) //!keyboard_check(vk_down && vk_left && vk_right && vk_up))
{
 speed =0;
 sprite_index = spr_Player_Idle_t;
 image_speed = imagesdp;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 530B4085
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "500"
if(distance_to_object(obj_baby) > 500)
{

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C4F7147
/// @DnDArgument : "var" "distance_to_object(obj_baby)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(distance_to_object(obj_baby) <= 20)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 06F3FD0B
	/// @DnDParent : 7C4F7147
	/// @DnDArgument : "key" "vk_alt"
	var l06F3FD0B_0;
	l06F3FD0B_0 = keyboard_check(vk_alt);
	if (l06F3FD0B_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 181D3E7B
		/// @DnDInput : 2
		/// @DnDParent : 06F3FD0B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "global.carry"
		/// @DnDArgument : "var_1" "global.carrycooldown"
		global.carry = 1;
		global.carrycooldown = 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 05FF173B
		/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
		/// @DnDParent : 06F3FD0B
		with(obj_button) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79BB57BF
	/// @DnDParent : 7C4F7147
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1991B0B1
		/// @DnDParent : 79BB57BF
		/// @DnDArgument : "obj" "obj_button"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
		var l1991B0B1_0 = false;
		l1991B0B1_0 = instance_exists(obj_button);
		if(!l1991B0B1_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 42BF102B
			/// @DnDParent : 1991B0B1
			/// @DnDArgument : "xpos" "obj_player1.x-32"
			/// @DnDArgument : "ypos" "obj_player1.y-128"
			/// @DnDArgument : "objectid" "obj_button"
			/// @DnDSaveInfo : "objectid" "49f8cef4-297a-4daa-9c5c-179caf8aaf56"
			instance_create_layer(obj_player1.x-32, obj_player1.y-128, "Instances", obj_button);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 552E58BF
			/// @DnDParent : 1991B0B1
			/// @DnDArgument : "var" "global.carry"
			global.carry = 0;
		}
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 58DBCAFF
	/// @DnDApplyTo : 49f8cef4-297a-4daa-9c5c-179caf8aaf56
	/// @DnDParent : 7C4F7147
	/// @DnDArgument : "x" "obj_player1.x-32"
	/// @DnDArgument : "y" "obj_player1.y-128"
	with(obj_button) {
	x = obj_player1.x-32;
	y = obj_player1.y-128;
	}
}