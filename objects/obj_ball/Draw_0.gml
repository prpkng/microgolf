// draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1.0);
draw_self();

draw_set_alpha(1);
draw_circle(x-1, y-1, hover_circle_size, true);

// Draw dragging

draw_circle(drag_circle_px, drag_circle_py, drag_circle_size, true);

if point_distance(x, y, drag_circle_px, drag_circle_py) > 5 {
    var _dir = point_direction(clamped_mousex, clamped_mousey, x, y);
    
    var _px = drag_circle_px + lengthdir_x(drag_circle_size, _dir);
    var _py = drag_circle_py + lengthdir_y(drag_circle_size, _dir);
    
    draw_line_width(x -1 - lengthdir_x(3, _dir), y - lengthdir_y(3, _dir), _px, _py, 2);
}

if is_dragging and mouse_dist > 24 {
    
    draw_set_alpha(power((mouse_dist - 24) / 128, 1.25));
    draw_circle(x, y, drag_range, true);
}

if is_dragging {
    var _dir = point_direction(clamped_mousex, clamped_mousey, x, y);
    
    for (var i = 0; i < mouse_dist; i+=8) {
        
        var _px = x + lengthdir_x(i, _dir);
        var _py = y + lengthdir_y(i, _dir);
        
        var alpha = 0.5;
        
        if i + 8 > mouse_dist {
            alpha = lerp(0.5, 0, (i+8 - mouse_dist) / 8);
        }
        
        draw_sprite_ext(spr_ball_arrow, 0, _px, _py, 1, 1, _dir, c_white, alpha);
    }
}

draw_set_alpha(1);