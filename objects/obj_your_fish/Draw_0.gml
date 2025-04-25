draw_self();

draw_sprite_ext(spr_fish_list_inner_bg,0,x + sprite_width / 2,y + sprite_height / 2 ,3,2,0,c_white,1);
draw_sprite_ext(asset_get_index("spr_" + string(fish_name)),0,x + sprite_width / 2,y + sprite_height / 2 ,2,2,0,c_white,1); // replace with obj_fish_drag