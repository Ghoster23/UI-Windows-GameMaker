unique_inst();

//Window Parent Variables
sub_windows = ds_list_create();

//Window Drawer Variables
draw_wnds = ds_list_create();

grabbed = noone;

#region Cursor
click = false; // Was there a click this step

cursor_x = 0;  // Cursor X on this step
cursor_y = 0;  // Cursor Y on this step
#endregion