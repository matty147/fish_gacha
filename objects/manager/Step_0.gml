if keyboard_check(vk_control) && keyboard_check_pressed(vk_tab)
{
	debug_log = !debug_log;
	
}

show_debug_log(debug_log);