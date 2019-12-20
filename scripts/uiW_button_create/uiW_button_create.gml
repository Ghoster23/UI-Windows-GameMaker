///@description Creates a window/popup button
///@param relative_x
///@param relative_y
///@param width
///@param height
///@param label
///@param anchor_horizontal_opt
///@param anchor_vertical_opt
///@param style_opt
{
if(argument_count < 5 or argument_count > 6) {
	show_debug_message("uiW - ERROR - Failed to create a button - Invalid number of arguments.");
	return -1;
}

var _x  = argument[0];
var _y  = argument[1];
var _w  = argument[2];
var _h  = argument[3];
var _lb = argument[4];

var _ah = uiW_h_anchor.center;
if(argument_count == 6) {
	_ah = argument[5];
}

var _av = uiW_v_anchor.middle;
if(argument_count == 7) {
	_st = argument[6];
}

var _st = -1;
if(argument_count == 8) {
	_st = argument[7];
}

var _elm = uiW_element_create(_x, _y, _w, _h, uiW_element_type.button, _ah, _av);

ds_map_add(_elm, "Label", _lb);

ds_map_add(_elm, "State", 0); // [ 0 - Neutral | 1 - Hover | 2 - Pressed | 3 - Deactivated ]

return _elm;
}