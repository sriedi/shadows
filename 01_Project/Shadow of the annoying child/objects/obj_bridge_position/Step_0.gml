/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77455CD9
/// @DnDArgument : "code" "/// bruecke bauen$(13_10)$(13_10)$(13_10)bridge = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge)$(13_10)$(13_10)bx = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).x$(13_10)by= instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).y$(13_10)$(13_10)bp = obj_bridge_position$(13_10)$(13_10)if distance_to_object(obj_bridge) <= 30$(13_10){ $(13_10)	$(13_10)	if keyboard_check_released(vk_alt)$(13_10){ $(13_10)	$(13_10)	$(13_10)	bridge.x = obj_bridge_position.x$(13_10)	bridge.y = obj_bridge_position.y$(13_10)$(13_10)}$(13_10)}"
/// bruecke bauen


bridge = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge)

bx = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).x
by= instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).y

bp = obj_bridge_position

if distance_to_object(obj_bridge) <= 30
{ 
	
	if keyboard_check_released(vk_alt)
{ 
	
	
	bridge.x = obj_bridge_position.x
	bridge.y = obj_bridge_position.y

}
}