draw_self();

var _hole = obj_golf_hole;

var bx = 32;
var by = 24;


scribble("[fnt_arcade_os][pin_center][wheel][#ffffaa]Birdie!")
    .outline(#202000)
    .bezier(-bx, 0, -bx, -by, bx, -by, bx, 3)
    .reveal(min(7, round(_hole.typewriter_counter)))
    .draw(_hole.x-bx+2, _hole.y - 32 + by);