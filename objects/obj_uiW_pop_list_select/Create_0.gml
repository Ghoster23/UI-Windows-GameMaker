// Inherit the parent event
event_inherited();

title = "";

width  = 0;
height = 0;

full_height = height;

moveable  = false;
closeable = false;

relative_pos = true;

collapsed = true;

collapse_button = uiW_button_create(-26, 10, 16, 16, "v", uiW_h_anchor.right, uiW_v_anchor.top);

options  =  0; // Array of options
op_count =  0; // Number of options
selected =  0; // Selected option
buttons  = [];

booted = false;