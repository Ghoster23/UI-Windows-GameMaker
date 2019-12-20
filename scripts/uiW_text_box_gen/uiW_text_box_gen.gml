///@param text_box_ds_map
{
var _txtb = argument0;

var _anc = uiW_get_anchor_position(_txtb[? "A_Hor"], _txtb[? "A_Ver"]);

var _x = _anc[0] + _txtb[? "RX"];
var _y = _anc[1] + _txtb[? "RY"];

var _wd = _txtb[? "WD"];
var _hg = _txtb[? "HG"];

var _max_char = _wd div string_width("W");

var _stt = _txtb[? "State"];
var _txt = _txtb[?  "Text"];

switch (_stt) {
	case 0:
		if(uiW_clicked_in(_x, _y, _x + _wd, _y + _hg)){
			_stt            = 1;
			keyboard_string = _txt;
		}
		
		draw_set_color(c_white);
	break;
	
	case 1:
		if(string_length(keyboard_string) < _max_char){
			_txt = keyboard_string;
		}
		
		if(uiW_clicked_out(_x, _y, _x + _wd, _y + _hg)){
			_stt            =  0;
			keyboard_string = "";
		}
		
		draw_set_color(c_blue);
	break;
}

_txtb[? "State"] = _stt;
_txtb[?  "Text"] = _txt;

//FixMe - Add Label

draw_rectangle(_x, _y, _x + _wd, _y + _hg, true);

draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
		
draw_text_transformed( _x, _y, _txt, 1, 1, 0);

return _txt;
}