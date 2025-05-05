if set_up
{
	grab_fish = instance_create_layer(x + sprite_width / 2,y + sprite_height / 2,"fish_list",obj_fish_drag);
	grab_fish.fish_name = fish_name;
	grab_fish.image_xscale = 0.15;
	grab_fish.image_yscale = 0.15;
	
	grab_fish.numb_in_fish_table = numb_in_fish_table;	
	
	set_up = false;
}


x = fish_list.x + fish_list.sprite_width / 2 - sprite_width / 2;
y = starting_y - fish_list.curent_scroll_height;
depth = fish_list.depth - 1;


grab_fish.def_pos_x = x + sprite_width / 2;
grab_fish.def_pos_y = y + sprite_height / 2;

grab_fish.depth = depth - 1;


if _manager.hidden_your_fish
{
	display_text = true;
}else display_text = false;