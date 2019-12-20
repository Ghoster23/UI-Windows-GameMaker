///@argument object_index
///@argument style_opt
///@argument x_opt
///@argument y_opt
{
var obji = argument[0];

if(not instance_exists(obj_uiW_controller)) {
	show_debug_message("Failed to create a window due to missing controller.");
	return noone;
}

if(not is_descended(obji, obj_uiW_window_parent)) {
	show_debug_message("Failed to create a window due to invalid object id.");
	return noone;
}

var style = -1;

var xx = x + 64;
var yy = y + 64;

switch argument_count {
	default:
		show_debug_message("Failed to create a window due to invalid number of arguments.");
		return noone;
	break;
	
	case 1:
	break;
	
	case 2:
		style = argument[1];
	break;
	
	case 3:
		xx = argument[1];
		yy = argument[2];
	break;
	
	case 4:
		style = argument[1];
		
		xx = argument[2];
		yy = argument[3];
	break;
}

var wnd  = instance_create_layer( xx, yy, "Windows", obji);

with wnd {
	uiW_register_window();
		
	if(style != -1) {
		style_init = style;
		script_execute(style);
	}
}

return wnd;
}