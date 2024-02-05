// Debug code
//show_debug_message("Event = " + async_load[? "event_type"]);
//show_debug_message("Pad = " + string(async_load[? "pad_index"]));
var _pad;
// Parse the async_load map to see which event has been triggered
switch(async_load[? "event_type"])
{
	// A game pad has been discovered
	case "gamepad discovered":
	  // Get the pad index value from the async_load map
	  _pad = async_load[? "pad_index"];
	  // Set the "deadzone" for the axis
	  gamepad_set_axis_deadzone(_pad, 0.1);
	  // Set the "threshold" for the triggers
	  gamepad_set_button_threshold(_pad, 0.1);

	// Gamepad has been removed or otherwise disabled
	case "gamepad lost":
	  // Get the pad index
	  _pad = async_load[? "pad_index"];
	  // Spiel Pausiert
}