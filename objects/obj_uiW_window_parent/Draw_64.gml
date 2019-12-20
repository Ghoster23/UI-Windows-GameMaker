if(not drawing or closed){ exit; }

uiW_window_position_update();

#region Window Frame and Title
if(style == -1){
	draw_set_color(c_white);
	draw_rectangle(x1, y1, x2, y2, false);
	
	draw_set_color(c_black);
	draw_rectangle(x1, y1, x2, y2, true);
	
	draw_line(x1, y1 + bar_hg * cm, x2, y1 + bar_hg * cm);
}else {
	script_execute(style,st_params);
}

#region Title - should probably be part of the style
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_transformed(x1 + sc_margin, y1 + (bar_hg / 2) * cm, title, cm, cm, 0);

draw_set_valign(fa_top);
#endregion
#endregion

#region Close Button
if(closeable){
	if(uiW_button_gen(close_button)){
		uiW_window_close();
		closed = true;
	}
}
#endregion