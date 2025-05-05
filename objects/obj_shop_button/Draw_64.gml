function shorten_number(number)
{
    if (number >= 1000000000) return string_format(number / 1000000000, 0, 1) + "B"; // Billions
    if (number >= 1000000) return string_format(number / 1000000, 0, 1) + "M"; // Millions
    if (number >= 1000) return string_format(number / 1000, 0, 1) + "K"; // Thousands
	return number;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed_color(x + sprite_width +15,y - sprite_height / 2 - 10,button_title,1.25,1.25,0,c_white,c_white,c_white,c_white,1);

if button_type == 0
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var cost = shorten_number(gacha.pull_cost);
	
	var x_pos = cost_background.x + cost_background.sprite_width / 2;
	
	draw_text_transformed_color(x_pos - 16,cost_background.y,cost,1,1,0,c_white,c_white,c_white,c_white,1);
	draw_sprite_ext(spr_coin,0,x_pos - 10 + (string_width(string(cost)) + 32) / 2 ,cost_background.y + 2,0.1,0.1,0,c_white,1);
	
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_transformed(x + sprite_width / 2 + 60,y,string(global.bait) + "x",1,1,0);	
}else if button_type == 1
{

		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);	

	var x_pos = cost_background.x + cost_background.sprite_width / 2;

	if global.upgrade_status[upgrade_type] < numb_of_upgrades
	{
		var cost = shorten_number(my_price);
	
		draw_text_transformed_color(x_pos - 16,cost_background.y,cost,1,1,0,c_white,c_white,c_white,c_white,1);	
		draw_sprite_ext(spr_coin,0,x_pos - 10 + (string_width(string(cost)) + 32) / 2 ,cost_background.y + 2,0.1,0.1,0,c_white,1);
	}else draw_text_transformed_color(x_pos,cost_background.y,"bought",1,1,0,c_white,c_white,c_white,c_white,1);	
	
	draw_set_halign(fa_left);
	draw_text_transformed(x + sprite_width + 15,y - sprite_height / 3 + 65,description[upgrade_type],1,1,0);
}