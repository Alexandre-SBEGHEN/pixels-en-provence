++timer;

switch (phase) {
	case TRANSITIONS_PHASES.STARTING:
        //Go to waiting
        if (timer >= starting_time) {
            phase = TRANSITIONS_PHASES.WAITING;
            timer = 0;
        }
        break;
    
    case TRANSITIONS_PHASES.WAITING:
        //Go to ending
        if (timer >= waiting_time) {
            phase = TRANSITIONS_PHASES.ENDING;
            timer = 0;
            if (event_ending != undefined) script_execute(event_ending);
        }
        break;
    
    case TRANSITIONS_PHASES.ENDING:
        //Destroy itself
        if (timer >= ending_time) {
            if (event_destroy != undefined) script_execute(event_destroy);
            instance_destroy();
        }
        break;
}