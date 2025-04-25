x = fish_list.x + fish_list.sprite_width / 2 - sprite_width / 2;
y = starting_y - fish_list.curent_scroll_height;
depth = fish_list.depth - 1;

if _manager.hidden_your_fish
{
	display_text = true;
}else display_text = false;