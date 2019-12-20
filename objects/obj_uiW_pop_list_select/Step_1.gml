if(not booted) {	
	var _b_wd = 24; // Minimum button width
	var _b_hg = 24; // Minimum button height
	
	#region Calculate button Width / Height
	// For each option
	for(var i = 0; i < op_count; i++){
		var _option  = options[i];              // Get the Option
		var _selected_option = string(_option); // Get option text
	
		_wd = max( string_width(_selected_option), _wd); // Determine button width
		_hg = max(string_height(_selected_option), _hg); // Determine button height
	}
	#endregion

	#region Determine PopUp's dimensions
	width       = max(_b_wd + margin, width);             // Set popup's width
	full_height = _b_hg * op_count + bar_hg + 2 * margin; // Determine full height
	height      = full_height;                            // Set popup's height
	#endregion
	
	#region Create buttons
	var _b_margin = (2 * margin) / (op_count + 1);
	
	// Button relative left
	var _b_lf = - _b_wd / 2;
	
	// Button relative top
	var _b_tp = - height / 2 + bar_hg + _b_margin;
	
	// For each option
	for(var i = 0; i < op_count; i++){
		var _option  = options[i]; // Get the Option
		
		// Create the button ds_map
		buttons[i] = uiW_button_create(_b_lf, _b_tp, _b_wd, _b_hg, string(_option), uiW_h_anchor.center, uiW_v_anchor.top);
		
		_b_tp += _b_hg + _b_margin;
	}
	#endregion
	
	booted = true; // Booting up finished
}

cm = parent.cm;

if(collapsed) {
	height = bar_hg + 2;
}else {
	height = full_height;
}

event_inherited();

title = options[selected];