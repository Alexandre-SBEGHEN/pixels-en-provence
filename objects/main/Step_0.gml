var scale = (INTERNAL_RESOLUTION_UPSCALING_ENABLE && window_get_fullscreen()) ? INTERNAL_RESOLUTION_SCALE : 1;
surface_resize(application_surface, INITIAL_WIN_WIDTH * scale, INITIAL_WIN_HEIGHT * scale);

//display_set_gui_size(window_get_height(), window_get_height());
display_set_gui_maximize(window_get_width() / INITIAL_WIN_WIDTH, window_get_height() / INITIAL_WIN_HEIGHT, surface_x, 0);


/*
if keyboard_check_pressed(ord("T")) dialog_create([
    ["Hello !", "Second line   :o"],
    ["Aaaannd...", "Another page !", "hihi"],
    ["This one is the last", "I promise :)"]
],
    function () {global.game_pause = 3;},
    function () {global.game_pause = 0;}
);
if keyboard_check_pressed(ord("T")) transition_create(
    TRANSITIONS_TYPES.FADE_TO_BLACK
);
*/