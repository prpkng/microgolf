// 0 -> right
// 1 -> up
// 2 -> left
// 3 -> down

dir = round((image_angle % 360) / 90); 

if dir < 0 {
    dir = 4 + dir;
}


if dir > 1 {
    image_index = 1;
} else {
    image_index = 0;
}

show_debug_message("Direction is: {0}", dir);


slope_force = 5;


dx = (dir + 1) % 2 * sign(-dir+1);
dy = (dir) % 2 * sign(dir-2);