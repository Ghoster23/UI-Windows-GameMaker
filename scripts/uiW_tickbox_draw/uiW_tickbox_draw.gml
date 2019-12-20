///@description Runs a tick box's 'draw-event'
///@argument tickbox_ds_map
{
var _tckb = argument0;

#region Position and Dimensions
var _anc = uiW_get_anchor_position(_bttn[? "A_Hor"], _bttn[? "A_Ver"]);

var _x  = _anc[0] + _bttn[? "RX"] * cm;
var _y  = _anc[1] + _bttn[? "RY"] * cm;

var _wd = _bttn[? "WD"] * cm;
var _hg = _bttn[? "HG"] * cm;
#endregion

#region Draw Label
var _lb = _tckb[? "Label"];

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(_x, _y + _hg / 2 - 2, _lb);

draw_set_valign(fa_top);
draw_set_color(c_white);
#endregion

// Draw Box
switch(bt_type){
	case 0: //Basic
		draw_set_color(bt_tparam);
		draw_rectangle(_x - _hg, _y, _x + _wd, _y + _hg, true);
		draw_set_color(c_white);
	break;
	
	case 1: //Sprite
		draw_sprite_stretched(bt_tparam, -1, _x + _wd - _hg, _y, _hg, _hg);
	break;
	
	case 2: //9SB
		draw_9SB_ext(bt_tparam, _x + _wd - _hg, _y, _x + _wd, _y + _hg, 1, 1);
	break;
}

// Draw Tick
var _tckd = _tckb[? "Ticked"];

if(_tckd) draw_sprite_stretched(tk_tick, -1, _x + _wd - _hg, _y, _hg, _hg);
}