/// @description Free the lists.

ds_list_destroy(mylist);
ds_list_destroy(mysprlist);
mylist = undefined;
mysprlist = undefined;
show_debug_message("[randompug]: Clean Up event is called.");