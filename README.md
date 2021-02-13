# randompug
I have no idea why this exists, I don't want to know.

## Usage:
Call `randompug_init` somewhere at the start, and then call `randompug` with your script as the first argument.

When the pug will be ready for you, that callback will be called, the first argument will be the sprite index.

If the sprite index is less than zero, then an error has occured.

If you did receive the sprite, don't forget to call `sprite_delete` when you don't need the pug anymore.

Also, call `randompug_clear` from time to time, when you're absolutely not expecting any pugs, to save memory.
