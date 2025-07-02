window_set_size(256 * 4, 240 * 4);
window_center();



is_debug_mode = false;

depth = -32767;

draw_set_font(fnt_pixel);
scribble_font_set_default("fnt_arcade_os")


dbg_view("Room changer", false);



dbg_room_to_change = room_lvl_1;
dbg_drop_down(ref_create(self, "dbg_room_to_change"), asset_get_ids(asset_room), "room", "Next room");

dbg_button("change", function () {
    room_goto(dbg_room_to_change);    
})
scribble_font_bake_outline_and_shadow("fnt_arcade", "fnt_arcade_os", 2, 2, SCRIBBLE_OUTLINE.FOUR_DIR, 1, false)

show_debug_overlay(false);

