if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)
{
		if display_sprite == 0
		{
			_manager.hidden_your_fish = !_manager.hidden_your_fish;
			_manager
			.hidden_fishtiary = true;
			_manager.hidden_warnings  = true;
			show_debug_message("fish: " + string(_manager.hidden_your_fish));
		}else if display_sprite == 1
		{
			_manager.hidden_fishtiary = !_manager.hidden_fishtiary;
			_manager.hidden_your_fish = true;
			_manager.hidden_warnings  = true;
			show_debug_message("fishtiary: " + string(_manager.hidden_fishtiary));
		}else if display_sprite == 2
		{
			_manager.hidden_warnings = !_manager.hidden_warnings;
			_manager.hidden_fishtiary = true;
			_manager.hidden_your_fish  = true;
			show_debug_message("warning: " + string(_manager.hidden_warnings));
		}
}

while position_meeting(x,y,obj_fish_list)
{
	x--;	
}

while !position_meeting(x,y,obj_fish_list)
{
	x++;	
}