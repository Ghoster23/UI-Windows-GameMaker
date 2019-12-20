///@description Runs an element's 'step-event'
///@param element_ds_map
{
var _elm = argument0;

var _type = _elm[? "Type"];

switch(_type) {
	default:
	break;
	
	case uiW_element_type.button:
		uiW_button_run(_elm);
	break;
	
	case uiW_element_type.tickbox:
	break;
	
	case uiW_element_type.ud_selector:
	break;
	
	case uiW_element_type.text_box:
	break;
	
	case uiW_element_type.list_selector:
	break;
}

return;
}