event_inherited();

if(not collapsed) {
	if(uiW_clicked_out(x1, y1, x2, y2)) {
		collapsed = true;
		
		collapse_button[? "Label"] = "v";
		
		exit;
	}
	
	for(var i = 0; i < op_count; i++){
		if(uiW_button_gen(buttons[i])){
			collapsed = true;
				
			selected = i;
		}
	}
}

if(uiW_button_gen(collapse_button)){
	collapsed = not collapsed;

	collapse_button[? "Label"] = (collapsed ? "v" : "^");

	if(not collapsed) {
		uiW_unregister_popup();
		uiW_register_popup(parent);
	}
}