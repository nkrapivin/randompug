/// @description Only load the image.

var _status = ds_map_find_value(async_load, "status");
var _id = ds_map_find_value(async_load, "id");
var _callback = ds_list_find_value(mysprlist, _id);

if (is_undefined(_callback)) {
	show_error("[randompug]: Unable to get the sprite callback. sprid=" + string(_id), false);
}
else {
	if (_status >= 0) {
		script_execute(_callback, _id);
	}
	else {
		show_debug_message("[randompug]: There was an error decoding the sprite.");
		script_execute(_callback, -4);
	}
}