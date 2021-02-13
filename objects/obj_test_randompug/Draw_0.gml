/// @description Draw the pug (and the text!)

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x, y, str);

// draw the pug.
if (pug > -1 && sprite_exists(pug)) {
	draw_sprite(pug, 0, x, y + h);
}