{
if(sub_window_count) {
	for(var i = 0; i < sub_window_count; i++) {
		with sub_windows[| i ] {
			uiW_window_close();
		}
	}
}

uiW_unregister_popup();

uiW_unregister_window();

instance_destroy();
}