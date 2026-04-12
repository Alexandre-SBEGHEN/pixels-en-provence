box_scale = 0;
image_xscale = 256 / sprite_get_width(sprite_index);
image_yscale = 64 / sprite_get_height(sprite_index);

pages = undefined;

event_close = undefined;

page_current = 0;
line_current = 0;
char_current = 0;

char_sound = snd_textbox_normal;

number_of_pages = 0;
lines_in_current_page = 0;
chars_in_current_line = 0;

char_timer = 0;

closing = false;