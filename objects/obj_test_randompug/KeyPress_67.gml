/// @description Cleanup a bit.

randompug_clear();
/*
 *  ONLY CALL THIS FUNCTION WHEN YOU'RE NOT EXPECTING ANY PUGS,
 *  IF YOU ARE EXPECTING FOR A PUG, DS LIST INDEXES WILL BE SHUFFLED UP
 *  AND THE LIBRARY WON'T BE ABLE TO FIND THE CALLBACK IT NEEDS TO CALL!
 *  it's not like a ds list of integers will consume a lot of memory.....
 */