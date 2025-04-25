if display_text
{
	draw_set_font(fnt_main);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	var available_space_width = sprite_width - sprite_get_width(asset_get_index("spr_" + string(display_fish))) - 10;

	if string_width(string(display_fish)) * text_size > available_space_width
		{
			if text_size > 0.5
			{
				text_size -= 0.1;
			}
			show_debug_message(string_length(display_fish));
		}else if text_size < 1 && string_width(string(display_fish)) * (text_size + 0.1) < available_space_width
		{
			text_size += 0.1;
		}

	//draw_text_transformed_color(x + sprite_width * 1/6, y,"Name",1,1,0,c_white,c_white,c_white,c_white,1);
	draw_text_ext_transformed_color(x + sprite_get_width(asset_get_index("spr_" + string(display_fish))),y + 10,display_fish,0,500,text_size,text_size,0,c_white,c_white,c_white,c_white,1);

	var like_combined = like[0];
	var no_like_combined = no_like[0];

	for (var i = 1;i < array_length(like) ;i++)
	{
		like_combined += "," + string(like[i]);
	}

	for (var i = 1;i < array_length(no_like) ;i++)
	{
		no_like_combined += "," + string(no_like[i]);
	}

	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(x + sprite_get_width(spr_like) - 15, y + 94,like_combined,0.75,0.75,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + sprite_get_width(spr_like) - 15, y + 138,no_like_combined,0.75,0.75,0,c_white,c_white,c_white,c_white,1);

	draw_rectangle(x + 10,y + sprite_height - 50,x + sprite_width * 1/3 - 5,y + sprite_height - 10,false);
	draw_rectangle(x + sprite_width * 1/3 + 5,y + sprite_height - 50,x + sprite_width * 2/3 - 5,y + sprite_height - 10,false);
	draw_rectangle(x + sprite_width * 2/3 + 5,y + sprite_height - 50,x + sprite_width - 10,y + sprite_height - 10,false);

	draw_set_halign(fa_center);

	draw_text_transformed_color(x + 45,y + sprite_height - 30,string(weight) + " kg",0.75,0.75,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(x + sprite_width * 1/3 + 45,y + sprite_height - 30,string(grid_size),0.75,0.75,0,c_black,c_black,c_black,c_black,1);

	var rank_sprite = asset_get_index("spr_" + string(_rarity));
	draw_sprite_ext(rank_sprite,0,x + sprite_width * 2/3 + 25,y + sprite_height - sprite_get_height(rank_sprite) + 17,0.5,0.5,0,c_white,1);
}