/// @description React to HTTP events from the Dog API.

var _result = ds_map_find_value(async_load, "result");

if (!is_undefined(_result)) {
	var _status = ds_map_find_value(async_load, "status");
	var _id = ds_map_find_value(async_load, "id");
	var _callback = ds_list_find_value(mylist, _id);
	
	if (is_undefined(_callback)) {
		show_error("[randompug]: Unable to get the callback. httpid=" + string(_id), false);
	}
	else {
		if (_status >= 0) {
			var _map = json_decode(_result);
			if (_map == -1) {
				show_debug_message("[randompug]: There was an error decoding the JSON...");
				script_execute(_callback, -2);
			}
			else {
				show_debug_message("[randompug]: JSON decoded, requesting sprite...");
				var _jstatus = ds_map_find_value(_map, "status");
				if (_jstatus != "success") {
					show_debug_message("[randompug]: JSON is valid, but the status is not success...");
					script_execute(_callback, -3);
				}
				else {
					var _sprurl = ds_map_find_value(_map, "message");
					var _spr = sprite_add(_sprurl, 1, false, false, 0, 0);
					ds_list_set(mysprlist, _spr, _callback);
					show_debug_message("[randompug]: All good, requested image from " + _sprurl);
				}
			
				ds_map_destroy(_map);
			}
		}
		else {
			show_debug_message("[randompug]: There was an error fetching the JSON...");
			script_execute(_callback, -1);
		}
	}
}