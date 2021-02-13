/// @description Check for duplicates of this object.

with (object_index) {
	if (id != other.id) {
		show_debug_message("[randompug]: Duplicate instance detected! id = " + string(id));
		instance_destroy(other);
		break;
	}
}