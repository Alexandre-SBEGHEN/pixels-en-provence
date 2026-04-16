/**
 * @description                        Make a transition for an event, a room change... 
 * @param type                         The type of the transition 
 * @param [event_starting]             A script to execute right before the fade-in
 * @param [event_ending]               A script to execute right before the fade-out
 */
function transition_create(type) {
    with instance_create_layer(
        0,
        0,
        "GUI",
        obj_transition
    ) {
        self.type = type;
        
        if (argument[1] != undefined) script_execute(argument[1]);
        if (argument[2] != undefined) self.event_ending = argument[2];
    }
}