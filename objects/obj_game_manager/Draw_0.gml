var _ball = obj_ball;

draw_text(2, 2, string("ball speed: {0}m/s", round(point_distance(0, 0, _ball.phy_linear_velocity_x, _ball.phy_linear_velocity_y))))
if _ball.is_dragging {
    draw_text(2, 10, string("  > drag force: {0}m/s", round(_ball.drag_force)));
}
