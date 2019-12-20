///@description Creates a window/popup base element
///@param relative_x
///@param relative_y
///@param width
///@param height
///@param type
///@param anchor_horizontal_opt
///@param anchor_vertical_opt
{
if(argument_count < 5) {
	return -1;
}

var _x = argument[0];
var _y = argument[1];
var _w = argument[2];
var _h = argument[3];
var _t = argument[4];

var _ah = uiW_h_anchor.center;

if(argument_count >= 6) {
	_ah = argument[5];
}

var _av = uiW_v_anchor.middle;

if(argument_count >= 7) {
	_av = argument[6];
}

var _elm = ds_map_create();

ds_map_add(_elm,    "RX",  _x); // X relative to the anchor position
ds_map_add(_elm,    "RY",  _y); // Y relative to the anchor position
ds_map_add(_elm,    "WD",  _w); // Width
ds_map_add(_elm,    "HG",  _h); // Height
ds_map_add(_elm,  "Type",  _t); // Element Type
ds_map_add(_elm, "A_Hor", _ah); // Anchor horizontal setting
ds_map_add(_elm, "A_Ver", _av); // Anchor vertical setting

return _elm;
}