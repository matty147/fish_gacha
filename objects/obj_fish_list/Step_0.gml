//if keyboard_check_pressed(ord("H"))
//{
//	hidden = !hidden;
//}

if (_manager.hidden_your_fish && list_type == 0) || (_manager.hidden_fishtiary && list_type == 1) || (_manager.hidden_warnings && list_type == 2)
{
	x = lerp(x,start_position_x,0.1);
	y = lerp(y,start_position_y,0.1);
	
}else
{
	x = lerp(x,move_x,0.1);
	y = lerp(y,move_y,0.1);
}

if (!_manager.hidden_your_fish && list_type == 0) || (!_manager.hidden_fishtiary && list_type == 1) || (!_manager.hidden_warnings && list_type == 2)
{
	curent_scroll_height += (mouse_wheel_up() - mouse_wheel_down()) * 15;
}
//show_debug_message("cur scroll h: " + string(curent_scroll_height));

if curent_scroll_height < 0
{	
	curent_scroll_height = 0;		
}else if curent_scroll_height > max_scroll_height
{
	curent_scroll_height = max_scroll_height;
}



if list_type == 0
{
	if !_manager.hidden_your_fish
	{
		depth = fish_list_depth - 10;
	}else depth = fish_list_depth + 10;

}else if list_type == 1
{
	if !_manager.hidden_fishtiary
	{
		depth = fish_list_depth - 10;
	}else depth = fish_list_depth + 10;
	
}else if list_type == 2
{
	if !_manager.hidden_warnings
	{
		depth = fish_list_depth - 10;
	}else depth = fish_list_depth + 10;
}

//show_debug_message("my depth: " + string(depth) + " display: " + string(list_type));

//if list_type == 2
//{
//	show_debug_message("-------")	
//}