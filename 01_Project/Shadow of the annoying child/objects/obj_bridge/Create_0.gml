/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0171F66B
/// @DnDInput : 4
/// @DnDArgument : "expr" " instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).x"
/// @DnDArgument : "expr_1" "instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).y"
/// @DnDArgument : "expr_2" "instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge)"
/// @DnDArgument : "var" "bx"
/// @DnDArgument : "var_1" "by"
/// @DnDArgument : "var_2" "bridge"
/// @DnDArgument : "var_3" "inposition"
bx =  instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).x;
by = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge).y;
bridge = instance_nearest(obj_bridge_position.x,obj_bridge_position.y,obj_bridge);
inposition = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3C896D2E
/// @DnDArgument : "var" "saveposition"
global.saveposition = 0;