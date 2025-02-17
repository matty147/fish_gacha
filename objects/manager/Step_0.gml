if keyboard_check(vk_control) && keyboard_check_pressed(vk_tab)
{
	debug_log = !debug_log;
	
}

if keyboard_check_pressed(ord("R"))
{
	game_restart();
}

show_debug_log(debug_log);