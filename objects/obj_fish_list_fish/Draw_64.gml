draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext_transformed_color(x - 30 - sprite_width * 1/3 + sprite_get_width(asset_get_index("spr_" + string(display_fish))),y - sprite_height * 1/2,display_fish,0,300,1.5,1.5,0,c_white,c_white,c_white,c_white,1);