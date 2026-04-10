if instance_exists(obj_player) {
    x = lerp(x, obj_player.x, 0.2);
    y = lerp(y, obj_player.y, 0.2);
}
x = clamp(x, width / 2, room_width - width / 2);
y = clamp(y, height / 2, room_height - height / 2);

camera_set_view_pos(view_camera[0], x - width / 2, y - height / 2);
