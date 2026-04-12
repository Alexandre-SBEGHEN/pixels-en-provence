var snap = 1 / TEXTBOX_GROWSNAP;
var draw_scale = floor(box_scale / snap) * snap;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale * draw_scale, image_yscale * draw_scale, 0, c_white, 1);

draw_set_font(fnt_pixel_emulator);
if (box_scale == 1 && char_current > 0) {
    for (var i = 0; i < line_current+1 && i < lines_in_current_page; ++i) {
        var page = pages[page_current];
        var text_to_draw = (i == line_current) ? string_copy(page[i], 1, char_current) : page[i];
        draw_text(bbox_left + 8, bbox_top + 8 + i * 16, text_to_draw);
    }
}