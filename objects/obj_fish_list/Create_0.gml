start_position_x = x;
start_position_y = y;

move_x = room_width - sprite_width;
move_y = y;

hidden = false;

show_debug_message(array_length(global.fish_cought));

max_scroll_height = array_length(global.fish_cought) * sprite_height;
show_debug_message(max_scroll_height);
curent_scroll_height = 0;

for (var i = 0;i < array_length(global.fish_cought);i++)
{
	fish = instance_create_layer(x + sprite_width / 2,15,"fish_list",obj_fish_list_fish)
	fish.y += (sprite_width - 40) * i;
	fish.display_fish = "carp";
	fish.image_xscale = 4;
	fish.image_yscale = 3.5;
	fish.fish_list = id;
	fish.depth = depth - 1;
}