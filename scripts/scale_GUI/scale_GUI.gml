
function scale_gui(_width, _height){
	var _ratio =  window_get_width() / window_get_height();
	//var _ratio =  display_get_width() / display_get_height();
	if (_ratio > 1)
    {
    //landscape
    display_set_gui_size(_height * _ratio, _height);
    }
else
    {
    //portrait
    display_set_gui_size(_width, _width / _ratio);
    }
}