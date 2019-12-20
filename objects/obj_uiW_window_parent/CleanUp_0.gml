if(ds_exists(sub_windows, ds_type_list)) {
	ds_list_destroy(sub_windows);
}

if(obj_uiW_controller.grabbed == id) {
	obj_uiW_controller.grabbed = noone;
}