
view_enabled = true;
view_set_visible(0, true);

camera_set_view_size(view_camera[0], 256, 240);


cam_width = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);

follow_delay = 8;


x = clamp(obj_ball.x - cam_width/2, 0, room_width - cam_width);
y = clamp(obj_ball.y - cam_height/2, 0, room_height - cam_height);