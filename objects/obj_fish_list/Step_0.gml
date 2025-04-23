//if keyboard_check_pressed(ord("H"))
//{
//	hidden = !hidden;
//}

if hidden
{
	x = lerp(x,start_position_x,0.1);
	y = lerp(y,start_position_y,0.1);
	
}else
{
	x = lerp(x,move_x,0.1);
	y = lerp(y,move_y,0.1);
}

curent_scroll_height += (mouse_wheel_up() - mouse_wheel_down()) * 15;

//show_debug_message("cur scroll h: " + string(curent_scroll_height));

if curent_scroll_height < 0
{	
	curent_scroll_height = 0;		
}else if curent_scroll_height > max_scroll_height
{
	curent_scroll_height = max_scroll_height;
}