//Get transition opacity / effect intensity, etc
var intensity;
switch (phase) {
    case TRANSITIONS_PHASES.STARTING:   intensity = timer / starting_time; break;
    case TRANSITIONS_PHASES.WAITING:    intensity = 1; break;
    case TRANSITIONS_PHASES.ENDING:     intensity = 1 - timer / ending_time; break;
}

//Draw the transition
switch (type) {
	case TRANSITIONS_TYPES.FADE_TO_BLACK:
        draw_set_colour(c_black);
        
        var snap = 3;
        draw_set_alpha(floor(intensity * snap) / snap);
        
        draw_rectangle(0, 0, INITIAL_WIN_WIDTH, INITIAL_WIN_HEIGHT, 0);
        break;
}

//Reset drawing
draw_set_alpha(1);
draw_set_color(c_white);
gpu_set_blendmode(bm_normal);