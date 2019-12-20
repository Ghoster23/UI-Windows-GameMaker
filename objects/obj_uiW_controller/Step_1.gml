click = false;

cursor_x = device_mouse_x_to_gui(0);
cursor_y = device_mouse_y_to_gui(0);

for(var i = 0; i < ds_list_size(sub_windows); i++){
	var wnd = sub_windows[| i];
	
	if(!instance_exists(wnd)){
		ds_list_delete(sub_windows,i);
		i--;
	}
}

if(mouse_check_button_pressed(mb_left)) {
	click = true;
}

var _clicked = noone;

if(click) {
	for(var i = 0; i < ds_list_size(draw_wnds); i++){
		var _wnd = draw_wnds[| i];
	
		if(!instance_exists(_wnd)){
			ds_list_delete(draw_wnds,i);
			i--;
		}else {
			if(point_in_rectangle(cursor_x, cursor_y, _wnd.x1, _wnd.y1, _wnd.x2, _wnd.y2)) {
				if(_clicked != noone) {
					_clicked.in_front = false;
				}
			
				_wnd.in_front = true;
				_clicked = _wnd;
			}
		}
	}
}

if(_clicked != noone) {
	var _ind = ds_list_find_index(draw_wnds, _clicked);
	ds_list_delete(draw_wnds, _ind);
	ds_list_add(draw_wnds, _clicked);
}