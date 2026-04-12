number_of_pages = array_length(pages);
lines_in_current_page = array_length(pages[page_current]);
chars_in_current_line = string_length(pages[page_current][line_current]);

box_scale += (closing ? -1 : 1) / TEXTBOX_GROWSPEED;
box_scale = clamp(box_scale, 0, 1);

if (closing) {
    if (box_scale == 0) instance_destroy();
    exit;
}

if (box_scale == 1) {
    //Text drawing
    if (char_current < chars_in_current_line || line_current < lines_in_current_page - 1) {
        var spd = input.b2 ? TEXTBOX_SPEED_FAST : TEXTBOX_SPEED_NORMAL;
        if (char_timer++ >= spd) {
            if (char_sound != undefined && string_char_at(pages[page_current][line_current], char_current+1) != " ") {
                audio_stop_sound(char_sound);
                audio_play_sound(char_sound, 1, 0);
            }
            
            if (++char_current > chars_in_current_line) {
                ++line_current;
                char_current = 1;
            }
            
            char_timer = 0;
        }
    }
    
    //Skip text or go to next page
    if (input.b1_p) {
        //Next page
        if (char_current >= chars_in_current_line) {
            if (++page_current > page_number - 1) {
                page_current = 0;
                closing = true;
                if (event_close != undefined) script_execute(event_close);
            }
            line_current = 0;
            char_current = 0;
            char_timer = 0;
        } else {
            //Show page intirely
            line_current = array_length(pages[page_current]) - 1;
            char_current = string_length(pages[page_current][line_current]);
        }
    }
}
