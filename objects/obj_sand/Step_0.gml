if place_meeting(x, y, obj_ball) {
    obj_ball.phy_linear_velocity_x /= vel_reduce_factor;
    obj_ball.phy_linear_velocity_y /= vel_reduce_factor;
    obj_ball.phy_angular_velocity /= (vel_reduce_factor*1.5);
}