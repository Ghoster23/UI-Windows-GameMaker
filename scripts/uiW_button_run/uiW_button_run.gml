///@description Runs a button's 'step-event'
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

#region State Machine
var _state = _bttn[? "State"];
	
switch(_state) {
	case 0: // Neutral
		// If the cursor is within the button
		if(point_in_rectangle(controller.cursor_x, controller.cursor_y, _x, _y, _x + _wd, _hg)) {
			_state = 1;
		}
	break;
		
	case 1: // Hover
		// If the cursor is not within the button
		if(not point_in_rectangle(controller.cursor_x, controller.cursor_y, _x, _y, _x + _wd, _hg)) {
			_state = 0;
			break;
		}
			
		// If clicked and click cooldown is not on-going
		if(controller.click) {
			_state = 2;
				
			alarm[0] = 5; // Click cooldown
		}
	break;
		
	case 2: // Pressed
		_state = 0;
	break;
		
	case 3: // Deactivated
	break;
}
	
_bttn[? "State"] = _state;
#endregion
}