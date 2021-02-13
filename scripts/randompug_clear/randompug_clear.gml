/// @function randompug_clear()
/// @description Clears internal randompug lists. Good to call it when you're not expecting pugs anytime soon.
/// @returns {bool} true if the lists weren't empty, false if at least one of them was.

with (obj_randompug) {
	var _ret = !(ds_list_size(mylist) == 0 || ds_list_size(mysprlist) == 0);
	ds_list_clear(mylist);
	ds_list_clear(mysprlist);
	show_debug_message("[randompug]: Cleared!");
	return _ret;
}