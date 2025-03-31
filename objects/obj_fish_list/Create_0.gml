start_position_x = x;
start_position_y = y;

move_x = room_width - sprite_width;
move_y = y;

hidden = false;

show_debug_message(array_length(global.fish_cought));

max_scroll_height = 0;

for (var i = 0;i < array_length(global.fish_cought);i++)
{
	fish = instance_create_layer(x + sprite_width / 2,15,"fish_list",obj_fish_list_fish)
	fish.display_fish = "devilsholepupfish";
	fish.image_xscale = 4;
	fish.image_yscale = 3.5;
	fish.y += (fish.sprite_height + 30) * i;
	fish.starting_y = fish.y;
	fish.fish_list = id;
	fish.depth = depth - 1;
	max_scroll_height = (fish.sprite_height + 30) * (i - 2);
}

if max_scroll_height < 0
{
	max_scroll_height = 0;	
}

show_debug_message(max_scroll_height);
curent_scroll_height = 0;