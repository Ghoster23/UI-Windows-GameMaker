///@description Creates a window/popup text box
///@param relative_x
///@param relative_y
///@param width
///@param height
///@param label
///@param state
///@param text
///@param style_opt
{
if(argument_count < 7 or argument_count > 8) {
	show_debug_message("uiW - ERROR - Failed to create an up/down selector - Invalid number of arguments.");
	return -1;
}

var _x   = argument[0];
var _y   = argument[1];
var _w   = argument[2];
var _h   = argument[3];
var _lb  = argument[4];
var _stt = argument[5];
var _txt = argument[6];

var _st = -1;
if(argument_count == 8) {
	_st = argument[7];
}

var _elm = uiW_element_create(_x, _y, _w, _h, uiW_element_type.text_box);

ds_map_add(_elm, "Label", _lb);
ds_map_add(_elm, "State", _stt);
ds_map_add(_elm,  "Text", _txt);

return _elm;
}