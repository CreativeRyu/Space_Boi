// Anpassung des Canvas an verschiedene Bildschirmgrößen
/// @param {int}    base width      The base width for the game room or camera_width
/// @param {int}    base height     The base height for the game room or camera_height
/// @param {int}    current width   The current width of the game canvas
/// @param {int}    current height  The current height of the game canvas
/// @param {bool}   center          Set whether to center the game window on the canvas or not

function scale_canvas(_bw, _bh, _cw, _ch, _center, _display_scale){
	var _ratio = (_bw / _bh);
	
	var _dsw = _cw * _display_scale;
	var _dsh = _ch * _display_scale;
	
	if ((_cw / _ratio) > _ch)
    {
		window_set_size((_dsh *_ratio), _dsh);
    }
else
    {
		window_set_size(_dsw, (_dsw / _ratio));
    }
if (_center)
    {
		window_center();
    }

	view_wport[0] = min(window_get_width(), _dsw);
	view_hport[0] = min(window_get_height(), _dsh);
	window_set_size(_dsw, _dsh);
	surface_resize(application_surface, view_wport[0], view_hport[0]);
}