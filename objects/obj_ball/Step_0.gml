is_hovering = point_distance(x, y, mouse_x, mouse_y) < 8 and phy_speed < .5;

if is_hovering and mouse_check_button_pressed(mb_left) {
    is_dragging = true;
}

var _dir = point_direction(x, y, mouse_x, mouse_y);
mouse_dist = point_distance(x, y, mouse_x, mouse_y);
mouse_dist = clamp(mouse_dist, -drag_range, drag_range);

clamped_mousex = x + lengthdir_x(mouse_dist, _dir);
clamped_mousey = y + lengthdir_y(mouse_dist, _dir);

if is_dragging {
    var _dr = point_direction(clamped_mousex, clamped_mousey, x, y);
    
    var _force = lerp(0, 1, power(abs(mouse_dist) / drag_range, shot_force_power)) * shot_force
    drag_force = _force;
    
    phy_linear_velocity_x /= 1.15;
    phy_linear_velocity_y /= 1.15;
}

if !is_hovering and is_dragging and mouse_check_button_released(mb_left) {
    is_dragging = false;
    
    var _dr = point_direction(clamped_mousex, clamped_mousey, x, y);
    
    var _force = lerp(0, 1, power(abs(mouse_dist) / drag_range, shot_force_power)) * shot_force
    
    
    var _dx = lengthdir_x(_force, _dr);
    var _dy = lengthdir_y(_force, _dr);

    phy_speed_x = 0;
    phy_speed_y = 0;
    phy_linear_velocity_x = _dx;
    phy_linear_velocity_y = _dy;
    phy_angular_velocity += choose(-100, 100);
}




// Hover circle
var _des_circle_size = (is_hovering && !is_dragging) ? 12 : 0;

hover_circle_size = lerp(hover_circle_size, _des_circle_size, 1.0 / 6.0);

// Drag helpers

_des_circle_size = is_dragging ? 3.5 : 0;
drag_circle_size = lerp(drag_circle_size, _des_circle_size, 1.0 / 4.0);

var _t = is_dragging ? 1.0 / 3.0 : 1;

drag_circle_px = lerp(drag_circle_px, is_dragging ? clamped_mousex : x-1, _t);
drag_circle_py = lerp(drag_circle_py, is_dragging ? clamped_mousey : y-1, _t);


