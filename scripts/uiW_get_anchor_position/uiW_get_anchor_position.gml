///@description Returns the position of the anchor point
///@argument horizontal
///@argument vertical
{
var _h = argument0;
var _v = argument1;

var _pos = [ 0, 0];

switch(_h) {
	case uiW_h_anchor.center:
		_pos[0] = rg - lf;
	break;
	
	case uiW_h_anchor.left:
		_pos[0] = lf;
	break;
	
	case uiW_h_anchor.right:
		_pos[0] = rg;
	break;
	
	default:
		return -1;
	break;
}

switch(_v) {
	case uiW_v_anchor.middle:
		_pos[1] = bt - tp;
	break;
	
	case uiW_v_anchor.top:
		_pos[1] = tp;
	break;
	
	case uiW_v_anchor.bottom:
		_pos[1] = bt;
	break;
	
	default:
		return -1;
	break;
}

return _pos;
}