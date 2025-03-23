draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text_transformed_color(x + sprite_width * 1/6, y,"Name",1,1,0,c_white,c_white,c_white,c_white,1);
draw_text_ext_transformed_color(x + sprite_get_width(asset_get_index("spr_" + string(display_fish))),y,display_fish,0,300,1.5,1.5,0,c_white,c_white,c_white,c_white,1);

var like_combined = like[0];

for (var i = 1;i < array_length(like) ;i++)
{
	like_combined += "," + string(like[i]);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed_color(x + 25 + sprite_get_width(spr_like), y + 65,like_combined,1,1,0,c_white,c_white,c_white,c_white,1);