///@description Creates a window/popup up/down selector
///@param relative_x
///@param relative_y
///@param width
///@param height
///@param label
///@param ticked
///@param min
///@param max
///@param style_opt
{
if(argument_count < 8 or argument_count > 9) {
	show_debug_message("uiW - ERROR - Failed to create an up/down selector - Invalid number of arguments.");
	return -1;
}

var _x   = argument[0];
var _y   = argument[1];
var _w   = argument[2];
var _h   = argument[3];
var _lb  = argument[4];
var _val = argument[5];
var _min = argument[6];
var _max = argument[7];

var _st = -1;
if(argument_count == 9) {
	_st = argument[8];
}

var _elm = uiW_element_create(_x, _y, _w, _h, uiW_element_type.ud_selector);

ds_map_add(_elm, "Label", _lb);
ds_map_add(_elm, "Value", _val);
ds_map_add(_elm,   "Max", _max);
ds_map_add(_elm,   "Min", _min);

if(_w > _h){
	var _side = _w / 3;
	
	ds_map_add(_elm, "DButton", uiW_button_create(_x, _y, _side, _side, "-"));
	
	ds_map_add(_elm, "UButton", uiW_button_create(_x + _w * 2/3, _y, _side, _side, "+"));
}else {
	var _side = _h / 3;
	
	ds_map_add(_elm, "UButton", uiW_button_create(_x, _y, _side, _side, "+"));
	
	ds_map_add(_elm, "DButton", uiW_button_create(_x, _y + _h * 2/3, _side, _side, "-"));
}

return _elm;
}