///@description Creates a window/popup tick box
///@param relative_x
///@param relative_y
///@param width
///@param height
///@param label
///@param ticked
///@param style_opt
{
if(argument_count < 6 or argument_count > 7) {
	show_debug_message("uiW - ERROR - Failed to create a tick box - Invalid number of arguments.");
	return -1;
}

var _x   = argument[0];
var _y   = argument[1];
var _w   = argument[2];
var _h   = argument[3];
var _lb  = argument[4];
var _tck = argument[5];

var _st = -1;
if(argument_count == 7) {
	_st = argument[6];
}

var _elm = uiW_element_create(_x, _y, _w, _h, uiW_element_type.tickbox);

ds_map_add(_elm,  "Label", _lb);
ds_map_add(_elm, "Ticked", _tck);

return _elm;
}