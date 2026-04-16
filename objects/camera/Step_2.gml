//Stop if pause
if (global.game_pause > 0) exit;

//Follow player
x = lerp(x, obj_player.x, CAMERA_FOLLOW_SPEED);
y = lerp(y, obj_player.y, CAMERA_FOLLOW_SPEED);

//Lock the camera inside the room
x = clamp(x, width / 2, room_width - width / 2);
y = clamp(y, height / 2, room_height - height / 2);

camera_set_view_pos(view_camera[0], x - width / 2, y - height / 2);