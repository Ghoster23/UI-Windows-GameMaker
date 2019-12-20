if(closed){
	uiW_window_close();
	exit;
}

switch mov_state {
	case 0:	
		#region Drag Start
		if(moveable and
			uiW_mouse_hold(x1, y1, x2, y1 + bar_hg * cm) and
							obj_uiW_controller.grabbed == noone){
			cursor_dist = [ x - obj_cursor.gui_x, y - obj_cursor.gui_y];
			
			obj_uiW_controller.grabbed = id;
			
			mov_state = 1;
		}
		#endregion
	break;
	
	case 1:
		#region Drag On-Going
		x = obj_cursor.gui_x + cursor_dist[0];
		y = obj_cursor.gui_y + cursor_dist[1];
		
		if(!mouse_check_button(mb_left)){
			mov_state = 0;
			obj_uiW_controller.grabbed = noone;
		}
		#endregion
	break;
}

switch resize_state {
	case 0:	
		#region Drag Start
		if(resizeable and
			uiW_mouse_hold(x2 - 24 * cm, y2 - 24 * cm, x2, y2) and
							obj_uiW_controller.grabbed == noone){			
			resize_state = 1;
		}
		#endregion
	break;
	
	case 1:
		#region Drag On-Going
		width  = max( min_width, (obj_cursor.gui_x - x) / cm);
		height = max(min_height, (obj_cursor.gui_y - y) / cm);
		
		if(!mouse_check_button(mb_left)){
			resize_state = 0;
		}
		#endregion
	break;
}