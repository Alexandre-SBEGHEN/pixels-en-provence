if (instance_exists(obj_player)) {
    x = lerp(x, obj_player.x, 0.2);
    y = lerp(y, obj_player.y, 0.2);
}

camera_set_view_pos(view_camera[0], x - camera_width / 2, y - camera_height / 2);