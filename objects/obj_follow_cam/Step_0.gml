
var _dx = clamp(obj_ball.x - cam_width/2, 0, room_width - cam_width) ;
var _dy = clamp(obj_ball.y - cam_height/2, 0, room_height - cam_height);



x = lerp(x, _dx, 1.0 / follow_delay);
y = lerp(y, _dy, 1.0 / follow_delay);



camera_set_view_pos(view_camera[0], x, y);