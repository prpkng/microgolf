if instance_number(obj_follow_cam) > 1 {
    instance_destroy(self);
    exit;
}

cam_width = 256;
cam_height = 240;
camera_bounds_bias = 3;

function setup_view() {
        
    view_enabled = true;
    view_set_visible(0, true);
    
    camera_set_view_size(view_camera[0], cam_width, cam_height);
       
}

setup_view()


follow_delay = 8;


x = clamp(obj_ball.x, 0, room_width - cam_width/2);
y = clamp(obj_ball.y, 0, room_height - cam_height/2);