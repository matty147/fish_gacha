debug_log = false;
window_set_fullscreen(true);

if !variable_global_exists("money")
{
	global.bait = 0;
}

if !variable_global_exists("money")
{
	global.money = 100;
}

if !variable_global_exists("time")
{
	global.time = 0;
}

if !variable_global_exists("curent_scene")
{
	show_debug_message("set");
	global.curent_scene = 0;
}

numb_of_scenes = 2