/// @function randompug_init()
/// @description Initializes stuff for randompug.
/// @returns obj_randompug instance id.

#macro RANDOMPUG_URL "https://dog.ceo/api/breed/pug/images/random"

show_debug_message("[randompug]: Welcome to randompug by @nkrapivindev!");
return instance_create_depth(0, 0, 0, obj_randompug);