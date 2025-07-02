var _ball = obj_ball;

scribble(room_get_name(room))
    .scale(0.5)
    .draw(2, 4);
scribble(string("Ball speed -> {0}m/s", round(point_distance(0, 0, _ball.phy_linear_velocity_x, _ball.phy_linear_velocity_y))))
    .scale(0.5)
    .draw(2, 12);

if _ball.is_dragging {
    scribble(string("  { drag force: {0}m/s }", round(_ball.drag_force)))
        .scale(0.5)
        .draw(2, 20);
}
