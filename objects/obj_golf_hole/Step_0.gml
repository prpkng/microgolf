var _dist = point_distance(obj_ball.x, obj_ball.y, x, y);

if _dist < 8 and !has_won {
    
    var _ball = obj_ball;
    
    var _dx = x - _ball.x;
    var _dy = y - _ball.y;
    
    var follow_spd = 2 / (_ball.phy_speed * 2);
    
    obj_ball.phy_linear_velocity_x /= 1.2;
    obj_ball.phy_linear_velocity_y /= 1.2;
    obj_ball.phy_linear_velocity_x += _dx * follow_spd;
    obj_ball.phy_linear_velocity_y += _dy * follow_spd;
    
    
    if _dist < 3 {
        obj_ball.phy_linear_velocity_x /= 2;
        obj_ball.phy_linear_velocity_y /= 2;
        
        win_counter++;
    } else {
        win_counter = 0;
    }
    
}



if win_counter > 20 {
    has_won = true;
    win_counter = 0;
    
    obj_ball.phy_active = false;
    obj_ball.phy_linear_velocity_x = 0;
    obj_ball.phy_linear_velocity_y = 0;
    
    alarm[0] = 120;
}

flag.y = lerp(flag.y, (win_counter > 0 or has_won) ? flag_start_y - 8 : flag_start_y, 1.0 / 8.0);

if win_counter > 20 or has_won {
    typewriter_counter += 1/3;
}