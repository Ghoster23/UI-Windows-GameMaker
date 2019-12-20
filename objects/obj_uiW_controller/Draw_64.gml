var _size = ds_list_size(draw_wnds);

for(var i = 0; i < _size; i++){
	var _wnd = draw_wnds[| i];
	
	draw_set_font(fn_press_start);
	uiW_window_draw(_wnd);
	draw_set_font(-1);
}