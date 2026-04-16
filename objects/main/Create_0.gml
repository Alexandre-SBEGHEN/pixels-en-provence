//Resize the window
if (display_get_height() > INITIAL_WIN_HEIGHT * INITIAL_WIN_SCALE)
    window_set_size(INITIAL_WIN_WIDTH * INITIAL_WIN_SCALE, INITIAL_WIN_HEIGHT * INITIAL_WIN_SCALE);
window_center();

//Resize application surface
surface_resize(application_surface, INITIAL_WIN_WIDTH, INITIAL_WIN_HEIGHT);
application_surface_draw_enable(false);
surface_x = 0;

//Pause system
global.game_pause = 0;

//Audiogroups
if (!audio_group_is_loaded(audiogroup_music)) audio_group_load(audiogroup_music);
if (!audio_group_is_loaded(audiogroup_sfx)) audio_group_load(audiogroup_sfx);