function dialog_create(text_mat) {
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    
    with instance_create_layer(
        cam_x + camera.width * 0.5,
        cam_y + camera.height * 0.8,
        "GUI",
        obj_textbox) {
            
        self.pages = text_mat;
        self.page_number = array_length(text_mat);
        
        if (argument[1] != undefined) script_execute(argument[1]);
        if (argument[2] != undefined) self.event_close = argument[2];
    }
}