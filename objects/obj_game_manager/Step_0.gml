if keyboard_check_pressed(vk_f1) {
    is_debug_mode = !is_debug_mode;
    
    show_debug_overlay(is_debug_mode);
}

if keyboard_check_pressed(ord("N")) {
    room_goto_next();
}
if keyboard_check_pressed(ord("B")) {
    room_goto_previous();
}