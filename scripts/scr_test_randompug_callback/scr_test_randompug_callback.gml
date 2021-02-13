/// @function scr_test_randompug_callback(sprindex)
/// @description A test callback that receives a sprite index OR <0 for an error.
/// @param {number} Sprite Index OR <0.
/// @returns {bool} Did we change the sprite ok or not?

var _spr = argument0;
if (_spr > -1) {
	with (obj_test_randompug) {
		if (sprite_exists(pug)) sprite_delete(pug);
		pug = _spr;
	}
	return true;
}
else {
	show_debug_message("[callback]: Error code " + string(_spr));
	return false;
}