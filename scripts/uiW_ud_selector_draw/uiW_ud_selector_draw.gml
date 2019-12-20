///@param ud_selector_ds_map
{
var _uds = argument0;

#region Position and Dimensions
var _anc = uiW_get_anchor_position(_bttn[? "A_Hor"], _bttn[? "A_Ver"]);

var _x  = _anc[0] + _bttn[? "RX"] * cm;
var _y  = _anc[1] + _bttn[? "RY"] * cm;

var _wd = _bttn[? "WD"] * cm;
var _hg = _bttn[? "HG"] * cm;
#endregion

var _val = _uds[? "Value"];

var _min = _uds[? "Min"];
var _max = _uds[? "Max"];

if(_val < _min){
	_val = _max;
}

if(_val > _max){
	_val = _min;
}

//FixMe - Add label

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_ext_transformed(_x + _wd / 2, _y + _hg / 2 - 10, string(_val),
						  0, _wd / 3, 1, 1, 0);
						  
draw_set_halign(fa_left);
draw_set_valign(fa_top);

return _val;
}