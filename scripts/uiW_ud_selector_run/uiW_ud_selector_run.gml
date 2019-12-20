///@description Runs an ud selector's 'step-event'
///@param ud_selector_ds_map
{
var _uds = argument0;

#region Buttons
var _val = _uds[? "Value"];

var d_bttn = _uds[? "DButton"];

uiW_button_run(d_bttn);

if(d_bttn[? "State"] == 2) {
	var _min = _uds[? "Min"];
	
	if(_val > _min) {
		_val -= 1;
	}
}

var u_bttn = _uds[? "UButton"];

uiW_button_run(u_bttn);

if(u_bttn[? "State"] == 2) {
	var _max = _uds[? "Max"];
	
	if(_val < _max) {
		_val += 1;
	}
}
#endregion

return _val;
}