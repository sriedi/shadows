/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77455CD9
/// @DnDArgument : "code" "/// bruecke bauen$(13_10)$(13_10)$(13_10)brigde = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_brigde)$(13_10)$(13_10)bx = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_brigde).x$(13_10)by= instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_brigde).y$(13_10)$(13_10)bp = obj_bridge_position$(13_10)$(13_10)if distance_to_object(obj_brigde) <= 30$(13_10){ $(13_10)	$(13_10)	bp.x=bx.x$(13_10)	bp.y=bx.y$(13_10)$(13_10)}"
/// bruecke bauen


brigde = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_brigde)

bx = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_brigde).x
by= instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_brigde).y

bp = obj_bridge_position

if distance_to_object(obj_brigde) <= 30
{ 
	
	bp.x=bx.x
	bp.y=bx.y

}