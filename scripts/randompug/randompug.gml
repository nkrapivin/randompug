/// @function randompug(callback)
/// @description Will try to get a new pug picture.
/// @param {script} callback What script to call when the sprite is finished loading?
/// @returns {real} HTTP request index.

with (obj_randompug) {
	var _http = http_get(RANDOMPUG_URL);
	ds_list_set(mylist, _http, argument0);
	return _http;
}