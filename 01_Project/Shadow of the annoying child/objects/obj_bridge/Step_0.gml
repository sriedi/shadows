/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69D88309
/// @DnDArgument : "var" "inposition"
if(inposition == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5223BCF9
	/// @DnDParent : 69D88309
	/// @DnDArgument : "var" "distance_to_object(obj_player1)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "20"
	if(distance_to_object(obj_player1) <= 20)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AFA6E48
		/// @DnDParent : 5223BCF9
		/// @DnDArgument : "var" "global.carry"
		if(global.carry == 0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 4ECD1E76
			/// @DnDParent : 3AFA6E48
			/// @DnDArgument : "key" "vk_alt"
			var l4ECD1E76_0;
			l4ECD1E76_0 = keyboard_check(vk_alt);
			if (l4ECD1E76_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0CE5D5EE
				/// @DnDInput : 2
				/// @DnDParent : 4ECD1E76
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "var" "global.carry"
				/// @DnDArgument : "var_1" "global.carrycooldown"
				global.carry = 1;
				global.carrycooldown = 1;
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7F5C54DC
				/// @DnDApplyTo : 70eb2941-6fd6-4804-91c8-931d5b81714f
				/// @DnDParent : 4ECD1E76
				with(obj_shiny) instance_destroy();
			
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 167E3074
				/// @DnDApplyTo : instance_nearest(obj_player1.x,obj_player1.y,obj_bridge)
				/// @DnDParent : 4ECD1E76
				/// @DnDArgument : "x" "obj_player1.x"
				/// @DnDArgument : "y" "obj_player1.y"
				with(instance_nearest(obj_player1.x,obj_player1.y,obj_bridge)) {
				x = obj_player1.x;
				y = obj_player1.y;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 70AF5491
			/// @DnDParent : 3AFA6E48
			else
			{
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 715A48D1
				/// @DnDParent : 70AF5491
				/// @DnDArgument : "obj" "obj_shiny"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "70eb2941-6fd6-4804-91c8-931d5b81714f"
				var l715A48D1_0 = false;
				l715A48D1_0 = instance_exists(obj_shiny);
				if(!l715A48D1_0)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 41B3FA4A
					/// @DnDParent : 715A48D1
					/// @DnDArgument : "xpos" "obj_bridge.x"
					/// @DnDArgument : "ypos" "obj_bridge.y"
					/// @DnDArgument : "objectid" "obj_shiny"
					/// @DnDSaveInfo : "objectid" "70eb2941-6fd6-4804-91c8-931d5b81714f"
					instance_create_layer(obj_bridge.x, obj_bridge.y, "Instances", obj_shiny);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 147B4BD6
					/// @DnDParent : 715A48D1
					/// @DnDArgument : "var" "global.carry"
					global.carry = 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6D815DC4
		/// @DnDApplyTo : 70eb2941-6fd6-4804-91c8-931d5b81714f
		/// @DnDParent : 5223BCF9
		/// @DnDArgument : "x" "obj_bridge.x"
		/// @DnDArgument : "y" "obj_bridge.y"
		with(obj_shiny) {
		x = obj_bridge.x;
		y = obj_bridge.y;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E3C4FE
/// @DnDArgument : "code" "/// bruecke bauen$(13_10)bpn =     instance_nearest(obj_player1.x,obj_player1.y,obj_bridge_position)$(13_10)bpnv =     instance_nearest(obj_player1.x,obj_player1.y,obj_bridge_positionv)$(13_10)$(13_10)bridge = instance_nearest(obj_player1.x,obj_player1.y,obj_bridge)$(13_10)$(13_10)bx = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).x$(13_10)by= instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).y$(13_10)$(13_10)bp = obj_bridge_position$(13_10)$(13_10)player = obj_player1$(13_10)$(13_10)collision = 10$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if distance_to_object(bpnv) <= 30$(13_10){ $(13_10)	$(13_10)	if keyboard_check_released(vk_alt)$(13_10){ $(13_10)	$(13_10)if 	 (instance_exists(obj_bridge_position))$(13_10)	 {$(13_10)	image_angle = 270$(13_10)	inposition = 1$(13_10)	bridge.x = bpnv.x$(13_10)	bridge.y = bpnv.y$(13_10)	}$(13_10)$(13_10)if  	(bridge.x = bpnv.x && bridge.y = bpnv.y)$(13_10)$(13_10){ if  (instance_exists(bpnv && bp))$(13_10)$(13_10){$(13_10)$(13_10)instance_destroy(bpnv)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)}	$(13_10)}$(13_10)}$(13_10)if distance_to_object(bpn) <= 30$(13_10){ $(13_10)	$(13_10)	if keyboard_check_released(vk_alt)$(13_10){ $(13_10)	$(13_10)if 	 (instance_exists(obj_bridge_position))$(13_10)	 {$(13_10)	inposition = 1$(13_10)	bridge.x = bpn.x$(13_10)	bridge.y = bpn.y$(13_10)	}$(13_10)$(13_10)if  	(bridge.x = bpn.x && bridge.y = bpn.y)$(13_10)$(13_10){ if  (instance_exists(bpn && bp))$(13_10)$(13_10){$(13_10)$(13_10)instance_destroy(bpn)$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)}	$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
/// bruecke bauen
bpn =     instance_nearest(obj_player1.x,obj_player1.y,obj_bridge_position)
bpnv =     instance_nearest(obj_player1.x,obj_player1.y,obj_bridge_positionv)

bridge = instance_nearest(obj_player1.x,obj_player1.y,obj_bridge)

bx = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).x
by= instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).y

bp = obj_bridge_position

player = obj_player1

collision = 10




if distance_to_object(bpnv) <= 30
{ 
	
	if keyboard_check_released(vk_alt)
{ 
	
if 	 (instance_exists(obj_bridge_position))
	 {
	image_angle = 270
	inposition = 1
	bridge.x = bpnv.x
	bridge.y = bpnv.y
	}

if  	(bridge.x = bpnv.x && bridge.y = bpnv.y)

{ if  (instance_exists(bpnv && bp))

{

instance_destroy(bpnv)

}





}	
}
}
if distance_to_object(bpn) <= 30
{ 
	
	if keyboard_check_released(vk_alt)
{ 
	
if 	 (instance_exists(obj_bridge_position))
	 {
	inposition = 1
	bridge.x = bpn.x
	bridge.y = bpn.y
	}

if  	(bridge.x = bpn.x && bridge.y = bpn.y)

{ if  (instance_exists(bpn && bp))

{

instance_destroy(bpn)

}





}	
}
}