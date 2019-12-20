///@description Runs a tick box's 'step-event'
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

#region Tick / Untick
var _tckd = _tckb[? "Ticked"];

// If the cursor is within the tick box
if(point_in_rectangle(controller.cursor_x, controller.cursor_y, _x, _y, _x + _wd, _hg)) {
	
	// If clicked and click cooldown is not on-going
	if(controller.click) {
		_tckd = not _tckd;  // Toggle Tick
	}
}

_tckb[? "Ticked"] = _tckd;
#endregion
}