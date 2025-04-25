if display_text
{
	draw_set_font(fnt_main);
	draw_set_halign(fa_center);
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
	draw_text_ext_transformed_color(x + sprite_width / 2,y + 5,display_fish,0,500,text_size,text_size,0,c_white,c_white,c_white,c_white,1);
	
	draw_text_ext_transformed_color(x + sprite_width / 2,y + sprite_height * 3/4 + 10,string(amount) + "x",0,500,text_size,text_size,0,c_white,c_white,c_white,c_white,1);
	
}