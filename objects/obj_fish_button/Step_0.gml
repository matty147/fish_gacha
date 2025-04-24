if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)
{
		if display_sprite == 0
		{
			_manager.hidden_your_fish = !_manager.hidden_your_fish;
			_manager.hidden_fishtiary = false;
			_manager.hidden_warnings  = false;
			show_debug_message("fish: " + string(_manager.hidden_your_fish));
		}else if display_sprite == 1
		{
			_manager.hidden_fishtiary = !_manager.hidden_fishtiary;
			_manager.hidden_your_fish = false;
			_manager.hidden_warnings  = false;
			show_debug_message("fishtiary: " + string(_manager.hidden_fishtiary));
		}else if display_sprite == 2
		{
			_manager.hidden_warnings = !_manager.hidden_warnings;
			_manager.hidden_fishtiary = false;
			_manager.hidden_your_fish  = false;
			show_debug_message("warning: " + string(_manager.hidden_warnings));
		}
}