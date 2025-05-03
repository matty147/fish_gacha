if is_racist && racist(numb_in_fish_table) < 50
{
	if !is_nan(racist_fish_object)
	{
		//show_debug_message("racist_fish_object" + string(racist_fish_object));
		draw_line_width_color(x,y,racist_fish_object.x,racist_fish_object.y,3,c_white,c_red);
	}
}