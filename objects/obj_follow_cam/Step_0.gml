
var _dx = clamp(obj_ball.x, cam_width/2-camera_bounds_bias, room_width - cam_width/2+camera_bounds_bias);
var _dy = clamp(obj_ball.y, cam_height/2-camera_bounds_bias, room_height - cam_height/2+camera_bounds_bias);



x = lerp(x, _dx, 1.0 / follow_delay);
y = lerp(y, _dy, 1.0 / follow_delay);



camera_set_view_pos(view_camera[0], x - cam_width/2, y - cam_height/2);