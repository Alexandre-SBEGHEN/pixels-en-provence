//Resize the window
if (display_get_height() > INITIAL_WIN_HEIGHT * INITIAL_WIN_SCALE)
    window_set_size(INITIAL_WIN_WIDTH * INITIAL_WIN_SCALE, INITIAL_WIN_HEIGHT * INITIAL_WIN_SCALE);
window_center();

//Resize application surface
surface_resize(application_surface, INITIAL_WIN_WIDTH, INITIAL_WIN_HEIGHT);
application_surface_draw_enable(false);
surface_x = 0;
