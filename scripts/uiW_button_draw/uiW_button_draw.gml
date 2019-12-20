///@description Runs a button's 'draw-event'
///@param button_ds_map
{
var _bttn = argument0;

#region Position and Dimensions
var _anc = uiW_get_anchor_position(_bttn[? "A_Hor"], _bttn[? "A_Ver"]);

var _x  = _anc[0] + _bttn[? "RX"] * cm;
var _y  = _anc[1] + _bttn[? "RY"] * cm;

var _wd = _bttn[? "WD"] * cm;
var _hg = _bttn[? "HG"] * cm;
#endregion

var _state = _bttn[? "State"];

#region Hover Begin
if(_state == 1){
	switch (bt_hover) {
		case 0: //Basic
			draw_set_alpha(bt_hparam);
		break;
		
		case 1: //Outline
			draw_set_color(bt_hparam);
			draw_rectangle(_x, _y, _x + _wd, _y + _hg, false);
			draw_set_color(c_white);
		break;
		
		case 2:
		break;
	}
}
#endregion

#region Button base
switch (bt_type) {
	case 0: //Basic
		if(_state != 1){
			draw_set_color(bt_tparam);
			draw_rectangle(_x, _y, _x + _wd, _y + _hg, false);
			draw_set_color(c_white);
		}else {
			draw_set_color(bt_tparam);
			draw_rectangle(_x, _y, _x + _wd, _y + _hg, false);
			draw_set_color(bt_hparam);
			draw_rectangle(_x, _y, _x + _wd, _y + _hg, true);
			draw_set_color(c_white);
		}
	break;
	
	case 1: //Sprite
		draw_sprite_stretched(bt_tparam, -1, 
							  _x + _wd / 2 - sprite_xoffset + sprite_width  / 2, 
							  _y + _hg / 2 - sprite_yoffset + sprite_height / 2, 
							  _wd, 
							  _hg);
	break;
	
	case 2: //9SB
		draw_9SB_ext(bt_tparam, _x, _y, _x + _wd, _y + _hg, 1, 1);
	break;
}
#endregion

#region Hover End
if(_state == 1){
	switch (bt_hover) {
		case 0: //Basic
			draw_set_alpha(1);
		break;
		
		case 1: //Outline
		break;
		
		case 2:			
		break;
	}
}
#endregion

#region Label
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(_x + _wd / 2, _y + _hg / 2 - 2, _bttn[? "Label"]);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
#endregion
}