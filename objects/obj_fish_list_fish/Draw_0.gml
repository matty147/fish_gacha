draw_self();
draw_sprite_ext(asset_get_index("spr_" + string(display_fish)),0,x + 25,y + 30,0.1,0.1,0,c_white,1);
draw_line_color(x + 5,y + 60, x+ sprite_width - 5, y + 60,c_gray,c_gray);
draw_sprite_ext(asset_get_index("spr_like"), 0, x + 25, y + 95, 1, 1, 0, c_white, 1);
draw_sprite_ext(asset_get_index("spr_like"), 1, x + 25, y + 140, 1, 1, 0, c_white, 1);

